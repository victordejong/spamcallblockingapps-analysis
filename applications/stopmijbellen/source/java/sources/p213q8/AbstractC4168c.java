package p213q8;

import android.support.p012v4.media.C0082b;
/* renamed from: q8.c */
/* loaded from: classes2-dex2jar.jar:q8/c.class */
public abstract class AbstractC4168c<T, V> {

    /* renamed from: a */
    public final String f13141a;

    public AbstractC4168c(Class<V> cls, String str) {
        this.f13141a = str;
    }

    /* renamed from: a */
    public abstract V mo1341a(T t);

    /* renamed from: b */
    public void mo1340b(T t, V v) {
        throw new UnsupportedOperationException(C0082b.m8754h(C0082b.m8752j("Property "), this.f13141a, " is read-only"));
    }
}
