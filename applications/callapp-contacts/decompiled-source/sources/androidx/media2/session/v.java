package androidx.media2.session;

import android.util.Log;
import java.io.Closeable;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/v.class */
final class v implements Closeable {

    /* renamed from: b  reason: collision with root package name */
    private int f5102b;

    /* renamed from: a  reason: collision with root package name */
    private final Object f5101a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private androidx.b.a<Integer, a<?>> f5103c = new androidx.b.a<>();

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/v$a.class */
    static final class a<T> extends androidx.c.a.a<T> {
        final int f;
        final T g;

        private a(int i, T t) {
            this.f = i;
            this.g = t;
        }

        static <T> a<T> a(int i, T t) {
            return new a<>(i, t);
        }

        @Override // androidx.c.a.a
        public final boolean a(T t) {
            return super.a((a<T>) t);
        }
    }

    public final int a() {
        int i;
        synchronized (this.f5101a) {
            i = this.f5102b;
            this.f5102b = i + 1;
        }
        return i;
    }

    public final <T> a<T> a(T t) {
        a<T> a2;
        synchronized (this.f5101a) {
            int a3 = a();
            a2 = a.a(a3, t);
            this.f5103c.put(Integer.valueOf(a3), a2);
        }
        return a2;
    }

    public final <T> void a(int i, T t) {
        synchronized (this.f5101a) {
            a<?> remove = this.f5103c.remove(Integer.valueOf(i));
            if (remove != null) {
                if (!(t == null || remove.g.getClass() == t.getClass())) {
                    Log.w("SequencedFutureManager", "Type mismatch, expected " + remove.g.getClass() + ", but was " + t.getClass());
                }
                remove.a((a<?>) t);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ArrayList<a> arrayList;
        synchronized (this.f5101a) {
            arrayList = new ArrayList(this.f5103c.values());
            this.f5103c.clear();
        }
        for (a aVar : arrayList) {
            aVar.a((a) aVar.g);
        }
    }
}
