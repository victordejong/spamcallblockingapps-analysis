package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Point;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.recyclerview.widget.FastScroller;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Strings;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p081h.p430l.p433b.AbstractC10707h;
import p081h.p430l.p433b.C10706g;
import p081h.p430l.p433b.C10708i;
import p081h.p430l.p433b.C10709j;
import p081h.p430l.p433b.C10711k;
import p081h.p430l.p433b.C10712l;
import p081h.p430l.p433b.C10715o;
import p081h.p430l.p433b.C10719p;
import p081h.p430l.p433b.C10720q;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator.class */
public class VastXmlManagerAggregator extends AsyncTask<String, Void, VastVideoConfig> {
    public static final String ADS_BY_AD_SLOT_ID = "adsBy";

    /* renamed from: f */
    public static final List<String> f8804f = Arrays.asList(MimeTypes.VIDEO_MP4, MimeTypes.VIDEO_H263);
    @NonNull

    /* renamed from: a */
    public final WeakReference<AbstractC3868b> f8805a;

    /* renamed from: b */
    public final double f8806b;
    @NonNull

    /* renamed from: c */
    public final Context f8807c;

    /* renamed from: d */
    public final int f8808d;

    /* renamed from: e */
    public int f8809e;

    /* renamed from: com.mopub.mobileads.VastXmlManagerAggregator$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator$a.class */
    public enum EnumC3867a {
        LANDSCAPE,
        PORTRAIT
    }

    /* renamed from: com.mopub.mobileads.VastXmlManagerAggregator$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator$b.class */
    public interface AbstractC3868b {
        void onAggregationComplete(@Nullable VastVideoConfig vastVideoConfig);
    }

    public VastXmlManagerAggregator(@NonNull AbstractC3868b bVar, double d, int i, @NonNull Context context) {
        Preconditions.checkNotNull(bVar);
        Preconditions.checkNotNull(context);
        this.f8805a = new WeakReference<>(bVar);
        this.f8806b = d;
        this.f8808d = i;
        this.f8807c = context.getApplicationContext();
    }

