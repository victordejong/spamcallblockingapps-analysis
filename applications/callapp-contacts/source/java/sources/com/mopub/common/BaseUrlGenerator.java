package com.mopub.common;

import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import com.explorestack.iab.mraid.C9568h;
import com.mopub.network.Networking;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/BaseUrlGenerator.class */
public abstract class BaseUrlGenerator {

    /* renamed from: c */
    private static AppEngineInfo f58655c;

    /* renamed from: d */
    private static String f58656d;

    /* renamed from: a */
    private StringBuilder f58657a;

    /* renamed from: b */
    private boolean f58658b;

    /* renamed from: a */
    private String m6791a() {
        if (this.f58658b) {
            this.f58658b = false;
            return "?";
        }
        return "&";
    }

    public static void setAppEngineInfo(AppEngineInfo appEngineInfo) {
        f58655c = appEngineInfo;
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        f58656d = str;
    }

    /* renamed from: a */
    public final void m6790a(Point point, Point point2, WindowInsets windowInsets) {
        int i = 0;
        int i2 = point2 != null ? point2.x : 0;
        if (point2 != null) {
            i = point2.y;
        }
        if (Build.VERSION.SDK_INT < 28 || windowInsets == null || windowInsets.getDisplayCutout() == null) {
            m6783b("cw", String.valueOf(i2));
            m6783b("ch", String.valueOf(i));
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
            m6783b("cw", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Math.min((i4 - safeInsetTop) - safeInsetBottom, i));
            m6783b("ch", sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(point.x);
        m6783b("w", sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(point.y);
        m6783b(C9568h.f32519a, sb4.toString());
    }

    /* renamed from: a */
    public final void m6789a(String str) {
        m6783b("v", str);
    }

    /* renamed from: a */
    public final void m6788a(String str, Boolean bool) {
        if (bool == null) {
            return;
        }
        this.f58657a.append(m6791a());
        this.f58657a.append(str);
        this.f58657a.append("=");
        this.f58657a.append(bool.booleanValue() ? "1" : "0");
    }

    /* renamed from: a */
    public final void m6787a(String str, String str2) {
        StringBuilder sb = new StringBuilder(Networking.getScheme());
        sb.append("://");
        sb.append(str);
        sb.append(str2);
        this.f58657a = sb;
        this.f58658b = true;
    }

    /* renamed from: a */
    public final void m6786a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 2; i++) {
            sb.append(strArr[i]);
            sb.append(",");
        }
        sb.append(strArr[2]);
        m6783b("dn", sb.toString());
    }

    /* renamed from: b */
    public final String m6785b() {
        return this.f58657a.toString();
    }

    /* renamed from: b */
    public final void m6784b(String str) {
        m6783b("av", str);
    }

    /* renamed from: b */
    public final void m6783b(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f58657a.append(m6791a());
        this.f58657a.append(str);
        this.f58657a.append("=");
        this.f58657a.append(Uri.encode(str2));
    }

    /* renamed from: c */
    public final void m6782c() {
        m6783b("ifa", PlayServicesUrlRewriter.IFA_TEMPLATE);
        m6783b("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
        m6783b("tas", PlayServicesUrlRewriter.TAS_TEMPLATE);
        m6783b("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
    }

    /* renamed from: d */
    public final void m6781d() {
        AppEngineInfo appEngineInfo = f58655c;
        if (appEngineInfo != null) {
            m6783b("e_name", appEngineInfo.f58653a);
            m6783b("e_ver", appEngineInfo.f58654b);
        }
    }

    /* renamed from: e */
    public final void m6780e() {
        m6783b("w_ver", f58656d);
    }

    public abstract String generateUrlString(String str);
}
