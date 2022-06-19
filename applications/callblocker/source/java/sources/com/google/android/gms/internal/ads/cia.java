package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cia.class */
public final class cia implements apv, AbstractC3548um {
    @GuardedBy("this")

    /* renamed from: a */
    private final HashSet<C3541uf> f13082a = new HashSet<>();

    /* renamed from: b */
    private final Context f13083b;

    /* renamed from: c */
    private final C3553ur f13084c;

    public cia(Context context, C3553ur c3553ur) {
        this.f13083b = context;
        this.f13084c = c3553ur;
    }

    /* renamed from: a */
    public final Bundle m11259a() {
        return this.f13084c.m7061a(this.f13083b, this);
    }

    @Override // com.google.android.gms.internal.ads.apv
    /* renamed from: a */
    public final void mo11258a(int i) {
        synchronized (this) {
            if (i != 3) {
                this.f13084c.m7057a(this.f13082a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3548um
    /* renamed from: a */
    public final void mo7072a(HashSet<C3541uf> hashSet) {
        synchronized (this) {
            this.f13082a.clear();
            this.f13082a.addAll(hashSet);
        }
    }
}