    /* renamed from: c */
    public static boolean m30361c(@Nullable String str) {
        boolean z = true;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            if (Integer.parseInt(str) >= 2) {
                z = false;
            }
        } catch (NumberFormatException e) {
        }
        return z;
    }

    /* renamed from: a */
    public final double m30380a(int i, int i2) {
        double abs = Math.abs(this.f8806b - (i / i2));
        int i3 = this.f8808d;
        return abs + Math.abs((i3 - i) / i3);
    }

    /* renamed from: a */
    public final double m30378a(int i, int i2, @Nullable Integer num, @Nullable String str) {
        double a = m30380a(i, i2);
        return m30370a(str) * (1.0d / ((a + 1.0d) + m30371a(num)));
    }

    /* renamed from: a */
    public final double m30371a(@Nullable Integer num) {
        int intValue = (num == null || num.intValue() < 0) ? 0 : num.intValue();
        if (700 > intValue || intValue > 1500) {
            return Math.min(Math.abs(700 - intValue) / 700.0f, Math.abs(FastScroller.HIDE_DELAY_AFTER_VISIBLE_MS - intValue) / 1500.0f);
        }
        return 0.0d;
    }

    /* renamed from: a */
    public final double m30370a(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        char c = 65535;
        int hashCode = str2.hashCode();
        if (hashCode != -1664118616) {
            if (hashCode == 1331848029 && str2.equals(MimeTypes.VIDEO_MP4)) {
                c = 0;
            }
        } else if (str2.equals(MimeTypes.VIDEO_H263)) {
            c = 1;
        }
        return c != 0 ? 1.0d : 1.5d;
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public Point m30379a(int i, int i2, C10715o.EnumC10718c cVar, EnumC3867a aVar) {
        int i3;
        int i4;
        Point point = new Point(i, i2);
        Display defaultDisplay = ((WindowManager) this.f8807c.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        int dipsToIntPixels = Dips.dipsToIntPixels(i, this.f8807c);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, this.f8807c);
        if (EnumC3867a.LANDSCAPE == aVar) {
            i3 = Math.max(width, height);
            i4 = Math.min(width, height);
        } else {
            i3 = Math.min(width, height);
            i4 = Math.max(width, height);
        }
        if (dipsToIntPixels <= i3 - 16 && dipsToIntPixels2 <= i4 - 16) {
            return point;
        }
        Point point2 = new Point();
        if (C10715o.EnumC10718c.HTML_RESOURCE == cVar) {
            point2.x = Math.min(i3, dipsToIntPixels);
            point2.y = Math.min(i4, dipsToIntPixels2);
        } else {
            float f = dipsToIntPixels;
            float f2 = f / i3;
            float f3 = dipsToIntPixels2;
            float f4 = f3 / i4;
            if (f2 >= f4) {
                point2.x = i3;
                point2.y = (int) (f3 / f2);
            } else {
                point2.x = (int) (f / f4);
                point2.y = i4;
            }
        }
        point2.x -= 16;
        point2.y -= 16;
        int i5 = point2.x;
        if (i5 < 0 || point2.y < 0) {
            return point;
        }
        point2.x = Dips.pixelsToIntDips(i5, this.f8807c);
        point2.y = Dips.pixelsToIntDips(point2.y, this.f8807c);
        return point2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v2, types: [double] */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r29v0, types: [double] */
    /* JADX WARN: Type inference failed for: r29v3 */
    /* JADX WARN: Type inference failed for: r29v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @androidx.annotation.Nullable
    @com.mopub.common.VisibleForTesting
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mopub.mobileads.VastCompanionAdConfig m30367a(@androidx.annotation.NonNull java.util.List<p081h.p430l.p433b.C10708i> r10, @androidx.annotation.NonNull com.mopub.mobileads.VastXmlManagerAggregator.EnumC3867a r11) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastXmlManagerAggregator.m30367a(java.util.List, com.mopub.mobileads.VastXmlManagerAggregator$a):com.mopub.mobileads.VastCompanionAdConfig");
    }

    @Nullable
    /* renamed from: a */
    public final VastVideoConfig m30375a(@NonNull C10711k kVar, @NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(kVar);
        Preconditions.checkNotNull(list);
        for (C10712l lVar : kVar.m10866d()) {
            String b = m30362b(lVar.m10841f());
            if (b != null) {
                VastVideoConfig vastVideoConfig = new VastVideoConfig();
                vastVideoConfig.addImpressionTrackers(kVar.m10867c());
                m30374a(lVar, vastVideoConfig);
                vastVideoConfig.setClickThroughUrl(lVar.m10846b());
                vastVideoConfig.setNetworkMediaFileUrl(b);
                List<C10708i> a = kVar.m10869a();
                vastVideoConfig.setVastCompanionAd(m30367a(a, EnumC3867a.LANDSCAPE), m30367a(a, EnumC3867a.PORTRAIT));
                list.addAll(kVar.m10868b());
                vastVideoConfig.addErrorTrackers(list);
                m30376a(kVar, vastVideoConfig);
                m30364b(kVar, vastVideoConfig);
                return vastVideoConfig;
            }
        }
        return null;
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: a */
    public VastVideoConfig m30369a(@NonNull String str, @NonNull List<VastTracker> list) {
        VastVideoConfig a;
        VastVideoConfig a2;
        Preconditions.checkNotNull(str, "vastXml cannot be null");
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        C10720q qVar = new C10720q();
        try {
            qVar.m10826a(str);
            List<C10706g> a3 = qVar.m10827a();
            if (m30366a(a3, qVar, this.f8807c)) {
                return null;
            }
            for (C10706g gVar : a3) {
                if (m30361c(gVar.m10871b())) {
                    C10711k a4 = gVar.m10872a();
                    if (a4 == null || (a2 = m30375a(a4, list)) == null) {
                        C10719p c = gVar.m10870c();
                        if (c != null) {
                            List<VastTracker> arrayList = new ArrayList<>(list);
                            arrayList.addAll(c.m10868b());
                            String a5 = m30373a(c, arrayList);
                            if (!(a5 == null || (a = m30369a(a5, arrayList)) == null)) {
                                a.addImpressionTrackers(c.m10867c());
                                for (C10712l lVar : c.m10866d()) {
                                    m30374a(lVar, a);
                                }
                                m30376a(c, a);
                                m30364b(c, a);
                                List<C10708i> a6 = c.m10869a();
                                if (!a.hasCompanionAd()) {
                                    a.setVastCompanionAd(m30367a(a6, EnumC3867a.LANDSCAPE), m30367a(a6, EnumC3867a.PORTRAIT));
                                } else {
                                    VastCompanionAdConfig vastCompanionAd = a.getVastCompanionAd(2);
                                    VastCompanionAdConfig vastCompanionAd2 = a.getVastCompanionAd(1);
                                    if (!(vastCompanionAd == null || vastCompanionAd2 == null)) {
                                        for (C10708i iVar : a6) {
                                            if (!iVar.m10858g()) {
                                                vastCompanionAd.addClickTrackers(iVar.m10863b());
                                                vastCompanionAd.addCreativeViewTrackers(iVar.m10862c());
                                                vastCompanionAd2.addClickTrackers(iVar.m10863b());
                                                vastCompanionAd2.addCreativeViewTrackers(iVar.m10862c());
                                            }
                                        }
                                    }
                                }
                                m30372a(qVar, a);
                                return a;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m30372a(qVar, a2);
                        return a2;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to parse VAST XML", e);
            TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.XML_PARSING_ERROR, null, null, this.f8807c);
            return null;
        }
    }

    /* renamed from: a */
    public VastVideoConfig doInBackground(@Nullable String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return null;
        }
        try {
            return m30369a(strArr[0], new ArrayList());
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Unable to generate VastVideoConfig.", e);
            return null;
        }
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: a */
    public C10709j m30368a(@NonNull List<VastIconXmlManager> list) {
        C10715o.EnumC10718c[] values;
        C10715o a;
        Preconditions.checkNotNull(list, "managers cannot be null");
        ArrayList<VastIconXmlManager> arrayList = new ArrayList(list);
        for (C10715o.EnumC10718c cVar : C10715o.EnumC10718c.values()) {
            for (VastIconXmlManager vastIconXmlManager : arrayList) {
                Integer h = vastIconXmlManager.m30481h();
                Integer d = vastIconXmlManager.m30485d();
                if (h != null && h.intValue() > 0 && h.intValue() <= 300 && d != null && d.intValue() > 0 && d.intValue() <= 300 && (a = C10715o.m10829a(vastIconXmlManager.m30483f(), cVar, h.intValue(), d.intValue())) != null) {
                    return new C10709j(vastIconXmlManager.m30481h().intValue(), vastIconXmlManager.m30485d().intValue(), vastIconXmlManager.m30484e(), vastIconXmlManager.m30486c(), a, vastIconXmlManager.m30487b(), vastIconXmlManager.m30488a(), vastIconXmlManager.m30482g());
                }
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: a */
    public final String m30373a(@NonNull C10719p pVar, @NonNull List<VastTracker> list) {
        String str;
        String f = pVar.m10828f();
        if (f == null) {
            return null;
        }
        try {
            str = m30363b(f);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to follow VAST redirect", e);
            str = null;
            if (!list.isEmpty()) {
                TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.WRAPPER_TIMEOUT, null, null, this.f8807c);
                str = null;
            }
        }
        return str;
    }

    /* renamed from: a */
    public void onPostExecute(@Nullable VastVideoConfig vastVideoConfig) {
        AbstractC3868b bVar = this.f8805a.get();
        if (bVar != null) {
            bVar.onAggregationComplete(vastVideoConfig);
        }
    }

    /* renamed from: a */
    public final void m30376a(@NonNull AbstractC10707h hVar, @NonNull VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager e;
        Preconditions.checkNotNull(hVar);
        Preconditions.checkNotNull(vastVideoConfig);
        if (vastVideoConfig.getVideoViewabilityTracker() == null && (e = hVar.m10865e()) != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : e.m30493a()) {
                if ("MoPub".equals(vastExtensionXmlManager.m30490c())) {
                    vastVideoConfig.setVideoViewabilityTracker(vastExtensionXmlManager.m30489d());
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m30374a(@NonNull C10712l lVar, @NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(lVar, "linearXmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addAbsoluteTrackers(lVar.m10849a());
        vastVideoConfig.addFractionalTrackers(lVar.m10843d());
        vastVideoConfig.addPauseTrackers(lVar.m10840g());
        vastVideoConfig.addResumeTrackers(lVar.m10839h());
        vastVideoConfig.addCompleteTrackers(lVar.m10836k());
        vastVideoConfig.addCloseTrackers(lVar.m10837j());
        vastVideoConfig.addSkipTrackers(lVar.m10835l());
        vastVideoConfig.addClickTrackers(lVar.m10844c());
        if (vastVideoConfig.getSkipOffsetString() == null) {
            vastVideoConfig.setSkipOffset(lVar.m10838i());
        }
        if (vastVideoConfig.getVastIconConfig() == null) {
            vastVideoConfig.setVastIconConfig(m30368a(lVar.m10842e()));
        }
    }

    /* renamed from: a */
    public final void m30372a(@NonNull C10720q qVar, @NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(qVar, "xmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addImpressionTrackers(qVar.m10821f());
        if (vastVideoConfig.getCustomCtaText() == null) {
            vastVideoConfig.setCustomCtaText(qVar.m10824c());
        }
        if (vastVideoConfig.getCustomSkipText() == null) {
            vastVideoConfig.setCustomSkipText(qVar.m10823d());
        }
        if (vastVideoConfig.getCustomCloseIconUrl() == null) {
            vastVideoConfig.setCustomCloseIconUrl(qVar.m10825b());
        }
    }

    /* renamed from: a */
    public final boolean m30366a(@NonNull List<C10706g> list, @NonNull C10720q qVar, @NonNull Context context) {
        if (!list.isEmpty() || qVar.m10822e() == null) {
            return false;
        }
        TrackingRequest.makeVastTrackingHttpRequest(Collections.singletonList(qVar.m10822e()), this.f8809e > 0 ? VastErrorCode.NO_ADS_VAST_RESPONSE : VastErrorCode.UNDEFINED_ERROR, null, null, context);
        return true;
    }

    @Nullable
    /* renamed from: b */
    public final String m30363b(@NonNull String str) throws IOException {
        HttpURLConnection httpURLConnection;
        Throwable th;
        Preconditions.checkNotNull(str);
        int i = this.f8809e;
        BufferedInputStream bufferedInputStream = null;
        if (i >= 10) {
            return null;
        }
        this.f8809e = i + 1;
        try {
            HttpURLConnection httpUrlConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(httpUrlConnection.getInputStream());
                try {
                    String fromStream = Strings.fromStream(bufferedInputStream2);
                    Streams.closeStream(bufferedInputStream2);
                    if (httpUrlConnection != null) {
                        httpUrlConnection.disconnect();
                    }
                    return fromStream;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = bufferedInputStream2;
                    httpURLConnection = httpUrlConnection;
                    Streams.closeStream(bufferedInputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = httpUrlConnection;
            }
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @androidx.annotation.Nullable
    @com.mopub.common.VisibleForTesting
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m30362b(@androidx.annotation.NonNull java.util.List<p081h.p430l.p433b.C10714n> r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "managers cannot be null"
            com.mopub.common.Preconditions.checkNotNull(r0, r1)
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
            r0 = -4503599627370496(0xfff0000000000000, double:-Infinity)
            r9 = r0
            r0 = 0
            r7 = r0
        L_0x001a:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00b0
            r0 = r8
            java.lang.Object r0 = r0.next()
            h.l.b.n r0 = (p081h.p430l.p433b.C10714n) r0
            r11 = r0
            r0 = r11
            java.lang.String r0 = r0.m10831d()
            r12 = r0
            r0 = r11
            java.lang.String r0 = r0.m10832c()
            r13 = r0
            java.util.List<java.lang.String> r0 = com.mopub.mobileads.VastXmlManagerAggregator.f8804f
            r1 = r12
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x00a7
            r0 = r13
            if (r0 != 0) goto L_0x0051
            goto L_0x00a7
        L_0x0051:
            r0 = r11
            java.lang.Integer r0 = r0.m10830e()
            r14 = r0
            r0 = r11
            java.lang.Integer r0 = r0.m10833b()
            r15 = r0
            r0 = r11
            java.lang.Integer r0 = r0.m10834a()
            r11 = r0
            r0 = r14
            if (r0 == 0) goto L_0x001a
            r0 = r14
            int r0 = r0.intValue()
            if (r0 <= 0) goto L_0x001a
            r0 = r15
            if (r0 == 0) goto L_0x001a
            r0 = r15
            int r0 = r0.intValue()
            if (r0 > 0) goto L_0x0083
            goto L_0x001a
        L_0x0083:
            r0 = r6
            r1 = r14
            int r1 = r1.intValue()
            r2 = r15
            int r2 = r2.intValue()
            r3 = r11
            r4 = r12
            double r0 = r0.m30378a(r1, r2, r3, r4)
            r16 = r0
            r0 = r16
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001a
            r0 = r16
            r9 = r0
            r0 = r13
            r7 = r0
            goto L_0x001a
        L_0x00a7:
            r0 = r8
            r0.remove()
            goto L_0x001a
        L_0x00b0:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastXmlManagerAggregator.m30362b(java.util.List):java.lang.String");
    }

    /* renamed from: b */
    public final void m30364b(@NonNull AbstractC10707h hVar, @NonNull VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager e = hVar.m10865e();
        if (e != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : e.m30493a()) {
                if (vastExtensionXmlManager != null) {
                    vastVideoConfig.addAvidJavascriptResources(vastExtensionXmlManager.m30492a());
                    vastVideoConfig.addMoatImpressionPixels(vastExtensionXmlManager.m30491b());
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        AbstractC3868b bVar = this.f8805a.get();
        if (bVar != null) {
            bVar.onAggregationComplete(null);
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        Networking.getUserAgent(this.f8807c);
    }
}
