package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.m;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/aj.class */
public final class aj<O extends a.d> extends y {
    @NotOnlyInitialized

    /* renamed from: a  reason: collision with root package name */
    private final f<O> f22646a;

    public aj(f<O> fVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f22646a = fVar;
    }

    @Override // com.google.android.gms.common.api.g
    public final <A extends a.b, R extends m, T extends d.a<R, A>> T a(T t) {
        return (T) this.f22646a.a((f<O>) t);
    }

    @Override // com.google.android.gms.common.api.g
    public final <A extends a.b, T extends d.a<? extends m, A>> T b(T t) {
        return (T) this.f22646a.b((f<O>) t);
    }

    @Override // com.google.android.gms.common.api.g
    public final Looper c() {
        return this.f22646a.f22616d;
    }

    @Override // com.google.android.gms.common.api.g
    public final void f() {
    }

    @Override // com.google.android.gms.common.api.g
    public final void g() {
    }
}
