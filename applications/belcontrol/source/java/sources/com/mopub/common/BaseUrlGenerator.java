package com.mopub.common;

import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import com.mopub.network.Networking;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/BaseUrlGenerator.class */
public abstract class BaseUrlGenerator {

    /* renamed from: c */
    public static AppEngineInfo f4150c;

    /* renamed from: d */
    public static String f4151d;

    /* renamed from: a */
    public StringBuilder f4152a;

    /* renamed from: b */
    public boolean f4153b;

    public static void setAppEngineInfo(AppEngineInfo appEngineInfo) {
        f4150c = appEngineInfo;
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        f4151d = str;
    }

    /* renamed from: a */
    public void m4029a(String str, Boolean bool) {
        if (bool == null) {
            return;
        }
        this.f4152a.append(m4023g());
        this.f4152a.append(str);
        this.f4152a.append("=");
        this.f4152a.append(bool.booleanValue() ? "1" : "0");
    }

    /* renamed from: b */
    public void m4028b(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f4152a.append(m4023g());
        this.f4152a.append(str);
        this.f4152a.append("=");
        this.f4152a.append(Uri.encode(str2));
    }

    /* renamed from: c */
    public void m4027c() {
        m4028b("ifa", PlayServicesUrlRewriter.IFA_TEMPLATE);
        m4028b("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
        m4028b("tas", PlayServicesUrlRewriter.TAS_TEMPLATE);
        m4028b("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
    }

    /* renamed from: d */
    public void m4026d() {
        AppEngineInfo appEngineInfo = f4150c;
        if (appEngineInfo != null) {
            m4028b("e_name", appEngineInfo.f4147a);
            m4028b("e_ver", appEngineInfo.f4148b);
        }
    }

    /* renamed from: e */
    public void m4025e() {
        m4028b("w_ver", f4151d);
    }

    /* renamed from: f */
    public String m4024f() {
        return this.f4152a.toString();
    }

    /* renamed from: g */
    public final String m4023g() {
        if (this.f4153b) {
            this.f4153b = false;
            return "?";
        }
        return "&";
    }

    public abstract String generateUrlString(String str);

    /* renamed from: h */
    public void m4022h(String str, String str2) {
        StringBuilder sb = new StringBuilder(Networking.getScheme());
        sb.append("://");
        sb.append(str);
        sb.append(str2);
        this.f4152a = sb;
        this.f4153b = true;
    }

    /* renamed from: i */
    public void m4021i(String str) {
        m4028b("v", str);
    }

    /* renamed from: j */
    public void m4020j(String str) {
        m4028b("av", str);
    }

    /* renamed from: k */
    public void m4019k(Point point, Point point2, WindowInsets windowInsets) {
        StringBuilder sb;
        int i = 0;
        int i2 = point2 != null ? point2.x : 0;
        if (point2 != null) {
            i = point2.y;
        }
        if (Build.VERSION.SDK_INT < 28 || windowInsets == null || windowInsets.getDisplayCutout() == null) {
            m4028b("cw", "" + i2);
            sb = new StringBuilder();
            sb.append("");
            sb.append(i);
        } else {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            int i3 = point.x;
            int safeInsetLeft = displayCutout.getSafeInsetLeft();
            int safeInsetRight = displayCutout.getSafeInsetRight();
            int i4 = point.y;
            int safeInsetTop = displayCutout.getSafeInsetTop();
            int safeInsetBottom = displayCutout.getSafeInsetBottom();
            m4028b("cw", "" + Math.min((i3 - safeInsetLeft) - safeInsetRight, i2));
            sb = new StringBuilder();
            sb.append("");
            sb.append(Math.min((i4 - safeInsetTop) - safeInsetBottom, i));
        }
        m4028b("ch", sb.toString());
        m4028b("w", "" + point.x);
        m4028b("h", "" + point.y);
    }

    /* renamed from: l */
    public void m4018l(String... strArr) {
        StringBuilder sb = new StringBuilder();
        if (strArr == null || strArr.length < 1) {
            return;
        }
        for (int i = 0; i < strArr.length - 1; i++) {
            sb.append(strArr[i]);
            sb.append(",");
        }
        sb.append(strArr[strArr.length - 1]);
        m4028b("dn", sb.toString());
    }
}
