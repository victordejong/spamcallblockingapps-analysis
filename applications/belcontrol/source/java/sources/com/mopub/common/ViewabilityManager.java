package com.mopub.common;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityManager.class */
public class ViewabilityManager {

    /* renamed from: b */
    public static final ag1 f4328b = new ag1();

    /* renamed from: c */
    public static boolean f4329c = true;

    /* renamed from: a */
    public d41 f4330a;

    /* renamed from: com.mopub.common.ViewabilityManager$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityManager$b.class */
    public static class C1035b {

        /* renamed from: a */
        public static ViewabilityManager f4331a = new ViewabilityManager();
    }

    private ViewabilityManager() {
    }

    /* renamed from: a */
    public static void m3906a() {
        f4329c = false;
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "OMSDK Viewability has been disabled");
    }

    public static void activate(Context context) {
        Preconditions.checkUiThread("activate() must be called on the UI thread.");
        Preconditions.checkNotNull(context);
        m3905b().m3901f(context);
    }

    /* renamed from: b */
    public static ViewabilityManager m3905b() {
        return C1035b.f4331a;
    }

    /* renamed from: c */
    public static String m3904c() {
        return f4328b.m7214a();
    }

    /* renamed from: d */
    public static String m3903d() {
        Preconditions.checkUiThread("getOmidVersion() must be called on the UI thread.");
        return m31.b();
    }

    /* renamed from: e */
    public static d41 m3902e() {
        return m3905b().f4330a;
    }

    /* renamed from: g */
    public static String m3900g(String str, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        if (!isViewabilityEnabled()) {
            return str;
        }
        String str3 = "<script src=\"" + str2 + "\"></script>";
        try {
            String a = n31.a("cfc10ccaf0724c4cbc6122cf51421f03", str);
            String replace = a.replace("<script type=\"text/javascript\">cfc10ccaf0724c4cbc6122cf51421f03</script>", str3);
            if (!replace.equals(a)) {
                return replace;
            }
        } catch (IllegalArgumentException | IllegalStateException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Failed to inject script URL into HTML. ", e);
        }
        return str;
    }

    /* renamed from: h */
    public static boolean m3899h() {
        Preconditions.checkUiThread("isActive() must be called on the UI thread.");
        return m3905b().m3898i();
    }

    public static String injectScriptContentIntoHtml(String str) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(str);
        if (!isViewabilityEnabled()) {
            return str;
        }
        try {
            return n31.a(m3904c(), str);
        } catch (IllegalArgumentException | IllegalStateException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Failed to inject OM script into HTML. ", e);
            return str;
        }
    }

    public static String injectVerificationUrlsIntoHtml(String str, Set<ViewabilityVendor> set) {
        Preconditions.checkNotNull(str);
        String str2 = str;
        if (set != null) {
            if (!TextUtils.isEmpty(str)) {
                Iterator<ViewabilityVendor> it = set.iterator();
                while (true) {
                    str2 = str;
                    if (!it.hasNext()) {
                        break;
                    }
                    ViewabilityVendor next = it.next();
                    if (next != null) {
                        str = m3900g(str, next.getJavascriptResourceUrl().toString());
                    }
                }
            } else {
                str2 = str;
            }
        }
        return str2;
    }

    public static boolean isViewabilityEnabled() {
        return f4329c;
    }

    public static void setViewabilityEnabled(boolean z) {
        f4329c = z;
    }

    /* renamed from: f */
    public final void m3901f(Context context) {
        if (this.f4330a != null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ViewabilityManager already initialized.");
            return;
        }
        try {
            m31.a(context.getApplicationContext());
            this.f4330a = d41.m2823a("mopub", "5.15.0");
        } catch (IllegalArgumentException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createPartner() ", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        if (r6.f4330a != null) goto L10;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3898i() {
        /*
            r6 = this;
            r0 = 1
            r7 = r0
            boolean r0 = com.mopub.common.ViewabilityManager.f4329c     // Catch: java.lang.Exception -> L1e
            if (r0 == 0) goto L1a
            boolean r0 = m31.c()     // Catch: java.lang.Exception -> L1e
            if (r0 == 0) goto L1a
            r0 = r6
            d41 r0 = r0.f4330a     // Catch: java.lang.Exception -> L1e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L1a
            goto L1c
        L1a:
            r0 = 0
            r7 = r0
        L1c:
            r0 = r7
            return r0
        L1e:
            r8 = move-exception
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "isActive() "
            r2[r3] = r4
            r2 = r1
            r3 = 1
            r4 = r8
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.ViewabilityManager.m3898i():boolean");
    }
}
