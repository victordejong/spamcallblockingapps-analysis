package androidx.media2.session;

import android.util.Log;
import androidx.p023b.C0428a;
import androidx.p024c.p025a.AbstractC0481a;
import java.io.Closeable;
import java.util.ArrayList;
/* renamed from: androidx.media2.session.v */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/v.class */
final class C2486v implements Closeable {

    /* renamed from: b */
    private int f9448b;

    /* renamed from: a */
    private final Object f9447a = new Object();

    /* renamed from: c */
    private C0428a<Integer, C2487a<?>> f9449c = new C0428a<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/v$a.class */
    public static final class C2487a<T> extends AbstractC0481a<T> {

        /* renamed from: f */
        final int f9450f;

        /* renamed from: g */
        final T f9451g;

        private C2487a(int i, T t) {
            this.f9450f = i;
            this.f9451g = t;
        }

        /* renamed from: a */
        static <T> C2487a<T> m40775a(int i, T t) {
            return new C2487a<>(i, t);
        }

        @Override // androidx.p024c.p025a.AbstractC0481a
        /* renamed from: a */
        public final boolean mo40774a(T t) {
            return super.mo40774a((C2487a<T>) t);
        }
    }

    /* renamed from: a */
    public final int m40778a() {
        int i;
        synchronized (this.f9447a) {
            i = this.f9448b;
            this.f9448b = i + 1;
        }
        return i;
    }

    /* renamed from: a */
    public final <T> C2487a<T> m40776a(T t) {
        C2487a<T> m40775a;
        synchronized (this.f9447a) {
            int m40778a = m40778a();
            m40775a = C2487a.m40775a(m40778a, t);
            this.f9449c.put(Integer.valueOf(m40778a), m40775a);
        }
        return m40775a;
    }

    /* renamed from: a */
    public final <T> void m40777a(int i, T t) {
        synchronized (this.f9447a) {
            C2487a<?> remove = this.f9449c.remove(Integer.valueOf(i));
            if (remove != null) {
                if (t != null && remove.f9451g.getClass() != t.getClass()) {
                    Log.w("SequencedFutureManager", "Type mismatch, expected " + remove.f9451g.getClass() + ", but was " + t.getClass());
                }
                remove.mo40774a((C2487a<?>) t);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ArrayList<C2487a> arrayList;
        synchronized (this.f9447a) {
            arrayList = new ArrayList(this.f9449c.values());
            this.f9449c.clear();
        }
        for (C2487a c2487a : arrayList) {
            c2487a.mo40774a((C2487a) c2487a.f9451g);
        }
    }
}
