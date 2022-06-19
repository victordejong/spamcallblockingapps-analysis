package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.measurement.p141a.C4154a;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.kd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kd.class */
public final class BinderC3269kd extends afe {

    /* renamed from: a */
    private final C4154a f16844a;

    public BinderC3269kd(C4154a c4154a) {
        this.f16844a = c4154a;
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: a */
    public final int mo7691a(String str) {
        return this.f16844a.m4823c(str);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: a */
    public final String mo7694a() {
        return this.f16844a.m4825c();
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: a */
    public final List mo7690a(String str, String str2) {
        return this.f16844a.m4833a(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: a */
    public final Map mo7687a(String str, String str2, boolean z) {
        return this.f16844a.m4830a(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: a */
    public final void mo7693a(Bundle bundle) {
        this.f16844a.m4824c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: a */
    public final void mo7692a(AbstractC2731a abstractC2731a, String str, String str2) {
        this.f16844a.m4838a(abstractC2731a != null ? (Activity) BinderC2734b.m13795a(abstractC2731a) : null, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: a */
    public final void mo7689a(String str, String str2, Bundle bundle) {
        this.f16844a.m4832a(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: a */
    public final void mo7688a(String str, String str2, AbstractC2731a abstractC2731a) {
        this.f16844a.m4831a(str, str2, abstractC2731a != null ? BinderC2734b.m13795a(abstractC2731a) : null);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: b */
    public final Bundle mo7685b(Bundle bundle) {
        return this.f16844a.m4828b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: b */
    public final String mo7686b() {
        return this.f16844a.m4822d();
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: b */
    public final void mo7684b(String str) {
        this.f16844a.m4834a(str);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: b */
    public final void mo7683b(String str, String str2, Bundle bundle) {
        this.f16844a.m4826b(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: c */
    public final long mo7682c() {
        return this.f16844a.m4821e();
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: c */
    public final void mo7681c(Bundle bundle) {
        this.f16844a.m4835a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: c */
    public final void mo7680c(String str) {
        this.f16844a.m4827b(str);
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: d */
    public final String mo7679d() {
        return this.f16844a.m4839a();
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: e */
    public final String mo7678e() {
        return this.f16844a.m4829b();
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: f */
    public final String mo7677f() {
        return this.f16844a.m4820f();
    }
}
