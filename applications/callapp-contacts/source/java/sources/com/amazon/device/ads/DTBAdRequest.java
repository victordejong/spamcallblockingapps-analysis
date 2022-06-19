package com.amazon.device.ads;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.DtbCommonUtils;
import com.callapp.contacts.model.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.json.JSONArray;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdRequest.class */
public class DTBAdRequest {

    /* renamed from: a */
    static JSONArray f11741a;

    /* renamed from: b */
    private static final String f11742b = "DTBAdRequest";

    /* renamed from: r */
    private static boolean f11743r = false;

    /* renamed from: s */
    private static JSONArray f11744s;

    /* renamed from: t */
    private static final String[] f11745t = {"1.0", "2.0", "3.0"};

    /* renamed from: e */
    private DTBAdResponse f11748e;

    /* renamed from: g */
    private DTBAdCallback f11750g;

    /* renamed from: h */
    private Context f11751h;

    /* renamed from: o */
    private Handler f11758o;

    /* renamed from: p */
    private HandlerThread f11759p;

    /* renamed from: c */
    private final List<DTBAdSize> f11746c = new ArrayList();

    /* renamed from: d */
    private final Map<String, String> f11747d = new HashMap();

    /* renamed from: f */
    private final Map<String, String> f11749f = new HashMap();

    /* renamed from: i */
    private volatile AdError f11752i = null;

    /* renamed from: j */
    private boolean f11753j = false;

    /* renamed from: k */
    private boolean f11754k = true;

    /* renamed from: l */
    private boolean f11755l = false;

    /* renamed from: m */
    private int f11756m = 0;

