package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgo.class */
public class zzgo implements zzgq {

    /* renamed from: a */
    protected final zzfv f9354a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgo(zzfv zzfvVar) {
        Preconditions.m14523k(zzfvVar);
        this.f9354a = zzfvVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: a */
    public Clock mo11085a() {
        return this.f9354a.mo11085a();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: b */
    public zzfo mo11083b() {
        return this.f9354a.mo11083b();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: c */
    public zzer mo11081c() {
        return this.f9354a.mo11081c();
    }

    /* renamed from: d */
    public void mo11317d() {
        this.f9354a.mo11083b().mo11317d();
    }

    /* renamed from: e */
    public void mo11316e() {
        this.f9354a.mo11083b().mo11316e();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: f */
    public Context mo11075f() {
        return this.f9354a.mo11075f();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: g */
    public zzx mo11073g() {
        return this.f9354a.mo11073g();
    }

    /* renamed from: h */
    public zzal m11315h() {
        return this.f9354a.m11371Q();
    }

    /* renamed from: i */
    public zzep m11314i() {
        return this.f9354a.m11380H();
    }

    /* renamed from: j */
    public zzkw m11313j() {
        return this.f9354a.m11381G();
    }

    /* renamed from: k */
    public zzfd m11312k() {
        return this.f9354a.m11349x();
    }

    /* renamed from: l */
    public zzy m11311l() {
        return this.f9354a.m11366e();
    }
}
