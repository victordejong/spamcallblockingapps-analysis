package androidx.media2.exoplayer.external.upstream;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import androidx.media2.exoplayer.external.upstream.DefaultBandwidthMeter;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Clock;
import androidx.media2.exoplayer.external.util.EventDispatcher;
import androidx.media2.exoplayer.external.util.SlidingPercentile;
import androidx.media2.exoplayer.external.util.Util;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter.class */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    public static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    public static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;
    public long bitrateEstimate;
    public final Clock clock;
    @Nullable
    public final Context context;
    public final EventDispatcher<BandwidthMeter.EventListener> eventDispatcher;
    public final SparseArray<Long> initialBitrateEstimates;
    public long lastReportedBitrateEstimate;
    public int networkType;
    public int networkTypeOverride;
    public boolean networkTypeOverrideSet;
    public long sampleBytesTransferred;
    public long sampleStartTimeMs;
    public final SlidingPercentile slidingPercentile;
    public int streamCount;
    public long totalBytesTransferred;
    public long totalElapsedTimeMs;
    public static final Map<String, int[]> DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS = createInitialBitrateCountryGroupAssignment();
    public static final long[] DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = {5400000, 3400000, 1900000, 1100000, 400000};
    public static final long[] DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = {170000, 139000, 122000, 107000, 90000};
    public static final long[] DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = {2100000, 1300000, 960000, 770000, 450000};
    public static final long[] DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = {6000000, 3400000, 2100000, 1400000, 570000};

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder.class */
    public static final class Builder {
        public Clock clock;
        @Nullable
        public final Context context;
        public SparseArray<Long> initialBitrateEstimates;
        public boolean resetOnNetworkTypeChange;
        public int slidingWindowMaxWeight;

        public Builder(Context context) {
            this.context = context == null ? null : context.getApplicationContext();
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(Util.getCountryCode(context));
            this.slidingWindowMaxWeight = 2000;
            this.clock = Clock.DEFAULT;
        }

        public static int[] getCountryGroupIndices(String str) {
            int[] iArr = DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS.get(str);
            int[] iArr2 = iArr;
            if (iArr == null) {
                iArr2 = new int[]{2, 2, 2, 2};
            }
            return iArr2;
        }

        public static SparseArray<Long> getInitialBitrateEstimatesForCountry(String str) {
            int[] countryGroupIndices = getCountryGroupIndices(str);
            SparseArray<Long> sparseArray = new SparseArray<>(6);
            sparseArray.append(0, 1000000L);
            sparseArray.append(2, Long.valueOf(DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI[countryGroupIndices[0]]));
            sparseArray.append(3, Long.valueOf(DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_2G[countryGroupIndices[1]]));
            sparseArray.append(4, Long.valueOf(DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_3G[countryGroupIndices[2]]));
            sparseArray.append(5, Long.valueOf(DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_4G[countryGroupIndices[3]]));
            sparseArray.append(7, Long.valueOf(DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI[countryGroupIndices[0]]));
            return sparseArray;
        }

        public DefaultBandwidthMeter build() {
            return new DefaultBandwidthMeter(this.context, this.initialBitrateEstimates, this.slidingWindowMaxWeight, this.clock, this.resetOnNetworkTypeChange);
        }

        public Builder experimental_resetOnNetworkTypeChange(boolean z) {
            this.resetOnNetworkTypeChange = z;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setInitialBitrateEstimate(int i, long j) {
            this.initialBitrateEstimates.put(i, Long.valueOf(j));
            return this;
        }

        public Builder setInitialBitrateEstimate(long j) {
            for (int i = 0; i < this.initialBitrateEstimates.size(); i++) {
                this.initialBitrateEstimates.setValueAt(i, Long.valueOf(j));
            }
            return this;
        }

        public Builder setInitialBitrateEstimate(String str) {
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(Util.toUpperInvariant(str));
            return this;
        }

        public Builder setSlidingWindowMaxWeight(int i) {
            this.slidingWindowMaxWeight = i;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver.class */
    public static class ConnectivityActionReceiver extends BroadcastReceiver {
        public static ConnectivityActionReceiver staticInstance;
        public final Handler mainHandler = new Handler(Looper.getMainLooper());
        public final ArrayList<WeakReference<DefaultBandwidthMeter>> bandwidthMeters = new ArrayList<>();

        public static ConnectivityActionReceiver getInstance(Context context) {
            ConnectivityActionReceiver connectivityActionReceiver;
            synchronized (ConnectivityActionReceiver.class) {
                try {
                    if (staticInstance == null) {
                        staticInstance = new ConnectivityActionReceiver();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        context.registerReceiver(staticInstance, intentFilter);
                    }
                    connectivityActionReceiver = staticInstance;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return connectivityActionReceiver;
        }

        private void removeClearedReferences() {
            for (int size = this.bandwidthMeters.size() - 1; size >= 0; size--) {
                if (this.bandwidthMeters.get(size).get() == null) {
                    this.bandwidthMeters.remove(size);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: updateBandwidthMeter */
        public void m37490xc0d413df(DefaultBandwidthMeter defaultBandwidthMeter) {
            defaultBandwidthMeter.onConnectivityAction();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (this) {
                if (!isInitialStickyBroadcast()) {
                    removeClearedReferences();
                    for (int i = 0; i < this.bandwidthMeters.size(); i++) {
                        DefaultBandwidthMeter defaultBandwidthMeter = this.bandwidthMeters.get(i).get();
                        if (defaultBandwidthMeter != null) {
                            m37490xc0d413df(defaultBandwidthMeter);
                        }
                    }
                }
            }
        }

        public void register(final DefaultBandwidthMeter defaultBandwidthMeter) {
            synchronized (this) {
                removeClearedReferences();
                this.bandwidthMeters.add(new WeakReference<>(defaultBandwidthMeter));
                this.mainHandler.post(new Runnable(this, defaultBandwidthMeter) { // from class: androidx.media2.exoplayer.external.upstream.DefaultBandwidthMeter$ConnectivityActionReceiver$$Lambda$0
                    public final DefaultBandwidthMeter.ConnectivityActionReceiver arg$1;
                    public final DefaultBandwidthMeter arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = defaultBandwidthMeter;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37490xc0d413df(this.arg$2);
                    }
                });
            }
        }
    }

    @Deprecated
    public DefaultBandwidthMeter() {
        this(null, new SparseArray(), 2000, Clock.DEFAULT, false);
    }

    public DefaultBandwidthMeter(@Nullable Context context, SparseArray<Long> sparseArray, int i, Clock clock, boolean z) {
        this.context = context == null ? null : context.getApplicationContext();
        this.initialBitrateEstimates = sparseArray;
        this.eventDispatcher = new EventDispatcher<>();
        this.slidingPercentile = new SlidingPercentile(i);
        this.clock = clock;
        this.networkType = context == null ? 0 : Util.getNetworkType(context);
        this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(this.networkType);
        if (context != null && z) {
            ConnectivityActionReceiver.getInstance(context).register(this);
        }
    }

    public static Map<String, int[]> createInitialBitrateCountryGroupAssignment() {
        HashMap hashMap = new HashMap();
        hashMap.put("AD", new int[]{1, 0, 0, 1});
        hashMap.put("AE", new int[]{1, 4, 4, 4});
        hashMap.put("AF", new int[]{4, 4, 3, 3});
        hashMap.put("AG", new int[]{3, 2, 1, 1});
        hashMap.put("AI", new int[]{1, 0, 1, 3});
        hashMap.put("AL", new int[]{1, 2, 1, 1});
        hashMap.put("AM", new int[]{2, 2, 3, 2});
        hashMap.put("AO", new int[]{3, 4, 2, 0});
        hashMap.put("AQ", new int[]{4, 2, 2, 2});
        hashMap.put("AR", new int[]{2, 3, 2, 2});
        hashMap.put("AS", new int[]{3, 3, 4, 1});
        hashMap.put("AT", new int[]{0, 2, 0, 0});
        hashMap.put("AU", new int[]{0, 1, 1, 1});
        hashMap.put("AW", new int[]{1, 1, 0, 2});
        hashMap.put("AX", new int[]{0, 2, 1, 0});
        hashMap.put("AZ", new int[]{3, 3, 2, 2});
        hashMap.put("BA", new int[]{1, 1, 1, 2});
        hashMap.put("BB", new int[]{0, 1, 0, 0});
        hashMap.put("BD", new int[]{2, 2, 3, 2});
        hashMap.put("BE", new int[]{0, 0, 0, 1});
        hashMap.put("BF", new int[]{4, 4, 3, 1});
        hashMap.put("BG", new int[]{0, 1, 0, 0});
        hashMap.put("BH", new int[]{2, 1, 3, 4});
        hashMap.put("BI", new int[]{4, 3, 4, 4});
        hashMap.put("BJ", new int[]{4, 3, 4, 4});
        hashMap.put("BL", new int[]{1, 0, 2, 3});
        hashMap.put("BM", new int[]{1, 0, 0, 0});
        hashMap.put("BN", new int[]{4, 2, 3, 3});
        hashMap.put("BO", new int[]{2, 2, 3, 2});
        hashMap.put("BQ", new int[]{1, 0, 3, 4});
        hashMap.put("BR", new int[]{2, 3, 3, 2});
        hashMap.put("BS", new int[]{2, 0, 1, 4});
        hashMap.put("BT", new int[]{3, 0, 2, 1});
        hashMap.put("BW", new int[]{4, 4, 1, 2});
        hashMap.put("BY", new int[]{0, 1, 1, 2});
        hashMap.put("BZ", new int[]{2, 2, 3, 1});
        hashMap.put("CA", new int[]{0, 3, 3, 3});
        hashMap.put("CD", new int[]{4, 4, 3, 2});
        hashMap.put("CF", new int[]{4, 3, 3, 4});
        hashMap.put("CG", new int[]{4, 4, 4, 4});
        hashMap.put("CH", new int[]{0, 0, 1, 1});
        hashMap.put("CI", new int[]{3, 4, 3, 3});
        hashMap.put("CK", new int[]{2, 4, 1, 0});
        hashMap.put("CL", new int[]{2, 2, 2, 3});
        hashMap.put("CM", new int[]{3, 4, 2, 1});
        hashMap.put("CN", new int[]{2, 2, 2, 3});
        hashMap.put("CO", new int[]{2, 3, 2, 2});
        hashMap.put("CR", new int[]{2, 2, 4, 4});
        hashMap.put("CU", new int[]{4, 4, 3, 1});
        hashMap.put("CV", new int[]{2, 3, 2, 4});
        hashMap.put("CW", new int[]{1, 0, 0, 0});
        hashMap.put("CX", new int[]{2, 2, 2, 2});
        hashMap.put("CY", new int[]{1, 1, 1, 1});
        hashMap.put("CZ", new int[]{0, 1, 0, 0});
        hashMap.put("DE", new int[]{0, 2, 2, 2});
        hashMap.put("DJ", new int[]{3, 3, 4, 0});
        hashMap.put("DK", new int[]{0, 0, 0, 0});
        hashMap.put("DM", new int[]{1, 0, 0, 3});
        hashMap.put("DO", new int[]{3, 3, 4, 4});
        hashMap.put("DZ", new int[]{3, 3, 4, 4});
        hashMap.put("EC", new int[]{2, 4, 4, 2});
        hashMap.put("EE", new int[]{0, 0, 0, 0});
        hashMap.put("EG", new int[]{3, 4, 2, 2});
        hashMap.put("EH", new int[]{2, 0, 3, 3});
        hashMap.put("ER", new int[]{4, 2, 2, 2});
        hashMap.put("ES", new int[]{0, 1, 1, 1});
        hashMap.put("ET", new int[]{4, 4, 4, 0});
        hashMap.put("FI", new int[]{0, 0, 1, 0});
        hashMap.put("FJ", new int[]{3, 1, 3, 3});
        hashMap.put("FK", new int[]{4, 2, 2, 3});
        hashMap.put("FM", new int[]{4, 2, 4, 0});
        hashMap.put("FO", new int[]{0, 0, 0, 0});
        hashMap.put("FR", new int[]{1, 0, 3, 1});
        hashMap.put("GA", new int[]{3, 3, 2, 1});
        hashMap.put("GB", new int[]{0, 1, 3, 3});
        hashMap.put("GD", new int[]{2, 0, 4, 4});
        hashMap.put("GE", new int[]{1, 1, 0, 3});
        hashMap.put("GF", new int[]{1, 2, 4, 4});
        hashMap.put("GG", new int[]{0, 0, 0, 0});
        hashMap.put("GH", new int[]{3, 3, 3, 2});
        hashMap.put("GI", new int[]{0, 0, 0, 1});
        hashMap.put("GL", new int[]{2, 2, 3, 4});
        hashMap.put("GM", new int[]{4, 3, 3, 2});
        hashMap.put("GN", new int[]{4, 4, 4, 0});
        hashMap.put("GP", new int[]{2, 2, 1, 3});
        hashMap.put("GQ", new int[]{4, 3, 3, 0});
        hashMap.put("GR", new int[]{1, 1, 0, 1});
        hashMap.put("GT", new int[]{3, 3, 3, 4});
        hashMap.put("GU", new int[]{1, 2, 4, 4});
        hashMap.put("GW", new int[]{4, 4, 4, 0});
        hashMap.put("GY", new int[]{3, 4, 1, 0});
        hashMap.put("HK", new int[]{0, 1, 4, 4});
        hashMap.put("HN", new int[]{3, 3, 2, 2});
        hashMap.put("HR", new int[]{1, 0, 0, 2});
        hashMap.put("HT", new int[]{3, 4, 4, 3});
        hashMap.put("HU", new int[]{0, 0, 1, 0});
        hashMap.put("ID", new int[]{3, 2, 3, 4});
        hashMap.put("IE", new int[]{0, 0, 3, 2});
        hashMap.put("IL", new int[]{0, 1, 2, 3});
        hashMap.put("IM", new int[]{0, 0, 0, 1});
        hashMap.put("IN", new int[]{2, 2, 4, 4});
        hashMap.put("IO", new int[]{4, 4, 2, 2});
        hashMap.put("IQ", new int[]{3, 3, 4, 4});
        hashMap.put("IR", new int[]{1, 0, 1, 0});
        hashMap.put("IS", new int[]{0, 0, 0, 0});
        hashMap.put("IT", new int[]{1, 0, 1, 1});
        hashMap.put("JE", new int[]{1, 0, 0, 1});
        hashMap.put("JM", new int[]{3, 2, 2, 1});
        hashMap.put("JO", new int[]{1, 1, 1, 2});
        hashMap.put("JP", new int[]{0, 2, 2, 2});
        hashMap.put("KE", new int[]{3, 3, 3, 3});
        hashMap.put("KG", new int[]{1, 1, 2, 3});
        hashMap.put("KH", new int[]{2, 0, 4, 4});
        hashMap.put("KI", new int[]{4, 4, 4, 4});
        hashMap.put("KM", new int[]{4, 4, 3, 3});
        hashMap.put("KN", new int[]{1, 0, 1, 4});
        hashMap.put("KP", new int[]{1, 2, 0, 2});
        hashMap.put("KR", new int[]{0, 3, 0, 2});
        hashMap.put("KW", new int[]{2, 2, 1, 2});
        hashMap.put("KY", new int[]{1, 1, 0, 2});
        hashMap.put("KZ", new int[]{1, 2, 2, 2});
        hashMap.put("LA", new int[]{2, 1, 1, 0});
        hashMap.put("LB", new int[]{3, 2, 0, 0});
        hashMap.put("LC", new int[]{2, 1, 0, 0});
        hashMap.put("LI", new int[]{0, 0, 2, 2});
        hashMap.put("LK", new int[]{1, 1, 2, 2});
        hashMap.put("LR", new int[]{3, 4, 4, 1});
        hashMap.put("LS", new int[]{3, 3, 2, 0});
        hashMap.put("LT", new int[]{0, 0, 0, 0});
        hashMap.put("LU", new int[]{0, 1, 0, 0});
        hashMap.put("LV", new int[]{0, 0, 0, 0});
        hashMap.put("LY", new int[]{4, 3, 4, 4});
        hashMap.put("MA", new int[]{2, 1, 2, 2});
        hashMap.put("MC", new int[]{1, 0, 1, 0});
        hashMap.put("MD", new int[]{1, 1, 0, 0});
        hashMap.put("ME", new int[]{1, 2, 2, 3});
        hashMap.put("MF", new int[]{1, 4, 2, 1});
        hashMap.put("MG", new int[]{3, 4, 1, 3});
        hashMap.put("MH", new int[]{4, 0, 2, 3});
        hashMap.put("MK", new int[]{1, 0, 0, 0});
        hashMap.put("ML", new int[]{4, 4, 4, 3});
        hashMap.put("MM", new int[]{2, 3, 1, 2});
        hashMap.put("MN", new int[]{2, 3, 2, 4});
        hashMap.put("MO", new int[]{0, 0, 4, 4});
        hashMap.put("MP", new int[]{0, 2, 4, 4});
        hashMap.put("MQ", new int[]{1, 1, 1, 3});
        hashMap.put("MR", new int[]{4, 4, 4, 4});
        hashMap.put("MS", new int[]{1, 4, 0, 3});
        hashMap.put("MT", new int[]{0, 1, 0, 0});
        hashMap.put("MU", new int[]{2, 2, 3, 4});
        hashMap.put("MV", new int[]{3, 2, 1, 1});
        hashMap.put("MW", new int[]{4, 2, 1, 1});
        hashMap.put("MX", new int[]{2, 4, 3, 2});
        hashMap.put("MY", new int[]{2, 2, 2, 3});
        hashMap.put("MZ", new int[]{3, 4, 2, 2});
        hashMap.put("NA", new int[]{3, 2, 2, 1});
        hashMap.put("NC", new int[]{2, 1, 3, 2});
        hashMap.put("NE", new int[]{4, 4, 4, 3});
        hashMap.put("NF", new int[]{1, 2, 2, 2});
        hashMap.put("NG", new int[]{3, 4, 3, 2});
        hashMap.put("NI", new int[]{3, 3, 3, 4});
        hashMap.put("NL", new int[]{0, 2, 4, 3});
        hashMap.put("NO", new int[]{0, 1, 0, 0});
        hashMap.put("NP", new int[]{3, 3, 2, 2});
        hashMap.put("NR", new int[]{4, 0, 4, 0});
        hashMap.put("NU", new int[]{2, 2, 2, 1});
        hashMap.put("NZ", new int[]{0, 0, 0, 1});
        hashMap.put("OM", new int[]{2, 2, 1, 3});
        hashMap.put("PA", new int[]{1, 3, 3, 4});
        hashMap.put("PE", new int[]{2, 3, 4, 4});
        hashMap.put("PF", new int[]{3, 1, 0, 1});
        hashMap.put("PG", new int[]{4, 3, 1, 1});
        hashMap.put("PH", new int[]{3, 0, 4, 4});
        hashMap.put("PK", new int[]{3, 3, 3, 3});
        hashMap.put("PL", new int[]{1, 1, 1, 3});
        hashMap.put("PM", new int[]{0, 2, 0, 0});
        hashMap.put("PR", new int[]{2, 1, 3, 3});
        hashMap.put("PS", new int[]{3, 3, 1, 4});
        hashMap.put("PT", new int[]{1, 1, 0, 1});
        hashMap.put("PW", new int[]{2, 2, 1, 1});
        hashMap.put("PY", new int[]{3, 1, 3, 3});
        hashMap.put("QA", new int[]{2, 3, 0, 1});
        hashMap.put("RE", new int[]{1, 0, 2, 2});
        hashMap.put("RO", new int[]{0, 1, 1, 2});
        hashMap.put("RS", new int[]{1, 2, 0, 0});
        hashMap.put("RU", new int[]{0, 1, 1, 1});
        hashMap.put("RW", new int[]{3, 4, 2, 4});
        hashMap.put("SA", new int[]{2, 2, 1, 2});
        hashMap.put("SB", new int[]{4, 4, 3, 0});
        hashMap.put("SC", new int[]{4, 2, 0, 1});
        hashMap.put("SD", new int[]{4, 4, 4, 2});
        hashMap.put("SE", new int[]{0, 1, 0, 0});
        hashMap.put("SG", new int[]{1, 2, 3, 3});
        hashMap.put("SH", new int[]{4, 4, 2, 3});
        hashMap.put("SI", new int[]{0, 1, 0, 1});
        hashMap.put("SJ", new int[]{0, 0, 2, 0});
        hashMap.put("SK", new int[]{0, 1, 0, 1});
        hashMap.put("SL", new int[]{4, 3, 2, 4});
        hashMap.put("SM", new int[]{0, 0, 1, 3});
        hashMap.put("SN", new int[]{4, 4, 4, 3});
        hashMap.put("SO", new int[]{4, 4, 4, 4});
        hashMap.put("SR", new int[]{3, 2, 2, 4});
        hashMap.put("SS", new int[]{4, 2, 4, 2});
        hashMap.put("ST", new int[]{3, 4, 2, 2});
        hashMap.put("SV", new int[]{2, 3, 3, 4});
        hashMap.put("SX", new int[]{2, 4, 1, 0});
        hashMap.put("SY", new int[]{4, 4, 1, 0});
        hashMap.put("SZ", new int[]{3, 4, 2, 3});
        hashMap.put("TC", new int[]{1, 1, 3, 1});
        hashMap.put("TD", new int[]{4, 4, 4, 3});
        hashMap.put("TG", new int[]{3, 3, 1, 0});
        hashMap.put("TH", new int[]{1, 3, 4, 4});
        hashMap.put("TJ", new int[]{4, 4, 4, 4});
        hashMap.put("TL", new int[]{4, 2, 4, 4});
        hashMap.put("TM", new int[]{4, 1, 2, 3});
        hashMap.put("TN", new int[]{2, 1, 1, 1});
        hashMap.put("TO", new int[]{3, 3, 3, 1});
        hashMap.put("TR", new int[]{1, 2, 0, 1});
        hashMap.put("TT", new int[]{2, 3, 1, 2});
        hashMap.put("TV", new int[]{4, 2, 2, 4});
        hashMap.put("TW", new int[]{0, 0, 0, 1});
        hashMap.put("TZ", new int[]{3, 3, 4, 3});
        hashMap.put("UA", new int[]{0, 2, 1, 2});
        hashMap.put("UG", new int[]{4, 3, 2, 3});
        hashMap.put("US", new int[]{0, 1, 3, 3});
        hashMap.put("UY", new int[]{2, 2, 2, 2});
        hashMap.put("UZ", new int[]{3, 2, 2, 2});
        hashMap.put("VA", new int[]{1, 2, 2, 2});
        hashMap.put("VC", new int[]{2, 1, 0, 0});
        hashMap.put("VE", new int[]{4, 4, 4, 3});
        hashMap.put("VG", new int[]{2, 1, 1, 2});
        hashMap.put("VI", new int[]{1, 0, 2, 4});
        hashMap.put("VN", new int[]{0, 2, 4, 4});
        hashMap.put("VU", new int[]{4, 1, 3, 1});
        hashMap.put("WS", new int[]{3, 2, 3, 1});
        hashMap.put("XK", new int[]{1, 2, 1, 0});
        hashMap.put("YE", new int[]{4, 4, 4, 2});
        hashMap.put("YT", new int[]{2, 0, 2, 3});
        hashMap.put("ZA", new int[]{2, 3, 2, 2});
        hashMap.put("ZM", new int[]{3, 3, 2, 1});
        hashMap.put("ZW", new int[]{3, 3, 3, 1});
        return Collections.unmodifiableMap(hashMap);
    }

    private long getInitialBitrateEstimateForNetworkType(int i) {
        Long l = this.initialBitrateEstimates.get(i);
        Long l2 = l;
        if (l == null) {
            l2 = this.initialBitrateEstimates.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    private void maybeNotifyBandwidthSample(final int i, final long j, final long j2) {
        if (i != 0 || j != 0 || j2 != this.lastReportedBitrateEstimate) {
            this.lastReportedBitrateEstimate = j2;
            this.eventDispatcher.dispatch(new EventDispatcher.Event(i, j, j2) { // from class: androidx.media2.exoplayer.external.upstream.DefaultBandwidthMeter$$Lambda$0
                public final int arg$1;
                public final long arg$2;
                public final long arg$3;

                {
                    this.arg$1 = i;
                    this.arg$2 = j;
                    this.arg$3 = j2;
                }

                @Override // androidx.media2.exoplayer.external.util.EventDispatcher.Event
                public void sendTo(Object obj) {
                    ((BandwidthMeter.EventListener) obj).onBandwidthSample(this.arg$1, this.arg$2, this.arg$3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConnectivityAction() {
        synchronized (this) {
            int networkType = this.networkTypeOverrideSet ? this.networkTypeOverride : this.context == null ? 0 : Util.getNetworkType(this.context);
            if (this.networkType != networkType) {
                this.networkType = networkType;
                if (networkType != 1 && networkType != 0 && networkType != 8) {
                    this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
                    long elapsedRealtime = this.clock.elapsedRealtime();
                    maybeNotifyBandwidthSample(this.streamCount > 0 ? (int) (elapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, this.bitrateEstimate);
                    this.sampleStartTimeMs = elapsedRealtime;
                    this.sampleBytesTransferred = 0L;
                    this.totalBytesTransferred = 0L;
                    this.totalElapsedTimeMs = 0L;
                    this.slidingPercentile.reset();
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.BandwidthMeter
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.addListener(handler, eventListener);
    }

    @Override // androidx.media2.exoplayer.external.upstream.BandwidthMeter
    public long getBitrateEstimate() {
        long j;
        synchronized (this) {
            j = this.bitrateEstimate;
        }
        return j;
    }

    @Override // androidx.media2.exoplayer.external.upstream.BandwidthMeter
    @Nullable
    public TransferListener getTransferListener() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.upstream.TransferListener
    public void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z, int i) {
        synchronized (this) {
            if (z) {
                this.sampleBytesTransferred += i;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.TransferListener
    public void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z) {
        synchronized (this) {
            if (z) {
                Assertions.checkState(this.streamCount > 0);
                long elapsedRealtime = this.clock.elapsedRealtime();
                int i = (int) (elapsedRealtime - this.sampleStartTimeMs);
                this.totalElapsedTimeMs += i;
                this.totalBytesTransferred += this.sampleBytesTransferred;
                if (i > 0) {
                    this.slidingPercentile.addSample((int) Math.sqrt(this.sampleBytesTransferred), (((float) this.sampleBytesTransferred) * 8000.0f) / i);
                    if (this.totalElapsedTimeMs >= 2000 || this.totalBytesTransferred >= 524288) {
                        this.bitrateEstimate = this.slidingPercentile.getPercentile(0.5f);
                    }
                    maybeNotifyBandwidthSample(i, this.sampleBytesTransferred, this.bitrateEstimate);
                    this.sampleStartTimeMs = elapsedRealtime;
                    this.sampleBytesTransferred = 0L;
                }
                this.streamCount--;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.TransferListener
    public void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z) {
    }

    @Override // androidx.media2.exoplayer.external.upstream.TransferListener
    public void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z) {
        synchronized (this) {
            if (z) {
                if (this.streamCount == 0) {
                    this.sampleStartTimeMs = this.clock.elapsedRealtime();
                }
                this.streamCount++;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.BandwidthMeter
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    public void setNetworkTypeOverride(int i) {
        synchronized (this) {
            this.networkTypeOverride = i;
            this.networkTypeOverrideSet = true;
            onConnectivityAction();
        }
    }
}
