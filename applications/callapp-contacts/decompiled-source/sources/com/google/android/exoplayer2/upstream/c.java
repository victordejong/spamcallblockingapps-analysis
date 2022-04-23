package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import com.google.android.exoplayer2.upstream.c;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/c.class */
public interface c {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/c$a.class */
    public interface a {

        /* renamed from: com.google.android.exoplayer2.upstream.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/c$a$a.class */
        public static final class C0446a {

            /* renamed from: a  reason: collision with root package name */
            final CopyOnWriteArrayList<C0447a> f22131a = new CopyOnWriteArrayList<>();

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.google.android.exoplayer2.upstream.c$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/c$a$a$a.class */
            public static final class C0447a {

                /* renamed from: a  reason: collision with root package name */
                final Handler f22132a;

                /* renamed from: b  reason: collision with root package name */
                final a f22133b;

                /* renamed from: c  reason: collision with root package name */
                boolean f22134c;

                public C0447a(Handler handler, a aVar) {
                    this.f22132a = handler;
                    this.f22133b = aVar;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void a(C0447a aVar, int i, long j, long j2) {
                aVar.f22133b.b(i, j, j2);
            }

            public final void a(final int i, final long j, final long j2) {
                Iterator<C0447a> it2 = this.f22131a.iterator();
                while (it2.hasNext()) {
                    final C0447a next = it2.next();
                    if (!next.f22134c) {
                        next.f22132a.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream._$$Lambda$c$a$a$8HHn_rXOBZgXVClyVWpyi_VaO64
                            @Override // java.lang.Runnable
                            public final void run() {
                                c.a.C0446a.a(c.a.C0446a.C0447a.this, i, j, j2);
                            }
                        });
                    }
                }
            }

            public final void a(a aVar) {
                Iterator<C0447a> it2 = this.f22131a.iterator();
                while (it2.hasNext()) {
                    C0447a next = it2.next();
                    if (next.f22133b == aVar) {
                        next.f22134c = true;
                        this.f22131a.remove(next);
                    }
                }
            }
        }

        void b(int i, long j, long j2);
    }

    v a();

    void a(Handler handler, a aVar);

    void a(a aVar);
}
