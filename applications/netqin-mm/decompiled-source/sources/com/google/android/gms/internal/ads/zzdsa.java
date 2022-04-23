package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrp;
import com.google.android.gms.internal.ads.zzdrr;
import com.google.android.gms.internal.ads.zzdsa;
import com.google.android.gms.internal.ads.zzdsg;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3897oz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsa.class */
public final class zzdsa<O> {

    /* renamed from: a */
    public final E f27780a;

    /* renamed from: b */
    public final String f27781b;

    /* renamed from: c */
    public final zzdzc<?> f27782c;

    /* renamed from: d */
    public final List<zzdzc<?>> f27783d;

    /* renamed from: e */
    public final zzdzc<O> f27784e;

    /* renamed from: f */
    public final /* synthetic */ zzdru f27785f;

    public zzdsa(zzdru zzdruVar, E e, String str, zzdzc<?> zzdzcVar, List<zzdzc<?>> list, zzdzc<O> zzdzcVar2) {
        this.f27785f = zzdruVar;
        this.f27780a = e;
        this.f27781b = str;
        this.f27782c = zzdzcVar;
        this.f27783d = list;
        this.f27784e = zzdzcVar2;
    }

    /* renamed from: a */
    public final zzdrr<E, O> m13263a() {
        zzdsg zzdsgVar;
        E e = this.f27780a;
        String str = this.f27781b;
        String str2 = str;
        if (str == null) {
            str2 = this.f27785f.mo13249b((zzdru) e);
        }
        final zzdrr<E, O> zzdrrVar = new zzdrr<>(e, str2, this.f27784e);
        zzdsgVar = this.f27785f.f27774c;
        zzdsgVar.mo13250c(zzdrrVar);
        this.f27782c.mo12976a(new Runnable(this, zzdrrVar) { // from class: c.d.b.d.g.a.pz

            /* renamed from: a */
            public final zzdsa f14571a;

            /* renamed from: b */
            public final zzdrr f14572b;

            {
                this.f14571a = this;
                this.f14572b = zzdrrVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzdsg zzdsgVar2;
                zzdsa zzdsaVar = this.f14571a;
                zzdrr zzdrrVar2 = this.f14572b;
                zzdsgVar2 = zzdsaVar.f27785f.f27774c;
                zzdsgVar2.mo13251b(zzdrrVar2);
            }
        }, zzbbz.f24769f);
        zzdyq.m12991a(zzdrrVar, new C3897oz(this, zzdrrVar), zzbbz.f24769f);
        return zzdrrVar;
    }

    /* renamed from: a */
    public final zzdsa<O> m13262a(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        zzdru zzdruVar = this.f27785f;
        E e = this.f27780a;
        String str = this.f27781b;
        zzdzc<?> zzdzcVar = this.f27782c;
        List<zzdzc<?>> list = this.f27783d;
        zzdzc<O> zzdzcVar2 = this.f27784e;
        scheduledExecutorService = zzdruVar.f27773b;
        return new zzdsa<>(zzdruVar, e, str, zzdzcVar, list, zzdyq.m12994a(zzdzcVar2, j, timeUnit, scheduledExecutorService));
    }

    /* renamed from: a */
    public final <O2> zzdsa<O2> m13261a(final zzdrp<O, O2> zzdrpVar) {
        return m13260a((zzdya) new zzdya(zzdrpVar) { // from class: c.d.b.d.g.a.kz

            /* renamed from: a */
            public final zzdrp f13922a;

            {
                this.f13922a = zzdrpVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return zzdyq.m12988a(this.f13922a.apply(obj));
            }
        });
    }

    /* renamed from: a */
    public final <O2> zzdsa<O2> m13260a(zzdya<O, O2> zzdyaVar) {
        zzdzb zzdzbVar;
        zzdzbVar = this.f27785f.f27772a;
        return m13259a(zzdyaVar, zzdzbVar);
    }

    /* renamed from: a */
    public final <O2> zzdsa<O2> m13259a(zzdya<O, O2> zzdyaVar, Executor executor) {
        return new zzdsa<>(this.f27785f, this.f27780a, this.f27781b, this.f27782c, this.f27783d, zzdyq.m12992a(this.f27784e, zzdyaVar, executor));
    }

    /* renamed from: a */
    public final <O2> zzdsa<O2> m13258a(final zzdzc<O2> zzdzcVar) {
        return m13259a(new zzdya(zzdzcVar) { // from class: c.d.b.d.g.a.nz

            /* renamed from: a */
            public final zzdzc f14277a;

            {
                this.f14277a = zzdzcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f14277a;
            }
        }, zzbbz.f24769f);
    }

    /* renamed from: a */
    public final <T extends Throwable> zzdsa<O> m13257a(Class<T> cls, final zzdrp<T, O> zzdrpVar) {
        return m13256a(cls, new zzdya(zzdrpVar) { // from class: c.d.b.d.g.a.mz

            /* renamed from: a */
            public final zzdrp f14207a;

            {
                this.f14207a = zzdrpVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return zzdyq.m12988a(this.f14207a.apply((Throwable) obj));
            }
        });
    }

    /* renamed from: a */
    public final <T extends Throwable> zzdsa<O> m13256a(Class<T> cls, zzdya<T, O> zzdyaVar) {
        zzdzb zzdzbVar;
        zzdru zzdruVar = this.f27785f;
        E e = this.f27780a;
        String str = this.f27781b;
        zzdzc<?> zzdzcVar = this.f27782c;
        List<zzdzc<?>> list = this.f27783d;
        zzdzc<O> zzdzcVar2 = this.f27784e;
        zzdzbVar = zzdruVar.f27772a;
        return new zzdsa<>(zzdruVar, e, str, zzdzcVar, list, zzdyq.m12990a(zzdzcVar2, cls, zzdyaVar, zzdzbVar));
    }

    /* renamed from: a */
    public final zzdsa<O> m13255a(E e) {
        return this.f27785f.m13272a((zzdru) e, (zzdzc) m13263a());
    }

    /* renamed from: a */
    public final zzdsa<O> m13254a(String str) {
        return new zzdsa<>(this.f27785f, this.f27780a, str, this.f27782c, this.f27783d, this.f27784e);
    }
}
