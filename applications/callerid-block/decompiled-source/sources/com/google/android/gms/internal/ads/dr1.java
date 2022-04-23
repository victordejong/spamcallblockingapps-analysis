package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dr1.class */
public final class dr1 {

    /* renamed from: a */
    private final fr1 f6354a;

    /* renamed from: b */
    private final WebView f6355b;

    /* renamed from: c */
    private final List<gr1> f6356c = new ArrayList();

    /* renamed from: d */
    private final Map<String, gr1> f6357d = new HashMap();

    /* renamed from: e */
    private final String f6358e = "";

    /* renamed from: f */
    private final String f6359f;

    /* renamed from: g */
    private final zzdwr f6360g;

    private dr1(fr1 fr1Var, WebView webView, String str, List<gr1> list, String str2, String str3, zzdwr zzdwrVar) {
        this.f6354a = fr1Var;
        this.f6355b = webView;
        this.f6360g = zzdwrVar;
        this.f6359f = str2;
    }

    @Deprecated
    /* renamed from: a */
    public static dr1 m7706a(fr1 fr1Var, WebView webView, String str) {
        return new dr1(fr1Var, webView, null, null, null, "", zzdwr.HTML);
    }

    /* renamed from: b */
    public static dr1 m7705b(fr1 fr1Var, WebView webView, String str, String str2) {
        return new dr1(fr1Var, webView, null, null, str, "", zzdwr.HTML);
    }

    /* renamed from: c */
    public static dr1 m7704c(fr1 fr1Var, WebView webView, String str, String str2) {
        return new dr1(fr1Var, webView, null, null, str, "", zzdwr.JAVASCRIPT);
    }

    /* renamed from: d */
    public final fr1 m7703d() {
        return this.f6354a;
    }

    /* renamed from: e */
    public final List<gr1> m7702e() {
        return Collections.unmodifiableList(this.f6356c);
    }

    /* renamed from: f */
    public final Map<String, gr1> m7701f() {
        return Collections.unmodifiableMap(this.f6357d);
    }

    /* renamed from: g */
    public final WebView m7700g() {
        return this.f6355b;
    }

    /* renamed from: h */
    public final String m7699h() {
        return this.f6359f;
    }

    /* renamed from: i */
    public final String m7698i() {
        return this.f6358e;
    }

    /* renamed from: j */
    public final zzdwr m7697j() {
        return this.f6360g;
    }
}
