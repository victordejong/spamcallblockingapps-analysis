package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mp2.class */
public final class mp2 {

    /* renamed from: a */
    private final op2 f26708a;

    /* renamed from: b */
    private final WebView f26709b;

    /* renamed from: c */
    private final List<pp2> f26710c = new ArrayList();

    /* renamed from: d */
    private final Map<String, pp2> f26711d = new HashMap();

    /* renamed from: e */
    private final String f26712e = "";

    /* renamed from: f */
    private final String f26713f;

    /* renamed from: g */
    private final zzfgf f26714g;

    private mp2(op2 op2Var, WebView webView, String str, List<pp2> list, String str2, String str3, zzfgf zzfgfVar) {
        this.f26708a = op2Var;
        this.f26709b = webView;
        this.f26714g = zzfgfVar;
        this.f26713f = str2;
    }

    /* renamed from: a */
    public static mp2 m13124a(op2 op2Var, WebView webView, String str, String str2) {
        return new mp2(op2Var, webView, null, null, str, "", zzfgf.HTML);
    }

    /* renamed from: b */
    public static mp2 m13123b(op2 op2Var, WebView webView, String str, String str2) {
        return new mp2(op2Var, webView, null, null, str, "", zzfgf.JAVASCRIPT);
    }

    /* renamed from: c */
    public final op2 m13122c() {
        return this.f26708a;
    }

    /* renamed from: d */
    public final List<pp2> m13121d() {
        return Collections.unmodifiableList(this.f26710c);
    }

    /* renamed from: e */
    public final Map<String, pp2> m13120e() {
        return Collections.unmodifiableMap(this.f26711d);
    }

    /* renamed from: f */
    public final WebView m13119f() {
        return this.f26709b;
    }

    /* renamed from: g */
    public final String m13118g() {
        return this.f26713f;
    }

    /* renamed from: h */
    public final String m13117h() {
        return this.f26712e;
    }

    /* renamed from: i */
    public final zzfgf m13116i() {
        return this.f26714g;
    }
}
