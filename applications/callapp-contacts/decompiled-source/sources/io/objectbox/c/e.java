package io.objectbox.c;
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/e.class */
final class e<T> implements d {

    /* renamed from: a  reason: collision with root package name */
    volatile boolean f36201a;

    /* renamed from: b  reason: collision with root package name */
    private b<T> f36202b;

    /* renamed from: c  reason: collision with root package name */
    private Object f36203c;

    /* renamed from: d  reason: collision with root package name */
    private a<T> f36204d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b<T> bVar, Object obj, a<T> aVar) {
        this.f36202b = bVar;
        this.f36203c = obj;
        this.f36204d = aVar;
    }

    @Override // io.objectbox.c.d
    public final void a() {
        synchronized (this) {
            this.f36201a = true;
            b<T> bVar = this.f36202b;
            if (bVar != null) {
                bVar.b(this.f36204d, this.f36203c);
                this.f36202b = null;
                this.f36204d = null;
                this.f36203c = null;
            }
        }
    }
}
