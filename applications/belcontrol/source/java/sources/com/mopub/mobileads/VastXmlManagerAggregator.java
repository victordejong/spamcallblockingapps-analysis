package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Point;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer2.util.MimeTypes;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.VastResource;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import java.io.BufferedInputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator.class */
public class VastXmlManagerAggregator extends AsyncTask<String, Void, VastVideoConfig> {
    public static final String ADS_BY_AD_SLOT_ID = "adsBy";

    /* renamed from: f */
    public static final List<String> f4963f = Arrays.asList(MimeTypes.VIDEO_MP4, MimeTypes.VIDEO_H263);

    /* renamed from: a */
    public final WeakReference<AbstractC1117b> f4964a;

    /* renamed from: b */
    public final double f4965b;

    /* renamed from: c */
    public final Context f4966c;

    /* renamed from: d */
    public final int f4967d;

    /* renamed from: e */
    public int f4968e;

    /* renamed from: com.mopub.mobileads.VastXmlManagerAggregator$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator$a.class */
    public enum EnumC1116a {
        LANDSCAPE,
        PORTRAIT
    }

    /* renamed from: com.mopub.mobileads.VastXmlManagerAggregator$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator$b.class */
    public interface AbstractC1117b {
        void onAggregationComplete(VastVideoConfig vastVideoConfig);
    }

    public VastXmlManagerAggregator(AbstractC1117b abstractC1117b, double d, int i, Context context) {
        Preconditions.checkNotNull(abstractC1117b);
        Preconditions.checkNotNull(context);
        this.f4964a = new WeakReference<>(abstractC1117b);
        this.f4965b = d;
        this.f4967d = i;
        this.f4966c = context.getApplicationContext();
    }

