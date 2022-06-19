package com.mopub.mobileads;

import android.os.Parcel;
import android.os.Parcelable;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.ViewabilityVendor;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdData.class */
public final class AdData implements Parcelable {
    public static final long COUNTDOWN_UPDATE_INTERVAL_MILLIS = 250;
    public static final int DEFAULT_DURATION_FOR_CLOSE_BUTTON_MILLIS = 30000;
    public static final int DEFAULT_DURATION_FOR_CLOSE_BUTTON_SECONDS = 30;
    public static final int DEFAULT_FULLSCREEN_TIMEOUT_DELAY = 30000;
    public static final int DEFAULT_INLINE_TIMEOUT_DELAY = 10000;
    public static final int DEFAULT_UNSPECIFIED_TIMEOUT_DELAY = 30000;
    public static final int MILLIS_IN_SECOND = 1000;

    /* renamed from: a */
    public String f4551a;

    /* renamed from: b */
    public CreativeOrientation f4552b;

    /* renamed from: c */
    public long f4553c;

    /* renamed from: d */
    public int f4554d;

    /* renamed from: f */
    public String f4555f;

    /* renamed from: g */
    public String f4556g;

    /* renamed from: h */
    public String f4557h;

    /* renamed from: j */
    public String f4558j;

    /* renamed from: k */
    public Map<String, String> f4559k;

    /* renamed from: l */
    public boolean f4560l;

    /* renamed from: m */
    public int f4561m;

    /* renamed from: n */
    public String f4562n;

    /* renamed from: o */
    public int f4563o;

    /* renamed from: p */
    public Integer f4564p;

    /* renamed from: q */
    public Integer f4565q;

    /* renamed from: r */
    public String f4566r;

    /* renamed from: s */
    public String f4567s;

    /* renamed from: t */
    public String f4568t;

    /* renamed from: u */
    public String f4569u;

    /* renamed from: v */
    public boolean f4570v;

    /* renamed from: w */
    public Set<? extends ViewabilityVendor> f4571w;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator CREATOR = new Creator();

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdData$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public String f4572a;

        /* renamed from: b */
        public CreativeOrientation f4573b;

        /* renamed from: c */
        public long f4574c;

        /* renamed from: e */
        public String f4576e;

        /* renamed from: f */
        public String f4577f;

        /* renamed from: j */
        public boolean f4581j;

        /* renamed from: l */
        public String f4583l;

        /* renamed from: m */
        public int f4584m;

        /* renamed from: n */
        public Integer f4585n;

        /* renamed from: o */
        public Integer f4586o;

        /* renamed from: p */
        public String f4587p;

        /* renamed from: q */
        public String f4588q;

        /* renamed from: r */
        public String f4589r;

        /* renamed from: s */
        public String f4590s;

        /* renamed from: t */
        public boolean f4591t;

        /* renamed from: u */
        public Set<? extends ViewabilityVendor> f4592u;

        /* renamed from: d */
        public int f4575d = 30000;

        /* renamed from: g */
        public String f4578g = "";

        /* renamed from: h */
        public String f4579h = "";

        /* renamed from: i */
        public Map<String, String> f4580i = new HashMap();

        /* renamed from: k */
        public int f4582k = 30;

        public final Builder adHeight(Integer num) {
            this.f4586o = num;
            return this;
        }

        public final Builder adPayload(String str) {
            qk1.m744c(str, "adPayload");
            this.f4579h = str;
            return this;
        }

        public final Builder adType(String str) {
            this.f4588q = str;
            return this;
        }

        public final Builder adUnit(String str) {
            this.f4587p = str;
            return this;
        }

        public final Builder adWidth(Integer num) {
            this.f4585n = num;
            return this;
        }

        public final Builder allowCustomClose(boolean z) {
            this.f4591t = z;
            return this;
        }

        public final Builder broadcastIdentifier(long j) {
            this.f4574c = j;
            return this;
        }

        public final AdData build() {
            return new AdData(this, null);
        }

        public final Builder currencyAmount(int i) {
            this.f4584m = i;
            return this;
        }

        public final Builder currencyName(String str) {
            this.f4583l = str;
            return this;
        }

