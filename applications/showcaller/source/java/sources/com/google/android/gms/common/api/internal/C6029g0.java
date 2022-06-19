package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.AbstractC5996c;
import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.C5984a.AbstractC5988d;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.common.api.internal.g0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/g0.class */
public final class C6029g0<O extends C5984a.AbstractC5988d> extends C6067v {
    @NotOnlyInitialized

    /* renamed from: c */
    private final AbstractC5996c<O> f19288c;

    public C6029g0(AbstractC5996c<O> abstractC5996c) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f19288c = abstractC5996c;
    }

    @Override // com.google.android.gms.common.api.AbstractC5999d
    /* renamed from: a */
    public final <A extends C5984a.AbstractC5986b, T extends AbstractC6019d<? extends AbstractC6007i, A>> T mo17334a(T t) {
        return (T) this.f19288c.m17472h(t);
    }

    @Override // com.google.android.gms.common.api.AbstractC5999d
    /* renamed from: c */
    public final Looper mo17333c() {
        return this.f19288c.m17468l();
    }
}
