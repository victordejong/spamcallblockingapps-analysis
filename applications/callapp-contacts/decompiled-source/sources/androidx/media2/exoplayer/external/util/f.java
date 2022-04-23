package androidx.media2.exoplayer.external.util;

import android.os.Handler;
import androidx.media2.exoplayer.external.util.f;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/f.class */
public final class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<b<T>> f4133a = new CopyOnWriteArrayList<>();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/f$a.class */
    public interface a<T> {
        void a(T t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/f$b.class */
    public static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f4134a;

        /* renamed from: b  reason: collision with root package name */
        boolean f4135b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f4136c;

        public b(Handler handler, T t) {
            this.f4136c = handler;
            this.f4134a = t;
        }

        public final void a(final a<T> aVar) {
            this.f4136c.post(new Runnable(this, aVar) { // from class: androidx.media2.exoplayer.external.util.g

                /* renamed from: a  reason: collision with root package name */
                private final f.b f4137a;

                /* renamed from: b  reason: collision with root package name */
                private final f.a f4138b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4137a = this;
                    this.f4138b = aVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    f.b bVar = this.f4137a;
                    f.a aVar2 = this.f4138b;
                    if (!bVar.f4135b) {
                        aVar2.a(bVar.f4134a);
                    }
                }
            });
        }
    }

    public final void a(Handler handler, T t) {
        androidx.media2.exoplayer.external.util.a.a((handler == null || t == null) ? false : true);
        a((f<T>) t);
        this.f4133a.add(new b<>(handler, t));
    }

    public final void a(a<T> aVar) {
        Iterator<b<T>> it2 = this.f4133a.iterator();
        while (it2.hasNext()) {
            it2.next().a(aVar);
        }
    }

    public final void a(T t) {
        Iterator<b<T>> it2 = this.f4133a.iterator();
        while (it2.hasNext()) {
            b<T> next = it2.next();
            if (next.f4134a == t) {
                next.f4135b = true;
                this.f4133a.remove(next);
            }
        }
    }
}
