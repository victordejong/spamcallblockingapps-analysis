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

    /* renamed from: a  reason: collision with root package name */
    static JSONArray f6398a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f6399b = "DTBAdRequest";
    private static boolean r = false;
    private static JSONArray s;
    private static final String[] t = {"1.0", "2.0", "3.0"};
    private DTBAdResponse e;
    private DTBAdCallback g;
    private Context h;
    private Handler o;
    private HandlerThread p;

    /* renamed from: c  reason: collision with root package name */
    private final List<DTBAdSize> f6400c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f6401d = new HashMap();
    private final Map<String, String> f = new HashMap();
    private volatile AdError i = null;
    private boolean j = false;
    private boolean k = true;
    private boolean l = false;
    private int m = 0;
    private final Runnable n = new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdRequest$fxfnwlyFNqpOeOdnB8lBE0ZXNK4
        @Override // java.lang.Runnable
        public final void run() {
            DTBAdRequest.this.h();
        }
    };
    private String q = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazon.device.ads.DTBAdRequest$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdRequest$1.class */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6402a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MRAIDPolicy.values().length];
            f6402a = iArr;
            try {
                iArr[MRAIDPolicy.AUTO_DETECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6402a[MRAIDPolicy.DFP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6402a[MRAIDPolicy.MOPUB.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6402a[MRAIDPolicy.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6402a[MRAIDPolicy.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdRequest$WrapperReport.class */
    public class WrapperReport {

        /* renamed from: a  reason: collision with root package name */
        String f6403a;

        /* renamed from: b  reason: collision with root package name */
        String f6404b;

        WrapperReport() {
        }
    }

    public DTBAdRequest() {
        if (!AdRegistration.c()) {
            DtbLog.a("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
            return;
        }
        if (this.h == null) {
            this.h = AdRegistration.d();
        }
        if (!r) {
            b();
        }
    }

    public DTBAdRequest(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("unable to initialize ad request with null app context");
        } else if (!AdRegistration.c()) {
            DtbLog.a("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
        } else {
            if (AdRegistration.d() == null) {
                AdRegistration.a(context);
            }
            this.h = context;
            if (!r) {
                b();
            }
        }
    }

    private WrapperReport a(Object obj) {
        WrapperReport wrapperReport;
        Context applicationContext = AdRegistration.d().getApplicationContext();
        try {
            String name = obj.getClass().getPackage().getName();
            String str = applicationContext.getApplicationInfo().packageName;
            StringTokenizer stringTokenizer = new StringTokenizer(name, ".");
            StringTokenizer stringTokenizer2 = new StringTokenizer(str, ".");
            if (stringTokenizer.countTokens() < 2 || stringTokenizer2.countTokens() < 2) {
                wrapperReport = new WrapperReport();
                wrapperReport.f6404b = str;
                wrapperReport.f6403a = name;
            } else {
                int i = 0;
                while (true) {
                    wrapperReport = null;
                    if (i >= 2) {
                        break;
                    } else if (!stringTokenizer.nextToken().equals(stringTokenizer2.nextToken())) {
                        wrapperReport = new WrapperReport();
                        wrapperReport.f6404b = name;
                        wrapperReport.f6403a = str;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        f6398a = null;
        r = false;
    }

    private static void a(DtbCommonUtils.APIVersion aPIVersion) {
        if (aPIVersion.f6461a > 0) {
            JSONArray jSONArray = new JSONArray();
            f6398a = jSONArray;
            jSONArray.put("1.0");
            if ((aPIVersion.f6461a >= 3 && aPIVersion.f6462b >= 3) || aPIVersion.f6461a > 3) {
                f6398a.put("2.0");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DtbMetrics dtbMetrics) {
        WrapperReport a2;
        if (this.g == null) {
            DtbLog.c("No callback -DTBAdCallback- provided to loadAd() to handle success or failure.");
        } else if (this.i == null || this.i.f6365a != AdError.ErrorCode.NO_ERROR) {
            StringBuilder sb = new StringBuilder("Invoking onFailure() callback with errorCode: ");
            sb.append(this.i.f6365a);
            sb.append("[");
            sb.append(this.i.f6366b);
            sb.append("]");
            DtbLog.b();
            this.g.onFailure(this.i);
        } else {
            StringBuilder sb2 = new StringBuilder("Invoking onSuccess() callback for pricepoints: [");
            DTBAdResponse dTBAdResponse = this.e;
            boolean z = false;
            sb2.append(dTBAdResponse.b() == 0 ? null : dTBAdResponse.a(dTBAdResponse.c().get(0)));
            sb2.append("]");
            DtbLog.b();
            this.g.onSuccess(this.e);
            DtbLog.b();
            DtbSharedPreferences.c();
            Long q = DtbSharedPreferences.q();
            long time = new Date().getTime();
            if (q == null || time - q.longValue() > Constants.WEEK_IN_MILLIS) {
                z = true;
            }
            if (z) {
                DtbSharedPreferences.e(time);
            }
            if (z && (a2 = a((Object) this.g)) != null) {
                if (Math.random() <= DTBMetricsConfiguration.getSampleRateForWrappingPixel().intValue() / 100.0f) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("expected_package", a2.f6404b);
                    hashMap.put("wrapper_package", a2.f6403a);
                    String i = DtbCommonUtils.i(dtbMetrics.f6496c);
                    DTBMetricsProcessor a3 = DTBMetricsProcessor.a();
                    a3.a(DTBMetricReport.a("alert_sdk_wrapping_v2", hashMap, DTBMetricReport.a((String) null, i)));
                    a3.b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String[] strArr) {
        if (strArr != null && strArr.length > 0) {
            s = new JSONArray();
            List asList = Arrays.asList(t);
            for (String str : strArr) {
                if (str == null) {
                    DtbLog.d(f6399b, "null custom version supplied");
                } else {
                    if (!asList.contains(str)) {
                        DtbLog.b(f6399b, "custom version \"" + str + "\" is not valid");
                    }
                    s.put(str);
                }
            }
        }
        a();
    }

    private static void b() {
        String a2 = DtbCommonUtils.a("com.mopub.common.MoPub", "SDK_VERSION");
        if (a2 != null) {
            "MOPUB VERSION:".concat(String.valueOf(a2));
        }
        DtbLog.b();
        DtbCommonUtils.APIVersion h = DtbCommonUtils.h(a2);
        Integer num = null;
        DtbCommonUtils.APIVersion aPIVersion = new DtbCommonUtils.APIVersion();
        for (int i = 0; i < 4; i++) {
            String str = new String[]{"com.google.android.gms.common.GoogleApiAvailability", "com.google.android.gms.common.GoogleApiAvailabilityLight", "com.google.android.gms.common.GooglePlayServicesUtil", "com.google.android.gms.common.GooglePlayServicesUtilLight"}[i];
            if (num != null) {
                break;
            }
            num = DtbCommonUtils.b(str, "GOOGLE_PLAY_SERVICES_VERSION_CODE");
        }
        num = num;
        if (num == null) {
            for (char c2 = 'a'; c2 <= 'z'; c2 = (char) (c2 + 1)) {
                num = DtbCommonUtils.b("com.google.android.gms.common.zz".concat(String.valueOf(c2)), "GOOGLE_PLAY_SERVICES_VERSION_CODE");
                num = num;
                if (num != null) {
                    break;
                }
            }
        }
        if (num != null) {
            int intValue = num.intValue() / 1000;
            aPIVersion.f6462b = (intValue % 1000) / 100;
            aPIVersion.f6461a = intValue / 1000;
            StringBuilder sb = new StringBuilder("Google DFP major version:");
            sb.append(aPIVersion.f6461a);
            sb.append("minor version:");
            sb.append(aPIVersion.f6462b);
        }
        DtbLog.b();
        r = true;
        int i2 = AnonymousClass1.f6402a[AdRegistration.e().ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 == 4) {
                        f6398a = s;
                    }
                } else if (a2 != null) {
                    a(h);
                }
            } else if (num != null) {
                b(aPIVersion);
            }
        } else if (!c()) {
            if (a2 != null) {
                a(h);
            } else if (num != null) {
                b(aPIVersion);
            }
        }
    }

    private static void b(DtbCommonUtils.APIVersion aPIVersion) {
        if (aPIVersion.f6461a > 0) {
            JSONArray jSONArray = new JSONArray();
            f6398a = jSONArray;
            jSONArray.put("1.0");
            if ((aPIVersion.f6461a == 7 && aPIVersion.f6462b >= 8) || aPIVersion.f6461a > 7) {
                f6398a.put("2.0");
            }
            if (aPIVersion.f6461a >= 15) {
                f6398a.put("3.0");
            }
        }
    }

    private static boolean c() {
        for (String str : AdRegistration.k()) {
            try {
                Class.forName(str);
                JSONArray jSONArray = new JSONArray();
                f6398a = jSONArray;
                jSONArray.put("1.0");
                f6398a.put("2.0");
                f6398a.put("3.0");
                return true;
            } catch (Exception e) {
            }
        }
        return false;
    }

    private void d() {
        DtbLog.b();
        DtbThreadService.a().a(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdRequest$ESWSUfc3XE1Jx_8vxjb7KMw34PM
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdRequest.this.g();
            }
        });
        DtbLog.b();
    }

    private void e() {
        Handler handler = this.o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    private void f() {
        if (this.l && this.m > 0) {
            e();
            Handler handler = this.o;
            if (handler != null) {
                handler.postDelayed(this.n, this.m * 1000);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0144, code lost:
        if (r10 != null) goto L_0x0147;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void g() {
        /*
            Method dump skipped, instructions count: 1697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdRequest.g():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
        if (com.amazon.device.ads.DtbCommonUtils.a(r0) != false) goto L_0x0031;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void h() {
        /*
            r2 = this;
            r0 = r2
            boolean r0 = r0.l
            if (r0 == 0) goto L_0x0061
            r0 = r2
            int r0 = r0.m
            if (r0 <= 0) goto L_0x0061
            r0 = 0
            r3 = r0
            r0 = r2
            android.content.Context r0 = r0.h
            r4 = r0
            r0 = r4
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x004a
            r0 = r4
            android.app.Activity r0 = (android.app.Activity) r0
            r4 = r0
            r0 = r4
            boolean r0 = r0.isFinishing()
            if (r0 != 0) goto L_0x0031
            r0 = r4
            r3 = r0
            r0 = r4
            boolean r0 = com.amazon.device.ads.DtbCommonUtils.a(r0)
            if (r0 == 0) goto L_0x004a
        L_0x0031:
            com.amazon.device.ads.DtbLog.a()
            r0 = r2
            r0.e()
            r0 = r2
            android.os.HandlerThread r0 = r0.p
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0049
            r0 = r3
            boolean r0 = r0.quit()
            com.amazon.device.ads.DtbLog.b()
        L_0x0049:
            return
        L_0x004a:
            r0 = r3
            if (r0 == 0) goto L_0x005d
            r0 = r3
            boolean r0 = r0.hasWindowFocus()
            if (r0 != 0) goto L_0x005d
            com.amazon.device.ads.DtbLog.b()
            r0 = r2
            r0.f()
            return
        L_0x005d:
            r0 = r2
            r0.d()
        L_0x0061:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdRequest.h():void");
    }

    public final void a(DTBAdCallback dTBAdCallback) {
        this.g = dTBAdCallback;
        if (this.f6400c.size() <= 0) {
            throw new IllegalArgumentException("Please set atleast one ad size in the request.");
        } else if (this.j) {
            DtbLog.d(f6399b, "This ad request object is already used for loading an ad. Please create a new instance to load the Ad.");
        } else {
            this.j = true;
            DtbDeviceRegistration.a();
            for (DTBAdSize dTBAdSize : this.f6400c) {
                Map<String, String> map = this.f;
                map.put(dTBAdSize.f6410a + "x" + dTBAdSize.f6411b, dTBAdSize.f6413d);
            }
            try {
                if (this.p == null && this.l && this.m > 0) {
                    HandlerThread handlerThread = new HandlerThread("DtbHandlerThread");
                    this.p = handlerThread;
                    handlerThread.start();
                    this.o = new Handler(this.p.getLooper());
                }
                d();
            } catch (Exception e) {
                DtbLog.d(f6399b, "Unknown exception occured in DTB ad call.");
            }
        }
    }

    public final void a(DTBAdSize... dTBAdSizeArr) throws IllegalArgumentException {
        this.f6400c.clear();
        String str = f6399b;
        DtbLog.a(str, "Setting 1 AdSize(s) to the ad request.");
        for (int i = 0; i <= 0; i++) {
            DTBAdSize dTBAdSize = dTBAdSizeArr[0];
            if (dTBAdSize != null) {
                this.f6400c.add(dTBAdSize);
            } else {
                throw new IllegalArgumentException("DTBAdSize cannot be null.");
            }
        }
    }
}
