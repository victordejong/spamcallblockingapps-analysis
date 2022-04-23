package com.mopub.common;

import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.C2052w;
import com.flurry.sdk.C2850av;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import com.mopub.network.Networking;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/BaseUrlGenerator.class */
public abstract class BaseUrlGenerator {

    /* renamed from: c */
    public static AppEngineInfo f7993c;

    /* renamed from: d */
    public static String f7994d;

    /* renamed from: a */
    public StringBuilder f7995a;

    /* renamed from: b */
    public boolean f7996b;

    public static void setAppEngineInfo(@NonNull AppEngineInfo appEngineInfo) {
        f7993c = appEngineInfo;
    }

    public static void setWrapperVersion(@NonNull String str) {
        Preconditions.checkNotNull(str);
        f7994d = str;
    }

    /* renamed from: a */
    public void m30872a() {
        m30868a("udid", "mp_tmpl_advertising_id");
        m30868a("dnt", "mp_tmpl_do_not_track");
        m30868a("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
    }

    /* renamed from: a */
    public void m30871a(@NonNull Point point, @Nullable Point point2, @Nullable WindowInsets windowInsets) {
        int i = 0;
        int i2 = point2 != null ? point2.x : 0;
        if (point2 != null) {
            i = point2.y;
        }
        if (Build.VERSION.SDK_INT < 28 || windowInsets == null || windowInsets.getDisplayCutout() == null) {
            m30868a("cw", "" + i2);
            m30868a("ch", "" + i);
        } else {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            int i3 = point.x;
            int safeInsetLeft = displayCutout.getSafeInsetLeft();
            int safeInsetRight = displayCutout.getSafeInsetRight();
            int i4 = point.y;
            int safeInsetTop = displayCutout.getSafeInsetTop();
            int safeInsetBottom = displayCutout.getSafeInsetBottom();
            m30868a("cw", "" + Math.min((i3 - safeInsetLeft) - safeInsetRight, i2));
            m30868a("ch", "" + Math.min((i4 - safeInsetTop) - safeInsetBottom, i));
        }
        m30868a(C2052w.f2268l, "" + point.x);
        m30868a("h", "" + point.y);
    }

    /* renamed from: a */
    public void m30870a(String str) {
        m30868a("v", str);
    }

    /* renamed from: a */
    public void m30869a(String str, Boolean bool) {
        if (bool != null) {
            this.f7995a.append(m30860e());
            this.f7995a.append(str);
            this.f7995a.append("=");
            this.f7995a.append(bool.booleanValue() ? "1" : "0");
        }
    }

    /* renamed from: a */
    public void m30868a(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            this.f7995a.append(m30860e());
            this.f7995a.append(str);
            this.f7995a.append("=");
            this.f7995a.append(Uri.encode(str2));
        }
    }

    /* renamed from: a */
    public void m30867a(boolean z) {
        m30868a("android_perms_ext_storage", z ? "1" : "0");
    }

    /* renamed from: a */
    public void m30866a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        if (strArr != null && strArr.length >= 1) {
            for (int i = 0; i < strArr.length - 1; i++) {
                sb.append(strArr[i]);
                sb.append(",");
            }
            sb.append(strArr[strArr.length - 1]);
            m30868a("dn", sb.toString());
        }
    }

    /* renamed from: b */
    public void m30865b() {
        AppEngineInfo appEngineInfo = f7993c;
        if (appEngineInfo != null) {
            m30868a("e_name", appEngineInfo.f7991a);
            m30868a("e_ver", appEngineInfo.f7992b);
        }
    }

    /* renamed from: b */
    public void m30864b(String str) {
        m30868a(C2850av.f4098k, str);
    }

    /* renamed from: b */
    public void m30863b(String str, String str2) {
        StringBuilder sb = new StringBuilder(Networking.getScheme());
        sb.append("://");
        sb.append(str);
        sb.append(str2);
        this.f7995a = sb;
        this.f7996b = true;
    }

    /* renamed from: c */
    public void m30862c() {
        m30868a("w_ver", f7994d);
    }

    /* renamed from: d */
    public String m30861d() {
        return this.f7995a.toString();
    }

    /* renamed from: e */
    public final String m30860e() {
        if (!this.f7996b) {
            return PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR;
        }
        this.f7996b = false;
        return "?";
    }

    public abstract String generateUrlString(String str);
}
