package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.C11808a.AbstractC11812d;
import com.google.android.gms.common.api.internal.C11892d;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.common.api.internal.aj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/aj.class */
public final class C11842aj<O extends C11808a.AbstractC11812d> extends C11919y {
    @NotOnlyInitialized

    /* renamed from: a */
    private final AbstractC11823f<O> f39242a;

    public C11842aj(AbstractC11823f<O> abstractC11823f) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f39242a = abstractC11823f;
    }

    @Override // com.google.android.gms.common.api.AbstractC11826g
    /* renamed from: a */
    public final <A extends C11808a.AbstractC11810b, R extends AbstractC11925m, T extends C11892d.AbstractC11893a<R, A>> T mo19405a(T t) {
        return (T) this.f39242a.m19458a((AbstractC11823f<O>) t);
    }

    @Override // com.google.android.gms.common.api.AbstractC11826g
    /* renamed from: b */
    public final <A extends C11808a.AbstractC11810b, T extends C11892d.AbstractC11893a<? extends AbstractC11925m, A>> T mo19404b(T t) {
        return (T) this.f39242a.m19452b((AbstractC11823f<O>) t);
    }

    @Override // com.google.android.gms.common.api.AbstractC11826g
    /* renamed from: c */
    public final Looper mo19403c() {
        return this.f39242a.f39182d;
    }

    @Override // com.google.android.gms.common.api.AbstractC11826g
    /* renamed from: f */
    public final void mo19402f() {
    }

    @Override // com.google.android.gms.common.api.AbstractC11826g
    /* renamed from: g */
    public final void mo19401g() {
    }
}
