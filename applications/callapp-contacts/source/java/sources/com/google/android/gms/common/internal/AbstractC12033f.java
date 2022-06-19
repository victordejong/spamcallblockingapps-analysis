package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.AbstractC11895e;
import com.google.android.gms.common.api.internal.AbstractC11904l;
import java.util.Collections;
import java.util.Set;
/* renamed from: com.google.android.gms.common.internal.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/f.class */
public abstract class AbstractC12033f<T extends IInterface> extends AbstractC12025d<T> implements C11808a.AbstractC11817f {

    /* renamed from: a */
    private final C12031e f39555a;

    /* renamed from: b */
    private final Set<Scope> f39556b;

    /* renamed from: c */
    private final Account f39557c;

    protected AbstractC12033f(Context context, Handler handler, int i, C12031e c12031e) {
        super(context, handler, AbstractC12034g.m19180a(context), C11937b.m19287a(), i, null, null);
        this.f39555a = (C12031e) C12045o.m19162a(c12031e);
        this.f39557c = c12031e.f39540a;
        this.f39556b = m19184a(c12031e.f39542c);
    }

    protected AbstractC12033f(Context context, Looper looper, int i, C12031e c12031e) {
        this(context, looper, AbstractC12034g.m19180a(context), C11937b.m19287a(), i, c12031e, null, null);
    }

    @Deprecated
    public AbstractC12033f(Context context, Looper looper, int i, C12031e c12031e, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b) {
        this(context, looper, i, c12031e, (AbstractC11895e) abstractC11827a, (AbstractC11904l) abstractC11828b);
    }

    public AbstractC12033f(Context context, Looper looper, int i, C12031e c12031e, AbstractC11895e abstractC11895e, AbstractC11904l abstractC11904l) {
        this(context, looper, AbstractC12034g.m19180a(context), C11937b.m19287a(), i, c12031e, (AbstractC11895e) C12045o.m19162a(abstractC11895e), (AbstractC11904l) C12045o.m19162a(abstractC11904l));
    }

    protected AbstractC12033f(Context context, Looper looper, AbstractC12034g abstractC12034g, C11937b c11937b, int i, C12031e c12031e, AbstractC11895e abstractC11895e, AbstractC11904l abstractC11904l) {
        super(context, looper, abstractC12034g, c11937b, i, abstractC11895e == null ? null : new C11978ad(abstractC11895e), abstractC11904l == null ? null : new C11979ae(abstractC11904l), c12031e.f39545f);
        this.f39555a = c12031e;
        this.f39557c = c12031e.f39540a;
        this.f39556b = m19184a(c12031e.f39542c);
    }

    /* renamed from: a */
    private static Set<Scope> m19184a(Set<Scope> set) {
        for (Scope scope : set) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return set;
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    /* renamed from: a */
    public final Set<Scope> mo19185a() {
        return requiresSignIn() ? this.f39556b : Collections.emptySet();
    }

    /* renamed from: b */
    public final C12031e m19183b() {
        return this.f39555a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Account getAccount() {
        return this.f39557c;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    protected final Set<Scope> getScopes() {
        return this.f39556b;
    }
}