        public final Builder customerId(String str) {
            this.f4590s = str;
            return this;
        }

        public final Builder dspCreativeId(String str) {
            this.f4578g = str;
            return this;
        }

        public final Builder extras(Map<String, String> map) {
            qk1.m744c(map, "extras");
            this.f4580i = new TreeMap(map);
            return this;
        }

        public final Builder fromAdData(AdData adData) {
            qk1.m744c(adData, "adData");
            this.f4572a = adData.getVastVideoConfigString();
            this.f4573b = adData.getOrientation();
            this.f4574c = adData.getBroadcastIdentifier();
            this.f4575d = adData.getTimeoutDelayMillis();
            this.f4576e = adData.getImpressionMinVisibleDips();
            this.f4577f = adData.getImpressionMinVisibleMs();
            this.f4578g = adData.getDspCreativeId();
            this.f4579h = adData.getAdPayload();
            this.f4580i = adData.getExtras();
            this.f4581j = adData.isRewarded();
            this.f4582k = adData.getRewardedDurationSeconds();
            this.f4583l = adData.getCurrencyName();
            this.f4584m = adData.getCurrencyAmount();
            this.f4585n = adData.getAdWidth();
            this.f4586o = adData.getAdHeight();
            this.f4587p = adData.getAdUnit();
            this.f4588q = adData.getAdType();
            this.f4589r = adData.getFullAdType();
            this.f4590s = adData.getCustomerId();
            this.f4591t = adData.getAllowCustomClose();
            this.f4592u = adData.getViewabilityVendors();
            return this;
        }

        public final Builder fullAdType(String str) {
            this.f4589r = str;
            return this;
        }

        public final Integer getAdHeight() {
            return this.f4586o;
        }

        public final String getAdPayload() {
            return this.f4579h;
        }

        public final String getAdType() {
            return this.f4588q;
        }

        public final String getAdUnit() {
            return this.f4587p;
        }

        public final Integer getAdWidth() {
            return this.f4585n;
        }

        public final boolean getAllowCustomClose() {
            return this.f4591t;
        }

        public final long getBroadcastIdentifier() {
            return this.f4574c;
        }

        public final int getCurrencyAmount() {
            return this.f4584m;
        }

        public final String getCurrencyName() {
            return this.f4583l;
        }

        public final String getCustomerId() {
            return this.f4590s;
        }

        public final String getDspCreativeId() {
            return this.f4578g;
        }

        public final Map<String, String> getExtras() {
            return this.f4580i;
        }

        public final String getFullAdType() {
            return this.f4589r;
        }

        public final String getImpressionMinVisibleDips() {
            return this.f4576e;
        }

        public final String getImpressionMinVisibleMs() {
            return this.f4577f;
        }

        public final CreativeOrientation getOrientation() {
            return this.f4573b;
        }

        public final int getRewardedDurationSeconds() {
            return this.f4582k;
        }

        public final int getTimeoutDelayMillis() {
            return this.f4575d;
        }

        public final String getVastVideoConfigString() {
            return this.f4572a;
        }

        public final Set<ViewabilityVendor> getViewabilityVendors() {
            return this.f4592u;
        }

        public final Builder impressionMinVisibleDips(String str) {
            this.f4576e = str;
            return this;
        }

        public final Builder impressionMinVisibleMs(String str) {
            this.f4577f = str;
            return this;
        }

        public final Builder isRewarded(boolean z) {
            this.f4581j = z;
            return this;
        }

        public final boolean isRewarded() {
            return this.f4581j;
        }

        public final Builder orientation(CreativeOrientation creativeOrientation) {
            this.f4573b = creativeOrientation;
            return this;
        }

        public final Builder rewardedDurationSeconds(int i) {
            this.f4582k = i;
            return this;
        }

        public final Builder timeoutDelayMillis(int i) {
            this.f4575d = i;
            return this;
        }

        public final Builder vastVideoConfig(String str) {
            this.f4572a = str;
            return this;
        }