    /* renamed from: n */
    private final Runnable f11757n = new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdRequest$fxfnwlyFNqpOeOdnB8lBE0ZXNK4
        @Override // java.lang.Runnable
        public final void run() {
            DTBAdRequest.this.m38970h();
        }
    };

    /* renamed from: q */
    private String f11760q = null;

    /* renamed from: com.amazon.device.ads.DTBAdRequest$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdRequest$1.class */
    public static /* synthetic */ class C32601 {

        /* renamed from: a */
        static final /* synthetic */ int[] f11761a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MRAIDPolicy.values().length];
            f11761a = iArr;
            try {
                iArr[MRAIDPolicy.AUTO_DETECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11761a[MRAIDPolicy.DFP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11761a[MRAIDPolicy.MOPUB.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11761a[MRAIDPolicy.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11761a[MRAIDPolicy.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdRequest$WrapperReport.class */
    public class WrapperReport {

        /* renamed from: a */
        String f11762a;

        /* renamed from: b */
        String f11763b;

        WrapperReport() {
            DTBAdRequest.this = r4;
        }
    }

    public DTBAdRequest() {
        if (!AdRegistration.m39072c()) {
            DtbLog.m38828a("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
            return;
        }
        if (this.f11751h == null) {
            this.f11751h = AdRegistration.m39071d();
        }
        if (f11743r) {
            return;
        }
        m38977b();
    }

    public DTBAdRequest(Context context) {
        if (context != null) {
            if (!AdRegistration.m39072c()) {
                DtbLog.m38828a("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
                return;
            }
            if (AdRegistration.m39071d() == null) {
                AdRegistration.m39077a(context);
            }
            this.f11751h = context;
            if (f11743r) {
                return;
            }
            m38977b();
            return;
        }
        throw new IllegalArgumentException("unable to initialize ad request with null app context");
    }

    /* renamed from: a */
    private WrapperReport m38980a(Object obj) {
        WrapperReport wrapperReport;
        Context applicationContext = AdRegistration.m39071d().getApplicationContext();
        try {
            String name = obj.getClass().getPackage().getName();
            String str = applicationContext.getApplicationInfo().packageName;
            StringTokenizer stringTokenizer = new StringTokenizer(name, ".");
            StringTokenizer stringTokenizer2 = new StringTokenizer(str, ".");
            if (stringTokenizer.countTokens() < 2 || stringTokenizer2.countTokens() < 2) {
                wrapperReport = new WrapperReport();
                wrapperReport.f11763b = str;
                wrapperReport.f11762a = name;
            } else {
                int i = 0;
                while (true) {
                    wrapperReport = null;
                    if (i >= 2) {
                        break;
                    } else if (!stringTokenizer.nextToken().equals(stringTokenizer2.nextToken())) {
                        wrapperReport = new WrapperReport();
                        wrapperReport.f11763b = name;
                        wrapperReport.f11762a = str;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        } catch (Exception e) {
            wrapperReport = null;
        }
        return wrapperReport;
    }

    /* renamed from: a */
    public static void m38984a() {
        f11741a = null;
        f11743r = false;
    }

    /* renamed from: a */
    private static void m38982a(DtbCommonUtils.APIVersion aPIVersion) {
        if (aPIVersion.f11846a > 0) {
            JSONArray jSONArray = new JSONArray();
            f11741a = jSONArray;
            jSONArray.put("1.0");
            if ((aPIVersion.f11846a < 3 || aPIVersion.f11847b < 3) && aPIVersion.f11846a <= 3) {
                return;
            }
            f11741a.put("2.0");
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m38981a(DtbMetrics dtbMetrics) {
        WrapperReport m38980a;
        if (this.f11750g == null) {
            DtbLog.m38821c("No callback -DTBAdCallback- provided to loadAd() to handle success or failure.");
        } else if (this.f11752i == null || this.f11752i.f11667a != AdError.ErrorCode.NO_ERROR) {
            StringBuilder sb = new StringBuilder("Invoking onFailure() callback with errorCode: ");
            sb.append(this.f11752i.f11667a);
            sb.append("[");
            sb.append(this.f11752i.f11668b);
            sb.append("]");
            DtbLog.m38825b();
            this.f11750g.onFailure(this.f11752i);
        } else {
            StringBuilder sb2 = new StringBuilder("Invoking onSuccess() callback for pricepoints: [");
            DTBAdResponse dTBAdResponse = this.f11748e;
            boolean z = false;
            sb2.append(dTBAdResponse.m38966b() == 0 ? null : dTBAdResponse.m38968a(dTBAdResponse.m38965c().get(0)));
            sb2.append("]");
            DtbLog.m38825b();
            this.f11750g.onSuccess(this.f11748e);
            DtbLog.m38825b();
            DtbSharedPreferences.m38797c();
            Long m38772q = DtbSharedPreferences.m38772q();
            long time = new Date().getTime();
            if (m38772q == null || time - m38772q.longValue() > Constants.WEEK_IN_MILLIS) {
                z = true;
            }
            if (z) {
                DtbSharedPreferences.m38788e(time);
            }
            if (!z || (m38980a = m38980a((Object) this.f11750g)) == null) {
                return;
            }
            if (Math.random() > DTBMetricsConfiguration.getSampleRateForWrappingPixel().intValue() / 100.0f) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("expected_package", m38980a.f11763b);
            hashMap.put("wrapper_package", m38980a.f11762a);
            String m38877i = DtbCommonUtils.m38877i(dtbMetrics.f11897c);
            DTBMetricsProcessor m38916a = DTBMetricsProcessor.m38916a();
            m38916a.m38914a(DTBMetricReport.m38920a("alert_sdk_wrapping_v2", hashMap, DTBMetricReport.m38921a((String) null, m38877i)));
            m38916a.m38913b();
        }
    }

    /* renamed from: a */
    public static void m38978a(String[] strArr) {
        if (strArr != null && strArr.length > 0) {
            f11744s = new JSONArray();
            List asList = Arrays.asList(f11745t);
            for (String str : strArr) {
                if (str == null) {
                    DtbLog.m38818d(f11742b, "null custom version supplied");
                } else {
                    if (!asList.contains(str)) {
                        DtbLog.m38823b(f11742b, "custom version \"" + str + "\" is not valid");
                    }
                    f11744s.put(str);
                }
            }
        }
        m38984a();
    }

    /* renamed from: b */
    private static void m38977b() {
        String m38892a = DtbCommonUtils.m38892a("com.mopub.common.MoPub", "SDK_VERSION");
        if (m38892a != null) {
            "MOPUB VERSION:".concat(String.valueOf(m38892a));
        }
        DtbLog.m38825b();
        DtbCommonUtils.APIVersion m38878h = DtbCommonUtils.m38878h(m38892a);
        Integer num = null;
        DtbCommonUtils.APIVersion aPIVersion = new DtbCommonUtils.APIVersion();
        for (int i = 0; i < 4; i++) {
            String str = new String[]{"com.google.android.gms.common.GoogleApiAvailability", "com.google.android.gms.common.GoogleApiAvailabilityLight", "com.google.android.gms.common.GooglePlayServicesUtil", "com.google.android.gms.common.GooglePlayServicesUtilLight"}[i];
            if (num != null) {
                break;
            }
            num = DtbCommonUtils.m38888b(str, "GOOGLE_PLAY_SERVICES_VERSION_CODE");
        }
        Integer num2 = num;
        if (num == null) {
            char c = 'a';
            while (true) {
                char c2 = c;
                num2 = num;
                if (c2 > 'z') {
                    break;
                }
                num = DtbCommonUtils.m38888b("com.google.android.gms.common.zz".concat(String.valueOf(c2)), "GOOGLE_PLAY_SERVICES_VERSION_CODE");
                num2 = num;
                if (num != null) {
                    break;
                }
                c = (char) (c2 + 1);
            }
        }
        if (num2 != null) {
            int intValue = num2.intValue() / 1000;
            aPIVersion.f11847b = (intValue % 1000) / 100;
            aPIVersion.f11846a = intValue / 1000;
            StringBuilder sb = new StringBuilder("Google DFP major version:");
            sb.append(aPIVersion.f11846a);
            sb.append("minor version:");
            sb.append(aPIVersion.f11847b);
        }
        DtbLog.m38825b();
        f11743r = true;
        int i2 = C32601.f11761a[AdRegistration.m39070e().ordinal()];
        if (i2 == 1) {
            if (m38975c()) {
                return;
            }
            if (m38892a != null) {
                m38982a(m38878h);
            } else if (num2 != null) {
                m38976b(aPIVersion);
            }
        } else if (i2 == 2) {
            if (num2 == null) {
                return;
            }
            m38976b(aPIVersion);
        } else if (i2 != 3) {
            if (i2 != 4) {
                return;
            }
            f11741a = f11744s;
        } else if (m38892a != null) {
            m38982a(m38878h);
        }
    }

    /* renamed from: b */
    private static void m38976b(DtbCommonUtils.APIVersion aPIVersion) {
        if (aPIVersion.f11846a > 0) {
            JSONArray jSONArray = new JSONArray();
            f11741a = jSONArray;
            jSONArray.put("1.0");
            if ((aPIVersion.f11846a == 7 && aPIVersion.f11847b >= 8) || aPIVersion.f11846a > 7) {
                f11741a.put("2.0");
            }
            if (aPIVersion.f11846a < 15) {
                return;
            }
            f11741a.put("3.0");
        }
    }

    /* renamed from: c */
    private static boolean m38975c() {
        for (String str : AdRegistration.m39064k()) {
            try {
                Class.forName(str);
                JSONArray jSONArray = new JSONArray();
                f11741a = jSONArray;
                jSONArray.put("1.0");
                f11741a.put("2.0");
                f11741a.put("3.0");
                return true;
            } catch (Exception e) {
            }
        }
        return false;
    }

    /* renamed from: d */
    private void m38974d() {
        DtbLog.m38825b();
        DtbThreadService.m38766a().m38763a(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdRequest$ESWSUfc3XE1Jx_8vxjb7KMw34PM
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdRequest.this.m38971g();
            }
        });
        DtbLog.m38825b();
    }

    /* renamed from: e */
    private void m38973e() {
        Handler handler = this.f11758o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    /* renamed from: f */
    private void m38972f() {
        if (!this.f11755l || this.f11756m <= 0) {
            return;
        }
        m38973e();
        Handler handler = this.f11758o;
        if (handler == null) {
            return;
        }
        handler.postDelayed(this.f11757n, this.f11756m * 1000);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0144, code lost:
        if (r10 != null) goto L40;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void m38971g() {
        /*
            Method dump skipped, instructions count: 1697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdRequest.m38971g():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
        if (com.amazon.device.ads.DtbCommonUtils.m38896a(r0) != false) goto L12;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void m38970h() {
        /*
            r2 = this;
            r0 = r2
            boolean r0 = r0.f11755l
            if (r0 == 0) goto L61
            r0 = r2
            int r0 = r0.f11756m
            if (r0 <= 0) goto L61
            r0 = 0
            r3 = r0
            r0 = r2
            android.content.Context r0 = r0.f11751h
            r4 = r0
            r0 = r4
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L4a
            r0 = r4
            android.app.Activity r0 = (android.app.Activity) r0
            r4 = r0
            r0 = r4
            boolean r0 = r0.isFinishing()
            if (r0 != 0) goto L31
            r0 = r4
            r3 = r0
            r0 = r4
            boolean r0 = com.amazon.device.ads.DtbCommonUtils.m38896a(r0)
            if (r0 == 0) goto L4a
        L31:
            com.amazon.device.ads.DtbLog.m38830a()
            r0 = r2
            r0.m38973e()
            r0 = r2
            android.os.HandlerThread r0 = r0.f11759p
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L49
            r0 = r3
            boolean r0 = r0.quit()
            com.amazon.device.ads.DtbLog.m38825b()
        L49:
            return
        L4a:
            r0 = r3
            if (r0 == 0) goto L5d
            r0 = r3
            boolean r0 = r0.hasWindowFocus()
            if (r0 != 0) goto L5d
            com.amazon.device.ads.DtbLog.m38825b()
            r0 = r2
            r0.m38972f()
            return
        L5d:
            r0 = r2
            r0.m38974d()
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdRequest.m38970h():void");
    }

    /* renamed from: a */
    public final void m38983a(DTBAdCallback dTBAdCallback) {
        this.f11750g = dTBAdCallback;
        if (this.f11746c.size() > 0) {
            if (this.f11753j) {
                DtbLog.m38818d(f11742b, "This ad request object is already used for loading an ad. Please create a new instance to load the Ad.");
                return;
            }
            this.f11753j = true;
            DtbDeviceRegistration.m38853a();
            for (DTBAdSize dTBAdSize : this.f11746c) {
                Map<String, String> map = this.f11749f;
                map.put(dTBAdSize.f11772a + "x" + dTBAdSize.f11773b, dTBAdSize.f11775d);
            }
            try {
                if (this.f11759p == null && this.f11755l && this.f11756m > 0) {
                    HandlerThread handlerThread = new HandlerThread("DtbHandlerThread");
                    this.f11759p = handlerThread;
                    handlerThread.start();
                    this.f11758o = new Handler(this.f11759p.getLooper());
                }
                m38974d();
                return;
            } catch (Exception e) {
                DtbLog.m38818d(f11742b, "Unknown exception occured in DTB ad call.");
                return;
            }
        }
        throw new IllegalArgumentException("Please set atleast one ad size in the request.");
    }

    /* renamed from: a */
    public final void m38979a(DTBAdSize... dTBAdSizeArr) throws IllegalArgumentException {
        this.f11746c.clear();
        String str = f11742b;
        DtbLog.m38827a(str, "Setting 1 AdSize(s) to the ad request.");
        for (int i = 0; i <= 0; i++) {
            DTBAdSize dTBAdSize = dTBAdSizeArr[0];
            if (dTBAdSize == null) {
                throw new IllegalArgumentException("DTBAdSize cannot be null.");
            }
            this.f11746c.add(dTBAdSize);
        }
    }
}
