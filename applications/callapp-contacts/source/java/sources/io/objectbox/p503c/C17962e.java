package io.objectbox.p503c;
/* renamed from: io.objectbox.c.e */
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/e.class */
final class C17962e<T> implements AbstractC17961d {

    /* renamed from: a */
    volatile boolean f62744a;

    /* renamed from: b */
    private AbstractC17959b<T> f62745b;

    /* renamed from: c */
    private Object f62746c;

    /* renamed from: d */
    private AbstractC17958a<T> f62747d;

    public C17962e(AbstractC17959b<T> abstractC17959b, Object obj, AbstractC17958a<T> abstractC17958a) {
        this.f62745b = abstractC17959b;
        this.f62746c = obj;
        this.f62747d = abstractC17958a;
    }

    @Override // io.objectbox.p503c.AbstractC17961d
    /* renamed from: a */
    public final void mo4680a() {
        synchronized (this) {
            this.f62744a = true;
            AbstractC17959b<T> abstractC17959b = this.f62745b;
            if (abstractC17959b != null) {
                abstractC17959b.mo4589b(this.f62747d, this.f62746c);
                this.f62745b = null;
                this.f62747d = null;
                this.f62746c = null;
            }
        }
    }
}
