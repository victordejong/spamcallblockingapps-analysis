package io.fabric.sdk.android.services.p067a;

import android.content.Context;
/* renamed from: io.fabric.sdk.android.services.a.b */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/a/b.class */
public class C1465b<T> extends AbstractC1464a<T> {

    /* renamed from: a */
    private T f4047a;

    public C1465b() {
        this(null);
    }

    public C1465b(AbstractC1466c<T> abstractC1466c) {
        super(abstractC1466c);
    }

    @Override // io.fabric.sdk.android.services.p067a.AbstractC1464a
    /* renamed from: a */
    protected T mo3534a(Context context) {
        return this.f4047a;
    }

    @Override // io.fabric.sdk.android.services.p067a.AbstractC1464a
    /* renamed from: a */
    protected void mo3533a(Context context, T t) {
        this.f4047a = t;
    }
}
