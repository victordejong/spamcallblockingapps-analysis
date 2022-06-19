package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/th0.class */
public final class th0 implements AbstractC6630jk {

    /* renamed from: b */
    private final AbstractC5728q1 f29986b;

    /* renamed from: d */
    final qh0 f29988d;

    /* renamed from: a */
    private final Object f29985a = new Object();

    /* renamed from: e */
    final HashSet<ih0> f29989e = new HashSet<>();

    /* renamed from: f */
    final HashSet<sh0> f29990f = new HashSet<>();

    /* renamed from: g */
    private boolean f29991g = false;

    /* renamed from: c */
    private final rh0 f29987c = new rh0();

    public th0(String str, AbstractC5728q1 abstractC5728q1) {
        this.f29988d = new qh0(str, abstractC5728q1);
        this.f29986b = abstractC5728q1;
    }

    /* renamed from: a */
    public final void m10686a(ih0 ih0Var) {
        synchronized (this.f29985a) {
            this.f29989e.add(ih0Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6630jk
    /* renamed from: b */
    public final void mo9939b(boolean z) {
        long mo16807a = C5667s.m18153k().mo16807a();
        if (!z) {
            this.f29986b.mo17971P0(mo16807a);
            this.f29986b.mo17952o0(this.f29988d.f28485d);
            return;
        }
        if (mo16807a - this.f29986b.mo17949s() > ((Long) C7192yr.m8714c().m14263c(C6679kw.f25468E0)).longValue()) {
            this.f29988d.f28485d = -1;
        } else {
            this.f29988d.f28485d = this.f29986b.zzt();
        }
        this.f29991g = true;
    }

    /* renamed from: c */
    public final void m10685c(HashSet<ih0> hashSet) {
        synchronized (this.f29985a) {
            this.f29989e.addAll(hashSet);
        }
    }

    /* renamed from: d */
    public final void m10684d() {
        synchronized (this.f29985a) {
            this.f29988d.m11894a();
        }
    }

    /* renamed from: e */
    public final void m10683e() {
        synchronized (this.f29985a) {
            this.f29988d.m11893b();
        }
    }

    /* renamed from: f */
    public final void m10682f(zzbdg zzbdgVar, long j) {
        synchronized (this.f29985a) {
            this.f29988d.m11892c(zzbdgVar, j);
        }
    }

    /* renamed from: g */
    public final void m10681g() {
        synchronized (this.f29985a) {
            this.f29988d.m11891d();
        }
    }

    /* renamed from: h */
    public final void m10680h() {
        synchronized (this.f29985a) {
            this.f29988d.m11890e();
        }
    }

    /* renamed from: i */
    public final ih0 m10679i(AbstractC6227e abstractC6227e, String str) {
        return new ih0(abstractC6227e, this, this.f29987c.m11468a(), str);
    }

    /* renamed from: j */
    public final boolean m10678j() {
        return this.f29991g;
    }

    /* renamed from: k */
    public final Bundle m10677k(Context context, xk2 xk2Var) {
        HashSet<ih0> hashSet = new HashSet<>();
        synchronized (this.f29985a) {
            hashSet.addAll(this.f29989e);
            this.f29989e.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f29988d.m11889f(context, this.f29987c.m11467b()));
        Bundle bundle2 = new Bundle();
        Iterator<sh0> it = this.f29990f.iterator();
        if (it.hasNext()) {
            it.next();
            throw null;
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<ih0> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().m14393j());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        xk2Var.m9145a(hashSet);
        return bundle;
    }
}
