package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgm.class */
public abstract class zzgm implements Callable {

    /* renamed from: a */
    public final zzex f28235a;

    /* renamed from: b */
    public final String f28236b;

    /* renamed from: c */
    public final String f28237c;

    /* renamed from: d */
    public final zzcf.zza.C10493zza f28238d;

    /* renamed from: e */
    public Method f28239e;

    /* renamed from: f */
    public final int f28240f;

    /* renamed from: g */
    public final int f28241g;

    public zzgm(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        getClass().getSimpleName();
        this.f28235a = zzexVar;
        this.f28236b = str;
        this.f28237c = str2;
        this.f28238d = zzaVar;
        this.f28240f = i;
        this.f28241g = i2;
    }

    /* renamed from: a */
    public abstract void mo12118a() throws IllegalAccessException, InvocationTargetException;

    /* renamed from: b */
    public Void call() throws Exception {
        try {
            long nanoTime = System.nanoTime();
            Method a = this.f28235a.m12168a(this.f28236b, this.f28237c);
            this.f28239e = a;
            if (a == null) {
                return null;
            }
            mo12118a();
            zzdu j = this.f28235a.m12155j();
            if (j == null || this.f28240f == Integer.MIN_VALUE) {
                return null;
            }
            j.m13181a(this.f28241g, this.f28240f, (System.nanoTime() - nanoTime) / 1000);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }
}
