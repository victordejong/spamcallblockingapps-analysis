package io.realm;

import com.google.android.gms.common.api.Api;
import io.realm.internal.OsList;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/ManagedListOperator.class */
public abstract class ManagedListOperator<T> {

    /* renamed from: a */
    final BaseRealm f19831a;

    /* renamed from: b */
    final OsList f19832b;
    @Nullable

    /* renamed from: c */
    final Class<T> f19833c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ManagedListOperator(BaseRealm baseRealm, OsList osList, @Nullable Class<T> cls) {
        this.f19831a = baseRealm;
        this.f19833c = cls;
        this.f19832b = osList;
    }

    /* renamed from: b */
    private void m3121b() {
        this.f19832b.m2772i();
    }

    /* renamed from: a */
    public final void m3122a(@Nullable Object obj) {
        mo2844d(obj);
        if (obj == null) {
            m3121b();
        } else {
            mo2845c(obj);
        }
    }

    /* renamed from: c */
    protected abstract void mo2845c(Object obj);

    /* renamed from: d */
    protected abstract void mo2844d(@Nullable Object obj);

    /* renamed from: e */
    public abstract boolean mo2843e();

    @Nullable
    /* renamed from: f */
    public abstract T mo2842f(int i);

    /* renamed from: g */
    public final OsList m3120g() {
        return this.f19832b;
    }

    /* renamed from: h */
    public final void m3119h(int i, @Nullable Object obj) {
        mo2844d(obj);
        if (obj == null) {
            mo2942i(i);
        } else {
            mo2841j(i, obj);
        }
    }

    /* renamed from: i */
    protected void mo2942i(int i) {
        this.f19832b.m2758w(i);
    }

    /* renamed from: j */
    protected abstract void mo2841j(int i, Object obj);

    /* renamed from: k */
    public final boolean m3118k() {
        return this.f19832b.m2755z();
    }

    /* renamed from: l */
    public final boolean m3117l() {
        return this.f19832b.m2795A();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public final void m3116m(int i) {
        this.f19832b.m2794B(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public final void m3115n() {
        this.f19832b.m2793C();
    }

    @Nullable
    /* renamed from: o */
    public final T m3114o(int i, @Nullable Object obj) {
        mo2844d(obj);
        T f = mo2842f(i);
        if (obj == null) {
            mo2941p(i);
        } else {
            mo2840q(i, obj);
        }
        return f;
    }

    /* renamed from: p */
    protected void mo2941p(int i) {
        this.f19832b.m2784L(i);
    }

    /* renamed from: q */
    protected abstract void mo2840q(int i, Object obj);

    /* renamed from: r */
    public final int m3113r() {
        long O = this.f19832b.m2781O();
        return O < 2147483647L ? (int) O : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }
}
