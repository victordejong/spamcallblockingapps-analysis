package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1642f.p1667l.p1668a.AbstractC25073k;
@VisibleForTesting
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzdt.class */
public final class zzdt {

    /* renamed from: g */
    public static final Object f6277g = new Object();

    /* renamed from: a */
    public final String f6278a;

    /* renamed from: b */
    public final AbstractC25073k f6279b;

    /* renamed from: c */
    public final Object f6280c;

    /* renamed from: d */
    public final Object f6281d;

    /* renamed from: e */
    public final Object f6282e = new Object();

    /* renamed from: f */
    public volatile Object f6283f = null;

    public /* synthetic */ zzdt(String str, Object obj, Object obj2, AbstractC25073k abstractC25073k, zzds zzdsVar) {
        this.f6278a = str;
        this.f6280c = obj;
        this.f6281d = obj2;
        this.f6279b = abstractC25073k;
    }

    /* renamed from: a */
    public final Object m38615a(Object obj) {
        Object obj2;
        Object obj3 = f6277g;
        synchronized (this.f6282e) {
        }
        if (obj != null) {
            return obj;
        }
        if (C26232y.f73140a == null) {
            return this.f6280c;
        }
        synchronized (obj3) {
            if (zzaa.m38627a()) {
                return this.f6283f == null ? this.f6280c : this.f6283f;
            }
            try {
                for (zzdt zzdtVar : zzdu.f6310a) {
                    if (zzaa.m38627a()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    try {
                        AbstractC25073k abstractC25073k = zzdtVar.f6279b;
                        obj2 = null;
                        if (abstractC25073k != null) {
                            obj2 = abstractC25073k.zza();
                        }
                    } catch (IllegalStateException e) {
                        obj2 = null;
                    }
                    synchronized (obj3) {
                        zzdtVar.f6283f = obj2;
                    }
                }
            } catch (SecurityException e2) {
            }
            AbstractC25073k abstractC25073k2 = this.f6279b;
            if (abstractC25073k2 == null) {
                return this.f6280c;
            }
            try {
                return abstractC25073k2.zza();
            } catch (IllegalStateException e3) {
                return this.f6280c;
            } catch (SecurityException e4) {
                return this.f6280c;
            }
        }
    }
}
