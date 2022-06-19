package io.fabric.sdk.android.services.p067a;

import android.content.Context;
/* renamed from: io.fabric.sdk.android.services.a.a */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/a/a.class */
public abstract class AbstractC1464a<T> implements AbstractC1466c<T> {

    /* renamed from: a */
    private final AbstractC1466c<T> f4046a;

    public AbstractC1464a(AbstractC1466c<T> abstractC1466c) {
        this.f4046a = abstractC1466c;
    }

    /* renamed from: b */
    private void m3535b(Context context, T t) {
        if (t != null) {
            mo3533a(context, (Context) t);
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    protected abstract T mo3534a(Context context);

    @Override // io.fabric.sdk.android.services.p067a.AbstractC1466c
    /* renamed from: a */
    public final T mo3532a(Context context, AbstractC1467d<T> abstractC1467d) {
        T t;
        synchronized (this) {
            T mo3534a = mo3534a(context);
            t = mo3534a;
            if (mo3534a == null) {
                T mo3532a = this.f4046a != null ? this.f4046a.mo3532a(context, abstractC1467d) : abstractC1467d.load(context);
                m3535b(context, mo3532a);
                t = mo3532a;
            }
        }
        return t;
    }

    /* renamed from: a */
    protected abstract void mo3533a(Context context, T t);
}
