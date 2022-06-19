package com.mopub.common;

import android.net.Uri;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mopub.network.Networking;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/BaseUrlGenerator.class */
public abstract class BaseUrlGenerator {

    /* renamed from: c */
    public static AppEngineInfo f8413c;

    /* renamed from: d */
    public static String f8414d;

    /* renamed from: a */
    public StringBuilder f8415a;

    /* renamed from: b */
    public boolean f8416b;

    public static void setAppEngineInfo(AppEngineInfo appEngineInfo) {
        f8413c = appEngineInfo;
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        f8414d = str;
    }

    /* renamed from: a */
    public void m36338a(String str, Boolean bool) {
        String str2;
        if (bool == null) {
            return;
        }
        StringBuilder sb = this.f8415a;
        if (this.f8416b) {
            this.f8416b = false;
            str2 = "?";
        } else {
            str2 = ContainerUtils.FIELD_DELIMITER;
        }
        sb.append(str2);
        this.f8415a.append(str);
        this.f8415a.append(ContainerUtils.KEY_VALUE_DELIMITER);
        this.f8415a.append(bool.booleanValue() ? "1" : DtbConstants.NETWORK_TYPE_UNKNOWN);
    }

    /* renamed from: b */
    public void m36337b(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        StringBuilder sb = this.f8415a;
        if (this.f8416b) {
            this.f8416b = false;
            str3 = "?";
        } else {
            str3 = ContainerUtils.FIELD_DELIMITER;
        }
        sb.append(str3);
        this.f8415a.append(str);
        this.f8415a.append(ContainerUtils.KEY_VALUE_DELIMITER);
        this.f8415a.append(Uri.encode(str2));
    }

    /* renamed from: c */
    public void m36336c() {
        m36337b("ifa", "mp_tmpl_advertising_id");
        m36337b("dnt", "mp_tmpl_do_not_track");
        m36337b("tas", "mp_tmpl_tas");
        m36337b("mid", "mp_tmpl_mopub_id");
    }

    /* renamed from: d */
    public void m36335d() {
        AppEngineInfo appEngineInfo = f8413c;
        if (appEngineInfo != null) {
            m36337b("e_name", appEngineInfo.f8411a);
            m36337b("e_ver", appEngineInfo.f8412b);
        }
    }

    /* renamed from: e */
    public void m36334e() {
        m36337b("w_ver", f8414d);
    }

    /* renamed from: f */
    public String m36333f() {
        return this.f8415a.toString();
    }

    /* renamed from: g */
    public void m36332g(String str, String str2) {
        StringBuilder sb = new StringBuilder(Networking.getScheme());
        C22128a.m8669S0(sb, "://", str, str2);
        this.f8415a = sb;
        this.f8416b = true;
    }

    public abstract String generateUrlString(String str);

    /* renamed from: h */
    public void m36331h(String... strArr) {
        StringBuilder sb = new StringBuilder();
        if (strArr.length < 1) {
            return;
        }
        for (int i = 0; i < strArr.length - 1; i++) {
            sb.append(strArr[i]);
            sb.append(",");
        }
        sb.append(strArr[strArr.length - 1]);
        m36337b("dn", sb.toString());
    }
}
