package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bcq.class */
public final class bcq extends AbstractBinderC2874cq {

    /* renamed from: a */
    private final String f10958a;

    /* renamed from: b */
    private final aym f10959b;

    /* renamed from: c */
    private final ayx f10960c;

    public bcq(String str, aym aymVar, ayx ayxVar) {
        this.f10958a = str;
        this.f10959b = aymVar;
        this.f10960c = ayxVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: a */
    public final AbstractC2731a mo10916a() {
        return BinderC2734b.m13794a(this.f10959b);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: a */
    public final void mo10915a(Bundle bundle) {
        this.f10959b.m12323a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: b */
    public final String mo10914b() {
        return this.f10960c.m12252e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: b */
    public final boolean mo10913b(Bundle bundle) {
        return this.f10959b.m12309b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: c */
    public final List<?> mo10912c() {
        return this.f10960c.m12251f();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: c */
    public final void mo10911c(Bundle bundle) {
        this.f10959b.m12305c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: d */
    public final String mo10910d() {
        return this.f10960c.m12247j();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: e */
    public final AbstractC2844bu mo10909e() {
        return this.f10960c.m12237t();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: f */
    public final String mo10908f() {
        return this.f10960c.m12245l();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: g */
    public final String mo10907g() {
        return this.f10960c.m12238s();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: h */
    public final Bundle mo10906h() {
        return this.f10960c.m12246k();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: i */
    public final void mo10905i() {
        this.f10959b.mo12297k();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: j */
    public final eba mo10904j() {
        return this.f10960c.m12263b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: k */
    public final AbstractC2837bn mo10903k() {
        return this.f10960c.m12255c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: l */
    public final AbstractC2731a mo10902l() {
        return this.f10960c.m12243n();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: m */
    public final String mo10901m() {
        return this.f10958a;
    }
}
