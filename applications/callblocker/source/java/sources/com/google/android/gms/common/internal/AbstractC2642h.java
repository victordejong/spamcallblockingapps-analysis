package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.C2591e;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.AbstractC2547e;
import com.google.android.gms.common.api.internal.AbstractC2557k;
import com.google.android.gms.common.internal.AbstractC2623c;
import java.util.Collections;
import java.util.Set;
/* renamed from: com.google.android.gms.common.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/h.class */
public abstract class AbstractC2642h<T extends IInterface> extends AbstractC2623c<T> implements C2471a.AbstractC2483f {

    /* renamed from: e */
    private final C2636d f7395e;

    /* renamed from: f */
    private final Set<Scope> f7396f;

    /* renamed from: g */
    private final Account f7397g;

    @Deprecated
    public AbstractC2642h(Context context, Looper looper, int i, C2636d c2636d, AbstractC2492d.AbstractC2493a abstractC2493a, AbstractC2492d.AbstractC2494b abstractC2494b) {
        this(context, looper, i, c2636d, (AbstractC2547e) abstractC2493a, (AbstractC2557k) abstractC2494b);
    }

    protected AbstractC2642h(Context context, Looper looper, int i, C2636d c2636d, AbstractC2547e abstractC2547e, AbstractC2557k abstractC2557k) {
        this(context, looper, AbstractC2643i.m14017a(context), C2591e.m14185a(), i, c2636d, (AbstractC2547e) C2662s.m13981a(abstractC2547e), (AbstractC2557k) C2662s.m13981a(abstractC2557k));
    }

    protected AbstractC2642h(Context context, Looper looper, AbstractC2643i abstractC2643i, C2591e c2591e, int i, C2636d c2636d, AbstractC2547e abstractC2547e, AbstractC2557k abstractC2557k) {
        super(context, looper, abstractC2643i, c2591e, i, m14024a(abstractC2547e), m14023a(abstractC2557k), c2636d.m14044g());
        this.f7395e = c2636d;
        this.f7397g = c2636d.m14049b();
        this.f7396f = m14021b(c2636d.m14046e());
    }

    /* renamed from: a */
    private static AbstractC2623c.AbstractC2624a m14024a(AbstractC2547e abstractC2547e) {
        return abstractC2547e == null ? null : new C2673z(abstractC2547e);
    }

    /* renamed from: a */
    private static AbstractC2623c.AbstractC2625b m14023a(AbstractC2557k abstractC2557k) {
        return abstractC2557k == null ? null : new C2598aa(abstractC2557k);
    }

    /* renamed from: b */
    private final Set<Scope> m14021b(Set<Scope> set) {
        Set<Scope> m14022a = m14022a(set);
        for (Scope scope : m14022a) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return m14022a;
    }

    /* renamed from: A */
    public final C2636d m14025A() {
        return this.f7395e;
    }

    /* renamed from: a */
    protected Set<Scope> m14022a(Set<Scope> set) {
        return set;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: d */
    public int mo2031d() {
        return super.mo2031d();
    }

    @Override // com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: l */
    public Set<Scope> mo14020l() {
        return mo6530h() ? this.f7396f : Collections.emptySet();
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: q */
    public final Account mo14019q() {
        return this.f7397g;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: y */
    protected final Set<Scope> mo14018y() {
        return this.f7396f;
    }
}
