package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.ads.ur */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ur.class */
public final class C3553ur implements duj {

    /* renamed from: b */
    private final AbstractC3558uw f17457b;

    /* renamed from: d */
    private final C3549un f17459d;

    /* renamed from: a */
    private final Object f17456a = new Object();

    /* renamed from: e */
    private final HashSet<C3541uf> f17460e = new HashSet<>();

    /* renamed from: f */
    private final HashSet<C3550uo> f17461f = new HashSet<>();

    /* renamed from: c */
    private final C3551up f17458c = new C3551up();

    public C3553ur(String str, AbstractC3558uw abstractC3558uw) {
        this.f17459d = new C3549un(str, abstractC3558uw);
        this.f17457b = abstractC3558uw;
    }

    /* renamed from: a */
    public final Bundle m7061a(Context context, AbstractC3548um abstractC3548um) {
        HashSet<C3541uf> hashSet = new HashSet<>();
        synchronized (this.f17456a) {
            hashSet.addAll(this.f17460e);
            this.f17460e.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f17459d.m7069a(context, this.f17458c.m7065b()));
        Bundle bundle2 = new Bundle();
        Iterator<C3550uo> it = this.f17461f.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<C3541uf> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().m7102d());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        abstractC3548um.mo7072a(hashSet);
        return bundle;
    }

    /* renamed from: a */
    public final C3541uf m7060a(AbstractC2708e abstractC2708e, String str) {
        return new C3541uf(abstractC2708e, this, this.f17458c.m7066a(), str);
    }

    /* renamed from: a */
    public final void m7062a() {
        synchronized (this.f17456a) {
            this.f17459d.m7071a();
        }
    }

    /* renamed from: a */
    public final void m7059a(dya dyaVar, long j) {
        synchronized (this.f17456a) {
            this.f17459d.m7068a(dyaVar, j);
        }
    }

    /* renamed from: a */
    public final void m7058a(C3541uf c3541uf) {
        synchronized (this.f17456a) {
            this.f17460e.add(c3541uf);
        }
    }

    /* renamed from: a */
    public final void m7057a(HashSet<C3541uf> hashSet) {
        synchronized (this.f17456a) {
            this.f17460e.addAll(hashSet);
        }
    }

    @Override // com.google.android.gms.internal.ads.duj
    /* renamed from: a */
    public final void mo7056a(boolean z) {
        long mo13862a = C2341q.m14737j().mo13862a();
        if (!z) {
            this.f17457b.mo7037a(mo13862a);
            this.f17457b.mo7031b(this.f17459d.f17441a);
            return;
        }
        if (mo13862a - this.f17457b.mo7018i() > ((Long) dyx.m8158e().m7876a(edi.f16383ap)).longValue()) {
            this.f17459d.f17441a = -1;
            return;
        }
        this.f17459d.f17441a = this.f17457b.mo7017j();
    }

    /* renamed from: b */
    public final void m7055b() {
        synchronized (this.f17456a) {
            this.f17459d.m7067b();
        }
    }
}
