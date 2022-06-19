package com.appnext.base.moments.p011a.p012a;

import android.text.TextUtils;
import com.appnext.base.p006a.p008b.C0477a;
import org.json.JSONObject;
/* renamed from: com.appnext.base.moments.a.a.c */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/a/a/c.class */
public class C0485c extends C0477a {

    /* renamed from: cg */
    private String f1680cg;

    /* renamed from: ch */
    private String f1681ch;

    /* renamed from: ci */
    private String f1682ci;

    /* renamed from: cj */
    private String f1683cj;

    /* renamed from: ck */
    private String f1684ck;

    /* renamed from: cl */
    private String f1685cl;

    /* renamed from: cm */
    private String f1686cm;

    /* renamed from: cn */
    private JSONObject f1687cn;

    public C0485c(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.f1680cg = str;
        this.f1681ch = str2;
        this.f1682ci = str3;
        this.f1683cj = str4;
        this.f1684ck = str5;
        this.f1685cl = str6;
        this.f1686cm = str7;
        if (TextUtils.isEmpty(str8)) {
            this.f1687cn = null;
            return;
        }
        try {
            this.f1687cn = new JSONObject(str8);
        } catch (Throwable th) {
            this.f1687cn = null;
        }
    }

    /* renamed from: Y */
    public final String m42545Y() {
        return this.f1680cg;
    }

    /* renamed from: Z */
    public final String m42544Z() {
        return this.f1681ch;
    }

    /* renamed from: aa */
    public final String m42543aa() {
        return this.f1682ci;
    }

    /* renamed from: ab */
    public final String m42542ab() {
        return this.f1683cj;
    }

    /* renamed from: ac */
    public final String m42541ac() {
        return this.f1684ck;
    }

    /* renamed from: ad */
    public final String m42540ad() {
        return this.f1685cl;
    }

    /* renamed from: ae */
    public final String m42539ae() {
        return this.f1685cl;
    }

    /* renamed from: af */
    public final JSONObject m42538af() {
        return this.f1687cn;
    }
}
