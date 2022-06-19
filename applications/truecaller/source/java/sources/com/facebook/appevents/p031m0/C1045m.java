package com.facebook.appevents.p031m0;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.amazon.device.ads.DtbConstants;
import com.facebook.AccessToken;
import com.facebook.appevents.C1096x;
import com.facebook.appevents.EnumC1095w;
import com.facebook.internal.C1143k0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.facebook.internal.p044w0.C1229b;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import p193e.p1538j.EnumC23248n0;
import s1.z.c.l;
@Metadata(d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0016\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J,\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u0015\u001a\u00020\u0010H\u0002J$\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/internal/SessionLogger;", "", "()V", "INACTIVE_SECONDS_QUANTA", "", "PACKAGE_CHECKSUM", "", "TAG", "computePackageChecksum", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "getQuantaIndex", "", "timeBetweenSessions", "", "logActivateApp", "", "activityName", "sourceApplicationInfo", "Lcom/facebook/appevents/internal/SourceApplicationInfo;", "appId", "logClockSkewEvent", "logDeactivateApp", "sessionInfo", "Lcom/facebook/appevents/internal/SessionInfo;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.m0.m */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/m.class */
public final class C1045m {

    /* renamed from: b */
    public static final String f2885b = "com.facebook.appevents.m0.m";

    /* renamed from: a */
    public static final C1045m f2884a = new C1045m();

    /* renamed from: c */
    public static final long[] f2886c = {300000, 900000, 1800000, DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL, 21600000, 43200000, DtbConstants.SIS_CHECKIN_INTERVAL, DtbConstants.CONFIG_CHECKIN_INTERVAL, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    /* renamed from: b */
    public static final void m41857b(String str, C1046n c1046n, String str2, Context context) {
        if (C1220a.m41623b(C1045m.class)) {
            return;
        }
        try {
            l.e(str, "activityName");
            l.e(context, AnalyticsConstants.CONTEXT);
            Bundle bundle = new Bundle();
            bundle.putString("fb_mobile_launch_source", "Unclassified");
            bundle.putString("fb_mobile_pckg_fp", f2884a.m41858a(context));
            bundle.putString("fb_mobile_app_cert_hash", C1229b.m41618a(context));
            l.e(str, "activityName");
            C1096x c1096x = new C1096x(str, str2, (AccessToken) null);
            l.e(c1096x, "loggerImpl");
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (C23228f0.m7352c()) {
                c1096x.m41763e("fb_mobile_activate_app", bundle);
            }
            if (C1096x.f3028c.m41758b() == EnumC1095w.EXPLICIT_ONLY) {
                return;
            }
            c1096x.m41764d();
        } catch (Throwable th) {
            C1220a.m41624a(th, C1045m.class);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x014a, code lost:
        if (r0 == null) goto L54;
     */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m41855d(java.lang.String r7, com.facebook.appevents.p031m0.C1044l r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p031m0.C1045m.m41855d(java.lang.String, com.facebook.appevents.m0.l, java.lang.String):void");
    }

    /* renamed from: a */
    public final String m41858a(Context context) {
        String str;
        PackageManager packageManager;
        String j;
        SharedPreferences sharedPreferences;
        String string;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            l.e(context, AnalyticsConstants.CONTEXT);
            try {
                packageManager = context.getPackageManager();
                j = l.j("PCKGCHKSUM;", packageManager.getPackageInfo(context.getPackageName(), 0).versionName);
                sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
                string = sharedPreferences.getString(j, null);
            } catch (Exception e) {
                str = null;
            }
            if (string != null && string.length() == 32) {
                return string;
            }
            C1042k c1042k = C1042k.f2871a;
            String m41860b = C1042k.m41860b(context, null);
            str = m41860b != null ? m41860b : C1042k.m41861a(packageManager.getApplicationInfo(context.getPackageName(), 0).sourceDir);
            sharedPreferences.edit().putString(j, str).apply();
            return str;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: c */
    public final void m41856c() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1143k0.C1144a c1144a = C1143k0.f3139e;
            EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
            String str = f2885b;
            l.c(str);
            c1144a.m41729b(enumC23248n0, str, "Clock skew detected");
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