        public final Builder viewabilityVendors(Set<? extends ViewabilityVendor> set) {
            this.f4592u = set != null ? new HashSet(ck1.m5314h(set)) : null;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdData$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            LinkedHashSet linkedHashSet;
            qk1.m744c(parcel, "in");
            String readString = parcel.readString();
            CreativeOrientation creativeOrientation = parcel.readInt() != 0 ? (CreativeOrientation) Enum.valueOf(CreativeOrientation.class, parcel.readString()) : null;
            long readLong = parcel.readLong();
            int readInt = parcel.readInt();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            int readInt2 = parcel.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(readInt2);
            while (readInt2 != 0) {
                linkedHashMap.put(parcel.readString(), parcel.readString());
                readInt2--;
            }
            boolean z = parcel.readInt() != 0;
            int readInt3 = parcel.readInt();
            String readString6 = parcel.readString();
            int readInt4 = parcel.readInt();
            Integer valueOf = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            Integer valueOf2 = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            String readString7 = parcel.readString();
            String readString8 = parcel.readString();
            String readString9 = parcel.readString();
            String readString10 = parcel.readString();
            boolean z2 = parcel.readInt() != 0;
            if (parcel.readInt() != 0) {
                int readInt5 = parcel.readInt();
                LinkedHashSet linkedHashSet2 = new LinkedHashSet(readInt5);
                while (readInt5 != 0) {
                    linkedHashSet2.add((ViewabilityVendor) parcel.readSerializable());
                    readInt5--;
                }
                linkedHashSet = linkedHashSet2;
            } else {
                linkedHashSet = null;
            }
            return new AdData(readString, creativeOrientation, readLong, readInt, readString2, readString3, readString4, readString5, linkedHashMap, z, readInt3, readString6, readInt4, valueOf, valueOf2, readString7, readString8, readString9, readString10, z2, linkedHashSet);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new AdData[i];
        }
    }

    public AdData(Builder builder) {
        this(builder.getVastVideoConfigString(), builder.getOrientation(), builder.getBroadcastIdentifier(), builder.getTimeoutDelayMillis(), builder.getImpressionMinVisibleDips(), builder.getImpressionMinVisibleMs(), builder.getDspCreativeId(), builder.getAdPayload(), builder.getExtras(), builder.isRewarded(), builder.getRewardedDurationSeconds(), builder.getCurrencyName(), builder.getCurrencyAmount(), builder.getAdWidth(), builder.getAdHeight(), builder.getAdUnit(), builder.getAdType(), builder.getFullAdType(), builder.getCustomerId(), builder.getAllowCustomClose(), builder.getViewabilityVendors());
    }

    public /* synthetic */ AdData(Builder builder, ok1 ok1Var) {
        this(builder);
    }

    public AdData(String str, CreativeOrientation creativeOrientation, long j, int i, String str2, String str3, String str4, String str5, Map<String, String> map, boolean z, int i2, String str6, int i3, Integer num, Integer num2, String str7, String str8, String str9, String str10, boolean z2, Set<? extends ViewabilityVendor> set) {
        qk1.m744c(str5, "adPayload");
        qk1.m744c(map, "extras");
        this.f4551a = str;
        this.f4552b = creativeOrientation;
        this.f4553c = j;
        this.f4554d = i;
        this.f4555f = str2;
        this.f4556g = str3;
        this.f4557h = str4;
        this.f4558j = str5;
        this.f4559k = map;
        this.f4560l = z;
        this.f4561m = i2;
        this.f4562n = str6;
        this.f4563o = i3;
        this.f4564p = num;
        this.f4565q = num2;
        this.f4566r = str7;
        this.f4567s = str8;
        this.f4568t = str9;
        this.f4569u = str10;
        this.f4570v = z2;
        this.f4571w = set;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r24v0, types: [com.mopub.mobileads.AdData] */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3 */
    public static /* synthetic */ AdData copy$default(AdData adData, String str, CreativeOrientation creativeOrientation, long j, int i, String str2, String str3, String str4, String str5, Map map, boolean z, int i2, String str6, int i3, Integer num, Integer num2, String str7, String str8, String str9, String str10, boolean z2, Set set, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = adData.f4551a;
        }
        if ((i4 & 2) != 0) {
            creativeOrientation = adData.f4552b;
        }
        ?? r27 = j;
        if ((i4 & 4) != 0) {
            r27 = adData.f4553c;
        }
        if ((i4 & 8) != 0) {
            i = adData.f4554d;
        }
        if ((i4 & 16) != 0) {
            str2 = adData.f4555f;
        }
        if ((i4 & 32) != 0) {
            str3 = adData.f4556g;
        }
        if ((i4 & 64) != 0) {
            str4 = adData.f4557h;
        }
        if ((i4 & 128) != 0) {
            str5 = adData.f4558j;
        }
        Map<String, String> map2 = map;
        if ((i4 & 256) != 0) {
            map2 = adData.f4559k;
        }
        if ((i4 & 512) != 0) {
            z = adData.f4560l;
        }
        if ((i4 & 1024) != 0) {
            i2 = adData.f4561m;
        }
        if ((i4 & 2048) != 0) {
            str6 = adData.f4562n;
        }
        if ((i4 & 4096) != 0) {
            i3 = adData.f4563o;
        }
        if ((i4 & 8192) != 0) {
            num = adData.f4564p;
        }
        if ((i4 & 16384) != 0) {
            num2 = adData.f4565q;
        }
        if ((i4 & 32768) != 0) {
            str7 = adData.f4566r;
        }
        if ((i4 & 65536) != 0) {
            str8 = adData.f4567s;
        }
        if ((i4 & 131072) != 0) {
            str9 = adData.f4568t;
        }
        if ((i4 & PKIFailureInfo.transactionIdInUse) != 0) {
            str10 = adData.f4569u;
        }
        if ((i4 & PKIFailureInfo.signerNotTrusted) != 0) {
            z2 = adData.f4570v;
        }
        Set<? extends ViewabilityVendor> set2 = set;
        if ((i4 & PKIFailureInfo.badCertTemplate) != 0) {
            set2 = adData.f4571w;
        }
        return adData.copy(str, creativeOrientation, r27, i, str2, str3, str4, str5, map2, z, i2, str6, i3, num, num2, str7, str8, str9, str10, z2, set2);
    }

    public final String component1() {
        return this.f4551a;
    }

    public final boolean component10() {
        return this.f4560l;
    }

    public final int component11() {
        return this.f4561m;
    }

    public final String component12() {
        return this.f4562n;
    }

    public final int component13() {
        return this.f4563o;
    }

    public final Integer component14() {
        return this.f4564p;
    }

    public final Integer component15() {
        return this.f4565q;
    }

    public final String component16() {
        return this.f4566r;
    }

    public final String component17() {
        return this.f4567s;
    }

    public final String component18() {
        return this.f4568t;
    }

    public final String component19() {
        return this.f4569u;
    }

    public final CreativeOrientation component2() {
        return this.f4552b;
    }

    public final boolean component20() {
        return this.f4570v;
    }

    public final Set<ViewabilityVendor> component21() {
        return this.f4571w;
    }

    public final long component3() {
        return this.f4553c;
    }

    public final int component4() {
        return this.f4554d;
    }

    public final String component5() {
        return this.f4555f;
    }

    public final String component6() {
        return this.f4556g;
    }

    public final String component7() {
        return this.f4557h;
    }

    public final String component8() {
        return this.f4558j;
    }

    public final Map<String, String> component9() {
        return this.f4559k;
    }

    public final AdData copy(String str, CreativeOrientation creativeOrientation, long j, int i, String str2, String str3, String str4, String str5, Map<String, String> map, boolean z, int i2, String str6, int i3, Integer num, Integer num2, String str7, String str8, String str9, String str10, boolean z2, Set<? extends ViewabilityVendor> set) {
        qk1.m744c(str5, "adPayload");
        qk1.m744c(map, "extras");
        return new AdData(str, creativeOrientation, j, i, str2, str3, str4, str5, map, z, i2, str6, i3, num, num2, str7, str8, str9, str10, z2, set);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdData)) {
                return false;
            }
            AdData adData = (AdData) obj;
            return qk1.m746a(this.f4551a, adData.f4551a) && qk1.m746a(this.f4552b, adData.f4552b) && this.f4553c == adData.f4553c && this.f4554d == adData.f4554d && qk1.m746a(this.f4555f, adData.f4555f) && qk1.m746a(this.f4556g, adData.f4556g) && qk1.m746a(this.f4557h, adData.f4557h) && qk1.m746a(this.f4558j, adData.f4558j) && qk1.m746a(this.f4559k, adData.f4559k) && this.f4560l == adData.f4560l && this.f4561m == adData.f4561m && qk1.m746a(this.f4562n, adData.f4562n) && this.f4563o == adData.f4563o && qk1.m746a(this.f4564p, adData.f4564p) && qk1.m746a(this.f4565q, adData.f4565q) && qk1.m746a(this.f4566r, adData.f4566r) && qk1.m746a(this.f4567s, adData.f4567s) && qk1.m746a(this.f4568t, adData.f4568t) && qk1.m746a(this.f4569u, adData.f4569u) && this.f4570v == adData.f4570v && qk1.m746a(this.f4571w, adData.f4571w);
        }
        return true;
    }

    public final Integer getAdHeight() {
        return this.f4565q;
    }

    public final String getAdPayload() {
        return this.f4558j;
    }

    public final String getAdType() {
        return this.f4567s;
    }

    public final String getAdUnit() {
        return this.f4566r;
    }

    public final Integer getAdWidth() {
        return this.f4564p;
    }

    public final boolean getAllowCustomClose() {
        return this.f4570v;
    }

    public final long getBroadcastIdentifier() {
        return this.f4553c;
    }

    public final int getCurrencyAmount() {
        return this.f4563o;
    }

    public final String getCurrencyName() {
        return this.f4562n;
    }

    public final String getCustomerId() {
        return this.f4569u;
    }

    public final String getDspCreativeId() {
        return this.f4557h;
    }

    public final Map<String, String> getExtras() {
        return this.f4559k;
    }

    public final String getFullAdType() {
        return this.f4568t;
    }

    public final String getImpressionMinVisibleDips() {
        return this.f4555f;
    }

    public final String getImpressionMinVisibleMs() {
        return this.f4556g;
    }

    public final CreativeOrientation getOrientation() {
        return this.f4552b;
    }

    public final int getRewardedDurationSeconds() {
        return this.f4561m;
    }

    public final int getTimeoutDelayMillis() {
        return this.f4554d;
    }

    public final String getVastVideoConfigString() {
        return this.f4551a;
    }

    public final Set<ViewabilityVendor> getViewabilityVendors() {
        return this.f4571w;
    }

    public int hashCode() {
        String str = this.f4551a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        CreativeOrientation creativeOrientation = this.f4552b;
        int hashCode2 = creativeOrientation != null ? creativeOrientation.hashCode() : 0;
        int m7468a = C0000a.m7468a(this.f4553c);
        int i2 = this.f4554d;
        String str2 = this.f4555f;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f4556g;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f4557h;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f4558j;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        Map<String, String> map = this.f4559k;
        int hashCode7 = map != null ? map.hashCode() : 0;
        boolean z = this.f4560l;
        int i3 = 1;
        int i4 = z ? 1 : 0;
        if (z) {
            i4 = 1;
        }
        int i5 = this.f4561m;
        String str6 = this.f4562n;
        int hashCode8 = str6 != null ? str6.hashCode() : 0;
        int i6 = this.f4563o;
        Integer num = this.f4564p;
        int hashCode9 = num != null ? num.hashCode() : 0;
        Integer num2 = this.f4565q;
        int hashCode10 = num2 != null ? num2.hashCode() : 0;
        String str7 = this.f4566r;
        int hashCode11 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f4567s;
        int hashCode12 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.f4568t;
        int hashCode13 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.f4569u;
        int hashCode14 = str10 != null ? str10.hashCode() : 0;
        boolean z2 = this.f4570v;
        if (!z2) {
            i3 = z2 ? 1 : 0;
        }
        Set<? extends ViewabilityVendor> set = this.f4571w;
        if (set != null) {
            i = set.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + m7468a) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i4) * 31) + i5) * 31) + hashCode8) * 31) + i6) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + i3) * 31) + i;
    }

    public final boolean isRewarded() {
        return this.f4560l;
    }

    public final void setAdHeight(Integer num) {
        this.f4565q = num;
    }

    public final void setAdPayload(String str) {
        qk1.m744c(str, "<set-?>");
        this.f4558j = str;
    }

    public final void setAdType(String str) {
        this.f4567s = str;
    }

    public final void setAdUnit(String str) {
        this.f4566r = str;
    }

    public final void setAdWidth(Integer num) {
        this.f4564p = num;
    }

    public final void setAllowCustomClose(boolean z) {
        this.f4570v = z;
    }

    public final void setBroadcastIdentifier(long j) {
        this.f4553c = j;
    }

    public final void setCurrencyAmount(int i) {
        this.f4563o = i;
    }

    public final void setCurrencyName(String str) {
        this.f4562n = str;
    }

    public final void setCustomerId(String str) {
        this.f4569u = str;
    }

    public final void setDspCreativeId(String str) {
        this.f4557h = str;
    }

    public final void setExtras(Map<String, String> map) {
        qk1.m744c(map, "<set-?>");
        this.f4559k = map;
    }

    public final void setFullAdType(String str) {
        this.f4568t = str;
    }

    public final void setImpressionMinVisibleDips(String str) {
        this.f4555f = str;
    }

    public final void setImpressionMinVisibleMs(String str) {
        this.f4556g = str;
    }

    public final void setOrientation(CreativeOrientation creativeOrientation) {
        this.f4552b = creativeOrientation;
    }

    public final void setRewarded(boolean z) {
        this.f4560l = z;
    }

    public final void setRewardedDurationSeconds(int i) {
        this.f4561m = i;
    }

    public final void setTimeoutDelayMillis(int i) {
        this.f4554d = i;
    }

    public final void setVastVideoConfigString(String str) {
        this.f4551a = str;
    }

    public final void setViewabilityVendors(Set<? extends ViewabilityVendor> set) {
        this.f4571w = set;
    }

    public String toString() {
        return "AdData(vastVideoConfigString=" + this.f4551a + ", orientation=" + this.f4552b + ", broadcastIdentifier=" + this.f4553c + ", timeoutDelayMillis=" + this.f4554d + ", impressionMinVisibleDips=" + this.f4555f + ", impressionMinVisibleMs=" + this.f4556g + ", dspCreativeId=" + this.f4557h + ", adPayload=" + this.f4558j + ", extras=" + this.f4559k + ", isRewarded=" + this.f4560l + ", rewardedDurationSeconds=" + this.f4561m + ", currencyName=" + this.f4562n + ", currencyAmount=" + this.f4563o + ", adWidth=" + this.f4564p + ", adHeight=" + this.f4565q + ", adUnit=" + this.f4566r + ", adType=" + this.f4567s + ", fullAdType=" + this.f4568t + ", customerId=" + this.f4569u + ", allowCustomClose=" + this.f4570v + ", viewabilityVendors=" + this.f4571w + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        qk1.m744c(parcel, "parcel");
        parcel.writeString(this.f4551a);
        CreativeOrientation creativeOrientation = this.f4552b;
        if (creativeOrientation != null) {
            parcel.writeInt(1);
            parcel.writeString(creativeOrientation.name());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLong(this.f4553c);
        parcel.writeInt(this.f4554d);
        parcel.writeString(this.f4555f);
        parcel.writeString(this.f4556g);
        parcel.writeString(this.f4557h);
        parcel.writeString(this.f4558j);
        Map<String, String> map = this.f4559k;
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
        parcel.writeInt(this.f4560l ? 1 : 0);
        parcel.writeInt(this.f4561m);
        parcel.writeString(this.f4562n);
        parcel.writeInt(this.f4563o);
        Integer num = this.f4564p;
        if (num != null) {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        } else {
            parcel.writeInt(0);
        }
        Integer num2 = this.f4565q;
        if (num2 != null) {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.f4566r);
        parcel.writeString(this.f4567s);
        parcel.writeString(this.f4568t);
        parcel.writeString(this.f4569u);
        parcel.writeInt(this.f4570v ? 1 : 0);
        Set<? extends ViewabilityVendor> set = this.f4571w;
        if (set == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(set.size());
        for (ViewabilityVendor viewabilityVendor : set) {
            parcel.writeSerializable(viewabilityVendor);
        }
    }
}
