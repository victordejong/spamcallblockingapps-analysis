package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dg3.class */
public abstract class dg3 implements ok3 {

    /* renamed from: a */
    private final ArrayList<nk3> f21620a = new ArrayList<>(1);

    /* renamed from: b */
    private final HashSet<nk3> f21621b = new HashSet<>(1);

    /* renamed from: c */
    private final vk3 f21622c = new vk3();

    /* renamed from: d */
    private final gj2 f21623d = new gj2();

    /* renamed from: e */
    private Looper f21624e;

    /* renamed from: f */
    private AbstractC6839p7 f21625f;

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: a */
    public final void mo12607a(nk3 nk3Var, AbstractC6816ol abstractC6816ol) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f21624e;
        boolean z = true;
        if (looper != null) {
            z = looper == myLooper;
        }
        C7173y8.m8898a(z);
        AbstractC6839p7 abstractC6839p7 = this.f21625f;
        this.f21620a.add(nk3Var);
        if (this.f21624e == null) {
            this.f21624e = myLooper;
            this.f21621b.add(nk3Var);
            mo9578m(abstractC6816ol);
        } else if (abstractC6839p7 == null) {
        } else {
            mo12600k(nk3Var);
            nk3Var.mo10644a(this, abstractC6839p7);
        }
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: b */
    public final void mo12606b(Handler handler, wk3 wk3Var) {
        Objects.requireNonNull(wk3Var);
        this.f21622c.m9952b(handler, wk3Var);
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: d */
    public final void mo12605d(nk3 nk3Var) {
        this.f21620a.remove(nk3Var);
        if (!this.f21620a.isEmpty()) {
            mo12602h(nk3Var);
            return;
        }
        this.f21624e = null;
        this.f21625f = null;
        this.f21621b.clear();
        mo9576p();
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: f */
    public final void mo12604f(wk3 wk3Var) {
        this.f21622c.m9951c(wk3Var);
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: g */
    public final void mo12603g(fk2 fk2Var) {
        this.f21623d.m14927c(fk2Var);
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: h */
    public final void mo12602h(nk3 nk3Var) {
        boolean isEmpty = this.f21621b.isEmpty();
        this.f21621b.remove(nk3Var);
        if (!(!isEmpty) || !this.f21621b.isEmpty()) {
            return;
        }
        mo9577n();
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: i */
    public final void mo12601i(Handler handler, fk2 fk2Var) {
        Objects.requireNonNull(fk2Var);
        this.f21623d.m14928b(handler, fk2Var);
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: k */
    public final void mo12600k(nk3 nk3Var) {
        Objects.requireNonNull(this.f21624e);
        boolean isEmpty = this.f21621b.isEmpty();
        this.f21621b.add(nk3Var);
        if (isEmpty) {
            mo9579l();
        }
    }

    /* renamed from: l */
    protected void mo9579l() {
    }

    /* renamed from: m */
    protected abstract void mo9578m(AbstractC6816ol abstractC6816ol);

    /* renamed from: n */
    protected void mo9577n() {
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: o */
    public final AbstractC6839p7 mo12599o() {
        return null;
    }

    /* renamed from: p */
    protected abstract void mo9576p();

    /* renamed from: r */
    public final void m15827r(AbstractC6839p7 abstractC6839p7) {
        this.f21625f = abstractC6839p7;
        ArrayList<nk3> arrayList = this.f21620a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo10644a(this, abstractC6839p7);
        }
    }

    /* renamed from: s */
    public final vk3 m15826s(mk3 mk3Var) {
        return this.f21622c.m9953a(0, mk3Var, 0L);
    }

    /* renamed from: t */
    public final vk3 m15825t(int i, mk3 mk3Var, long j) {
        return this.f21622c.m9953a(i, mk3Var, 0L);
    }

    /* renamed from: u */
    public final gj2 m15824u(mk3 mk3Var) {
        return this.f21623d.m14929a(0, mk3Var);
    }

    /* renamed from: v */
    public final gj2 m15823v(int i, mk3 mk3Var) {
        return this.f21623d.m14929a(i, mk3Var);
    }

    /* renamed from: w */
    public final boolean m15822w() {
        return !this.f21621b.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.ok3
    public final boolean zzt() {
        return true;
    }
}
