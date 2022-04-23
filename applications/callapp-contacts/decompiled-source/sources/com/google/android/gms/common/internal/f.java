package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.api.internal.l;
import com.google.android.gms.common.b;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/f.class */
public abstract class f<T extends IInterface> extends d<T> implements a.f {

    /* renamed from: a  reason: collision with root package name */
    private final e f22889a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Scope> f22890b;

    /* renamed from: c  reason: collision with root package name */
    private final Account f22891c;

    protected f(Context context, Handler handler, int i, e eVar) {
        super(context, handler, g.a(context), b.a(), i, null, null);
        this.f22889a = (e) o.a(eVar);
        this.f22891c = eVar.f22881a;
        this.f22890b = a(eVar.f22883c);
    }

    protected f(Context context, Looper looper, int i, e eVar) {
        this(context, looper, g.a(context), b.a(), i, eVar, null, null);
    }

    @Deprecated
    public f(Context context, Looper looper, int i, e eVar, g.a aVar, g.b bVar) {
        this(context, looper, i, eVar, (e) aVar, (l) bVar);
    }

    public f(Context context, Looper looper, int i, e eVar, e eVar2, l lVar) {
        this(context, looper, g.a(context), b.a(), i, eVar, (e) o.a(eVar2), (l) o.a(lVar));
    }

    protected f(Context context, Looper looper, g gVar, b bVar, int i, e eVar, e eVar2, l lVar) {
        super(context, looper, gVar, bVar, i, eVar2 == null ? null : new ad(eVar2), lVar == null ? null : new ae(lVar), eVar.f);
        this.f22889a = eVar;
        this.f22891c = eVar.f22881a;
        this.f22890b = a(eVar.f22883c);
    }

    private static Set<Scope> a(Set<Scope> set) {
        for (Scope scope : set) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return set;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final Set<Scope> a() {
        return requiresSignIn() ? this.f22890b : Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final e b() {
        return this.f22889a;
    }

    @Override // com.google.android.gms.common.internal.d
    public final Account getAccount() {
        return this.f22891c;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Set<Scope> getScopes() {
        return this.f22890b;
    }
}