    /* renamed from: o */
    public static boolean m3520o(String str) {
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
    public final double m3534a(Integer num) {
        int intValue = (num == null || num.intValue() < 0) ? 0 : num.intValue();
        if (700 > intValue || intValue > 1500) {
            return Math.min(Math.abs(700 - intValue) / 700.0f, Math.abs(1500 - intValue) / 1500.0f);
        }
        return 0.0d;
    }

    /* renamed from: b */
    public final double m3533b(int i, int i2, Integer num, String str) {
        double m3531d = m3531d(i, i2);
        return m3532c(str) * (1.0d / ((m3531d + 1.0d) + m3534a(num)));
    }

    /* renamed from: c */
    public final double m3532c(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        boolean z = true;
        int hashCode = str2.hashCode();
        if (hashCode != -1664118616) {
            if (hashCode == 1331848029 && str2.equals(MimeTypes.VIDEO_MP4)) {
                z = false;
            }
        } else if (str2.equals(MimeTypes.VIDEO_H263)) {
            z = true;
        }
        return z ? 1.0d : 1.5d;
    }

    /* renamed from: d */
    public final double m3531d(int i, int i2) {
        double abs = Math.abs(this.f4965b - (i / i2));
        int i3 = this.f4967d;
        return abs + Math.abs((i3 - i) / i3);
    }

    /* renamed from: e */
    public VastVideoConfig doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return null;
        }
        try {
            return m3528g(strArr[0], new ArrayList());
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Unable to generate VastVideoConfig.", e);
            return null;
        }
    }

    /* renamed from: f */
    public final VastVideoConfig m3529f(lh1 lh1Var, List<VastTracker> list) {
        Preconditions.checkNotNull(lh1Var);
        Preconditions.checkNotNull(list);
        for (mh1 mh1Var : lh1Var.m1474d()) {
            String m3522m = m3522m(mh1Var.m1249g());
            if (m3522m != null) {
                VastVideoConfig vastVideoConfig = new VastVideoConfig();
                vastVideoConfig.addImpressionTrackers(lh1Var.m1475c());
                m3517r(mh1Var, vastVideoConfig);
                vastVideoConfig.setClickThroughUrl(mh1Var.m1253c());
                vastVideoConfig.setNetworkMediaFileUrl(m3522m);
                List<kh1> m1477a = lh1Var.m1477a();
                vastVideoConfig.setVastCompanionAd(m3524k(m1477a, EnumC1116a.LANDSCAPE), m3524k(m1477a, EnumC1116a.PORTRAIT));
                list.addAll(lh1Var.m1476b());
                vastVideoConfig.addErrorTrackers(list);
                m3515t(lh1Var, vastVideoConfig);
                m3514u(lh1Var, vastVideoConfig);
                m3518q(lh1Var.f6839a, vastVideoConfig);
                return vastVideoConfig;
            }
        }
        return null;
    }

    @VisibleForTesting
    /* renamed from: g */
    public VastVideoConfig m3528g(String str, List<VastTracker> list) {
        VastVideoConfig m3528g;
        VastVideoConfig m3529f;
        Preconditions.checkNotNull(str, "vastXml cannot be null");
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        qh1 qh1Var = new qh1();
        try {
            qh1Var.m785g(str);
            List<ih1> m791a = qh1Var.m791a();
            if (m3526i(m791a, qh1Var, this.f4966c)) {
                return null;
            }
            for (ih1 ih1Var : m791a) {
                if (m3520o(ih1Var.m1571b())) {
                    lh1 m1572a = ih1Var.m1572a();
                    if (m1572a != null && (m3529f = m3529f(m1572a, list)) != null) {
                        m3516s(qh1Var, m3529f);
                        return m3529f;
                    }
                    ph1 m1570c = ih1Var.m1570c();
                    if (m1570c != null) {
                        List<VastTracker> arrayList = new ArrayList<>(list);
                        arrayList.addAll(m1570c.m1476b());
                        String m3527h = m3527h(m1570c, arrayList);
                        if (m3527h != null && (m3528g = m3528g(m3527h, arrayList)) != null) {
                            m3528g.addImpressionTrackers(m1570c.m1475c());
                            for (mh1 mh1Var : m1570c.m1474d()) {
                                m3517r(mh1Var, m3528g);
                            }
                            m3515t(m1570c, m3528g);
                            m3514u(m1570c, m3528g);
                            m3518q(m1570c.f6839a, m3528g);
                            List<kh1> m1477a = m1570c.m1477a();
                            if (!m3528g.hasCompanionAd()) {
                                m3528g.setVastCompanionAd(m3524k(m1477a, EnumC1116a.LANDSCAPE), m3524k(m1477a, EnumC1116a.PORTRAIT));
                            } else {
                                VastCompanionAdConfig vastCompanionAd = m3528g.getVastCompanionAd(2);
                                VastCompanionAdConfig vastCompanionAd2 = m3528g.getVastCompanionAd(1);
                                if (vastCompanionAd != null && vastCompanionAd2 != null) {
                                    for (kh1 kh1Var : m1477a) {
                                        if (!kh1Var.m1392g()) {
                                            vastCompanionAd.addClickTrackers(kh1Var.m1397b());
                                            vastCompanionAd.addCreativeViewTrackers(kh1Var.m1396c());
                                            vastCompanionAd2.addClickTrackers(kh1Var.m1397b());
                                            vastCompanionAd2.addCreativeViewTrackers(kh1Var.m1396c());
                                        }
                                    }
                                }
                            }
                            m3516s(qh1Var, m3528g);
                            return m3528g;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to parse VAST XML", e);
            TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.XML_PARSING_ERROR, null, null, this.f4966c);
            return null;
        }
    }

    /* renamed from: h */
    public final String m3527h(ph1 ph1Var, List<VastTracker> list) {
        String str;
        String m918f = ph1Var.m918f();
        if (m918f == null) {
            return null;
        }
        try {
            str = m3525j(m918f);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to follow VAST redirect", e);
            str = null;
            if (!list.isEmpty()) {
                TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.WRAPPER_TIMEOUT, null, null, this.f4966c);
                str = null;
            }
        }
        return str;
    }

    /* renamed from: i */
    public final boolean m3526i(List<ih1> list, qh1 qh1Var, Context context) {
        if (!list.isEmpty() || qh1Var.m787e() == null) {
            return false;
        }
        TrackingRequest.makeVastTrackingHttpRequest(Collections.singletonList(qh1Var.m787e()), this.f4968e > 0 ? VastErrorCode.NO_ADS_VAST_RESPONSE : VastErrorCode.UNDEFINED_ERROR, null, null, context);
        return true;
    }

    /* renamed from: j */
    public final String m3525j(String str) {
        Throwable th;
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        Preconditions.checkNotNull(str);
        int i = this.f4968e;
        if (i < 10) {
            this.f4968e = i + 1;
            try {
                httpURLConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
                try {
                    bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = null;
                httpURLConnection = null;
            }
            try {
                String fromStream = Strings.fromStream(bufferedInputStream);
                Streams.closeStream(bufferedInputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return fromStream;
            } catch (Throwable th4) {
                th = th4;
                Streams.closeStream(bufferedInputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v58, types: [double] */
    /* JADX WARN: Type inference failed for: r0v61, types: [double] */
    @VisibleForTesting
    /* renamed from: k */
    public VastCompanionAdConfig m3524k(List<kh1> list, EnumC1116a enumC1116a) {
        kh1 kh1Var;
        VastResource vastResource;
        Point point;
        char c;
        Preconditions.checkNotNull(list, "managers cannot be null");
        Preconditions.checkNotNull(enumC1116a, "orientation cannot be null");
        ArrayList<kh1> arrayList = new ArrayList(list);
        VastResource.Type[] values = VastResource.Type.values();
        int length = values.length;
        char c2 = 0;
        int i = 0;
        kh1 kh1Var2 = null;
        VastResource vastResource2 = null;
        Point point2 = null;
        while (true) {
            kh1Var = kh1Var2;
            vastResource = vastResource2;
            point = point2;
            if (i >= length) {
                break;
            }
            VastResource.Type type = values[i];
            for (kh1 kh1Var3 : arrayList) {
                Integer m1393f = kh1Var3.m1393f();
                Integer m1395d = kh1Var3.m1395d();
                if (m1393f == null || m1393f.intValue() < 300 || m1395d == null || m1395d.intValue() < 250) {
                    c = c2;
                } else {
                    Point m3521n = m3521n(m1393f.intValue(), m1395d.intValue(), type, enumC1116a);
                    VastResource fromVastResourceXmlManager = VastResource.fromVastResourceXmlManager(kh1Var3.m1394e(), type, m3521n.x, m3521n.y);
                    if (fromVastResourceXmlManager == null) {
                        c = c2;
                    } else {
                        char m3533b = ((EnumC1116a.LANDSCAPE != enumC1116a || this.f4965b >= 1.0d) && (EnumC1116a.PORTRAIT != enumC1116a || this.f4965b <= 1.0d)) ? m3533b(m1393f.intValue(), m1395d.intValue(), null, null) : m3533b(m1395d.intValue(), m1393f.intValue(), null, null);
                        c = c2;
                        if (m3533b > c2) {
                            point2 = m3521n;
                            vastResource2 = fromVastResourceXmlManager;
                            kh1Var2 = kh1Var3;
                            c = m3533b;
                        }
                    }
                }
                c2 = c;
            }
            if (kh1Var2 != null) {
                kh1Var = kh1Var2;
                vastResource = vastResource2;
                point = point2;
                break;
            }
            i++;
        }
        if (kh1Var != null) {
            return new VastCompanionAdConfig(point.x, point.y, vastResource, kh1Var.m1398a(), kh1Var.m1397b(), kh1Var.m1396c());
        }
        return null;
    }

    @VisibleForTesting
    /* renamed from: l */
    public VastIconConfig m3523l(List<VastIconXmlManager> list) {
        VastResource.Type[] values;
        VastResource fromVastResourceXmlManager;
        Preconditions.checkNotNull(list, "managers cannot be null");
        ArrayList<VastIconXmlManager> arrayList = new ArrayList(list);
        for (VastResource.Type type : VastResource.Type.values()) {
            for (VastIconXmlManager vastIconXmlManager : arrayList) {
                Integer m3577h = vastIconXmlManager.m3577h();
                Integer m3581d = vastIconXmlManager.m3581d();
                if (m3577h != null && m3577h.intValue() > 0 && m3577h.intValue() <= 300 && m3581d != null && m3581d.intValue() > 0 && m3581d.intValue() <= 300 && (fromVastResourceXmlManager = VastResource.fromVastResourceXmlManager(vastIconXmlManager.m3579f(), type, m3577h.intValue(), m3581d.intValue())) != null) {
                    return new VastIconConfig(vastIconXmlManager.m3577h().intValue(), vastIconXmlManager.m3581d().intValue(), vastIconXmlManager.m3580e(), vastIconXmlManager.m3582c(), fromVastResourceXmlManager, vastIconXmlManager.m3583b(), vastIconXmlManager.m3584a(), vastIconXmlManager.m3578g());
                }
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    @VisibleForTesting
    /* renamed from: m */
    public String m3522m(List<oh1> list) {
        Preconditions.checkNotNull(list, "managers cannot be null");
        Iterator it = new ArrayList(list).iterator();
        char c = 0;
        String str = null;
        while (it.hasNext()) {
            oh1 oh1Var = (oh1) it.next();
            String m1027d = oh1Var.m1027d();
            String m1028c = oh1Var.m1028c();
            if (!f4963f.contains(m1027d) || m1028c == null) {
                it.remove();
            } else {
                Integer m1026e = oh1Var.m1026e();
                Integer m1029b = oh1Var.m1029b();
                Integer m1030a = oh1Var.m1030a();
                if (m1026e != null && m1026e.intValue() > 0 && m1029b != null && m1029b.intValue() > 0) {
                    ?? m3533b = m3533b(m1026e.intValue(), m1029b.intValue(), m1030a, m1027d);
                    if (m3533b > c) {
                        c = m3533b;
                        str = m1028c;
                    }
                }
            }
        }
        return str;
    }

    @VisibleForTesting
    /* renamed from: n */
    public Point m3521n(int i, int i2, VastResource.Type type, EnumC1116a enumC1116a) {
        int i3;
        int i4;
        int i5;
        int i6;
        Point point = new Point(i, i2);
        Display defaultDisplay = ((WindowManager) this.f4966c.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        int dipsToIntPixels = Dips.dipsToIntPixels(i, this.f4966c);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, this.f4966c);
        if (EnumC1116a.LANDSCAPE == enumC1116a) {
            i4 = Math.max(width, height);
            i3 = Math.min(width, height);
        } else {
            i4 = Math.min(width, height);
            i3 = Math.max(width, height);
        }
        if (dipsToIntPixels > i4 - 16 || dipsToIntPixels2 > i3 - 16) {
            Point point2 = new Point();
            if (VastResource.Type.HTML_RESOURCE == type) {
                point2.x = Math.min(i4, dipsToIntPixels);
                i6 = Math.min(i3, dipsToIntPixels2);
            } else {
                float f = dipsToIntPixels;
                float f2 = f / i4;
                float f3 = dipsToIntPixels2;
                float f4 = f3 / i3;
                if (f2 < f4) {
                    point2.x = (int) (f / f4);
                    point2.y = i3;
                    i5 = point2.x - 16;
                    point2.x = i5;
                    int i7 = point2.y - 16;
                    point2.y = i7;
                    if (i5 >= 0 || i7 < 0) {
                        return point;
                    }
                    point2.x = Dips.pixelsToIntDips(i5, this.f4966c);
                    point2.y = Dips.pixelsToIntDips(point2.y, this.f4966c);
                    return point2;
                }
                point2.x = i4;
                i6 = (int) (f3 / f2);
            }
            point2.y = i6;
            i5 = point2.x - 16;
            point2.x = i5;
            int i72 = point2.y - 16;
            point2.y = i72;
            if (i5 >= 0) {
            }
            return point;
        }
        return point;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        AbstractC1117b abstractC1117b = this.f4964a.get();
        if (abstractC1117b != null) {
            abstractC1117b.onAggregationComplete(null);
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        Networking.getUserAgent(this.f4966c);
    }

    /* renamed from: p */
    public void onPostExecute(VastVideoConfig vastVideoConfig) {
        AbstractC1117b abstractC1117b = this.f4964a.get();
        if (abstractC1117b != null) {
            abstractC1117b.onAggregationComplete(vastVideoConfig);
        }
    }

    /* renamed from: q */
    public final void m3518q(Node node, VastVideoConfig vastVideoConfig) {
        vastVideoConfig.addViewabilityVendors(new hh1(node).m1623a());
    }

    /* renamed from: r */
    public final void m3517r(mh1 mh1Var, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(mh1Var, "linearXmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addAbsoluteTrackers(mh1Var.m1254b());
        vastVideoConfig.addFractionalTrackers(mh1Var.m1251e());
        vastVideoConfig.addPauseTrackers(mh1Var.m1248h());
        vastVideoConfig.addResumeTrackers(mh1Var.m1247i());
        vastVideoConfig.addCompleteTrackers(mh1Var.m1244l());
        vastVideoConfig.addCloseTrackers(mh1Var.m1245k());
        vastVideoConfig.addSkipTrackers(mh1Var.m1243m());
        vastVideoConfig.addClickTrackers(mh1Var.m1252d());
        if (vastVideoConfig.getSkipOffset() == null) {
            vastVideoConfig.setSkipOffset(mh1Var.m1246j());
        }
        if (vastVideoConfig.getVastIconConfig() == null) {
            vastVideoConfig.setVastIconConfig(m3523l(mh1Var.m1250f()));
        }
    }

    /* renamed from: s */
    public final void m3516s(qh1 qh1Var, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(qh1Var, "xmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addImpressionTrackers(qh1Var.m786f());
        if (vastVideoConfig.getCustomCtaText() == null) {
            vastVideoConfig.setCustomCtaText(qh1Var.m789c());
        }
        if (vastVideoConfig.getCustomSkipText() == null) {
            vastVideoConfig.setCustomSkipText(qh1Var.m788d());
        }
        if (vastVideoConfig.getCustomCloseIconUrl() == null) {
            vastVideoConfig.setCustomCloseIconUrl(qh1Var.m790b());
        }
    }

    /* renamed from: t */
    public final void m3515t(jh1 jh1Var, VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager m1473e;
        Preconditions.checkNotNull(jh1Var);
        Preconditions.checkNotNull(vastVideoConfig);
        if (vastVideoConfig.getVideoViewabilityTracker() == null && (m1473e = jh1Var.m1473e()) != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : m1473e.m3587a()) {
                if (MoPubLog.LOGTAG.equals(vastExtensionXmlManager.m3586a())) {
                    vastVideoConfig.setVideoViewabilityTracker(vastExtensionXmlManager.m3585b());
                    return;
                }
            }
        }
    }

    /* renamed from: u */
    public final void m3514u(jh1 jh1Var, VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager m1473e = jh1Var.m1473e();
        if (m1473e != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : m1473e.m3587a()) {
                if (vastExtensionXmlManager != null) {
                    m3518q(vastExtensionXmlManager.f4811a, vastVideoConfig);
                }
            }
        }
    }
}
