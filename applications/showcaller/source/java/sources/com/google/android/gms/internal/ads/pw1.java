package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pw1.class */
public final class pw1 implements gb0 {

    /* renamed from: a */
    private final gb0 f28188a;

    /* renamed from: b */
    private final gb0 f28189b;

    public pw1(gb0 gb0Var, gb0 gb0Var2) {
        this.f28188a = gb0Var;
        this.f28189b = gb0Var2;
    }

    /* renamed from: f */
    private final gb0 m12106f() {
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25826w3)).booleanValue() ? this.f28188a : this.f28189b;
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: M */
    public final void mo12113M(AbstractC6253a abstractC6253a) {
        m12106f().mo12113M(abstractC6253a);
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: U */
    public final boolean mo12112U(Context context) {
        return m12106f().mo12112U(context);
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: a */
    public final String mo12111a(Context context) {
        return m12106f().mo12111a(context);
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: b */
    public final AbstractC6253a mo12110b(String str, WebView webView, String str2, String str3, String str4, zzbzm zzbzmVar, zzbzl zzbzlVar, String str5) {
        return m12106f().mo12110b(str, webView, "", "javascript", str4, zzbzmVar, zzbzlVar, str5);
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: c */
    public final AbstractC6253a mo12109c(String str, WebView webView, String str2, String str3, String str4, String str5, zzbzm zzbzmVar, zzbzl zzbzlVar, String str6) {
        return m12106f().mo12109c(str, webView, "", "javascript", str4, str5, zzbzmVar, zzbzlVar, str6);
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: d */
    public final void mo12108d(AbstractC6253a abstractC6253a, View view) {
        m12106f().mo12108d(abstractC6253a, view);
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: e */
    public final void mo12107e(AbstractC6253a abstractC6253a, View view) {
        m12106f().mo12107e(abstractC6253a, view);
    }

    @Override // com.google.android.gms.internal.ads.gb0
    public final void zzf(AbstractC6253a abstractC6253a) {
        m12106f().zzf(abstractC6253a);
    }
}
