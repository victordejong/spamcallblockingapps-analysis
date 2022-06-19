package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.C6084b;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.AbstractC6022e;
import com.google.android.gms.common.api.internal.AbstractC6040k;
import java.util.Collections;
import java.util.Set;
/* renamed from: com.google.android.gms.common.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/f.class */
public abstract class AbstractC6125f<T extends IInterface> extends AbstractC6113d<T> implements C5984a.AbstractC5993f {

    /* renamed from: F */
    private final C6121e f19549F;

    /* renamed from: G */
    private final Set<Scope> f19550G;

    /* renamed from: H */
    private final Account f19551H;

    @Deprecated
    public AbstractC6125f(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, int i, @RecentlyNonNull C6121e c6121e, @RecentlyNonNull AbstractC5999d.AbstractC6000a abstractC6000a, @RecentlyNonNull AbstractC5999d.AbstractC6001b abstractC6001b) {
        this(context, looper, i, c6121e, (AbstractC6022e) abstractC6000a, (AbstractC6040k) abstractC6001b);
    }

    public AbstractC6125f(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, int i, @RecentlyNonNull C6121e c6121e, @RecentlyNonNull AbstractC6022e abstractC6022e, @RecentlyNonNull AbstractC6040k abstractC6040k) {
        this(context, looper, AbstractC6128g.m17058c(context), C6084b.m17237m(), i, c6121e, (AbstractC6022e) C6155o.m17018j(abstractC6022e), (AbstractC6040k) C6155o.m17018j(abstractC6040k));
    }

    protected AbstractC6125f(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull AbstractC6128g abstractC6128g, @RecentlyNonNull C6084b c6084b, int i, @RecentlyNonNull C6121e c6121e, AbstractC6022e abstractC6022e, AbstractC6040k abstractC6040k) {
        super(context, looper, abstractC6128g, c6084b, i, abstractC6022e == null ? null : new C6119d0(abstractC6022e), abstractC6040k == null ? null : new C6123e0(abstractC6040k), c6121e.m17078h());
        this.f19549F = c6121e;
        this.f19551H = c6121e.m17085a();
        this.f19550G = m17065k0(c6121e.m17082d());
    }

    /* renamed from: k0 */
    private final Set<Scope> m17065k0(Set<Scope> set) {
        Set<Scope> m17066j0 = m17066j0(set);
        for (Scope scope : m17066j0) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return m17066j0;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    @RecentlyNonNull
    /* renamed from: B */
    protected final Set<Scope> mo17069B() {
        return this.f19550G;
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: c */
    public Set<Scope> mo17068c() {
        return mo5855p() ? this.f19550G : Collections.emptySet();
    }

    @RecentlyNonNull
    /* renamed from: i0 */
    public final C6121e m17067i0() {
        return this.f19549F;
    }

    /* renamed from: j0 */
    protected Set<Scope> m17066j0(@RecentlyNonNull Set<Scope> set) {
        return set;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    @RecentlyNullable
    /* renamed from: u */
    public final Account mo17064u() {
        return this.f19551H;
    }
}
