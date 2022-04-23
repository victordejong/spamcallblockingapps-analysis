package com.mopub.common;

import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import com.explorestack.iab.mraid.h;
import com.mopub.network.Networking;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/BaseUrlGenerator.class */
public abstract class BaseUrlGenerator {

    /* renamed from: c  reason: collision with root package name */
    private static AppEngineInfo f33780c;

    /* renamed from: d  reason: collision with root package name */
    private static String f33781d;

    /* renamed from: a  reason: collision with root package name */
    private StringBuilder f33782a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f33783b;

    private String a() {
        if (!this.f33783b) {
            return "&";
        }
        this.f33783b = false;
        return "?";
    }

    public static void setAppEngineInfo(AppEngineInfo appEngineInfo) {
        f33780c = appEngineInfo;
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        f33781d = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Point point, Point point2, WindowInsets windowInsets) {
        int i = 0;
        int i2 = point2 != null ? point2.x : 0;
        if (point2 != null) {
            i = point2.y;
        }
        if (Build.VERSION.SDK_INT < 28 || windowInsets == null || windowInsets.getDisplayCutout() == null) {
            b("cw", String.valueOf(i2));
            b("ch", String.valueOf(i));
        } else {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            int i3 = point.x;
            int safeInsetLeft = displayCutout.getSafeInsetLeft();
            int safeInsetRight = displayCutout.getSafeInsetRight();
            int i4 = point.y;
            int safeInsetTop = displayCutout.getSafeInsetTop();
            int safeInsetBottom = displayCutout.getSafeInsetBottom();
            StringBuilder sb = new StringBuilder();
            sb.append(Math.min((i3 - safeInsetLeft) - safeInsetRight, i2));
            b("cw", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Math.min((i4 - safeInsetTop) - safeInsetBottom, i));
            b("ch", sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(point.x);
        b("w", sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(point.y);
        b(h.f19142a, sb4.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str) {
        b("v", str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str, Boolean bool) {
        if (bool != null) {
            this.f33782a.append(a());
            this.f33782a.append(str);
            this.f33782a.append("=");
            this.f33782a.append(bool.booleanValue() ? "1" : "0");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str, String str2) {
        StringBuilder sb = new StringBuilder(Networking.getScheme());
        sb.append("://");
        sb.append(str);
        sb.append(str2);
        this.f33782a = sb;
        this.f33783b = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 2; i++) {
            sb.append(strArr[i]);
            sb.append(",");
        }
        sb.append(strArr[2]);
        b("dn", sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b() {
        return this.f33782a.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(String str) {
        b("av", str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            this.f33782a.append(a());
            this.f33782a.append(str);
            this.f33782a.append("=");
            this.f33782a.append(Uri.encode(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        b("ifa", PlayServicesUrlRewriter.IFA_TEMPLATE);
        b("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
        b("tas", PlayServicesUrlRewriter.TAS_TEMPLATE);
        b("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        AppEngineInfo appEngineInfo = f33780c;
        if (appEngineInfo != null) {
            b("e_name", appEngineInfo.f33778a);
            b("e_ver", appEngineInfo.f33779b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        b("w_ver", f33781d);
    }

    public abstract String generateUrlString(String str);
}
