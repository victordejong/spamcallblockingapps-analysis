package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.exoplayer2.upstream.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/c.class */
public interface AbstractC11534c {

    /* renamed from: com.google.android.exoplayer2.upstream.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/c$a.class */
    public interface AbstractC11535a {

        /* renamed from: com.google.android.exoplayer2.upstream.c$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/c$a$a.class */
        public static final class C11536a {

            /* renamed from: a */
            final CopyOnWriteArrayList<C11537a> f38392a = new CopyOnWriteArrayList<>();

            /* renamed from: com.google.android.exoplayer2.upstream.c$a$a$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/c$a$a$a.class */
            public static final class C11537a {

                /* renamed from: a */
                final Handler f38393a;

                /* renamed from: b */
                final AbstractC11535a f38394b;

                /* renamed from: c */
                boolean f38395c;

                public C11537a(Handler handler, AbstractC11535a abstractC11535a) {
                    this.f38393a = handler;
                    this.f38394b = abstractC11535a;
                }
            }

            /* renamed from: a */
            public static /* synthetic */ void m20183a(C11537a c11537a, int i, long j, long j2) {
                c11537a.f38394b.mo20185b(i, j, j2);
            }

            /* renamed from: a */
            public final void m20184a(final int i, final long j, final long j2) {
                Iterator<C11537a> it2 = this.f38392a.iterator();
                while (it2.hasNext()) {
                    final C11537a next = it2.next();
                    if (!next.f38395c) {
                        next.f38393a.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream._$$Lambda$c$a$a$8HHn_rXOBZgXVClyVWpyi_VaO64
                            @Override // java.lang.Runnable
                            public final void run() {
                                AbstractC11534c.AbstractC11535a.C11536a.m20183a(AbstractC11534c.AbstractC11535a.C11536a.C11537a.this, i, j, j2);
                            }
                        });
                    }
                }
            }

            /* renamed from: a */
            public final void m20182a(AbstractC11535a abstractC11535a) {
                Iterator<C11537a> it2 = this.f38392a.iterator();
                while (it2.hasNext()) {
                    C11537a next = it2.next();
                    if (next.f38394b == abstractC11535a) {
                        next.f38395c = true;
                        this.f38392a.remove(next);
                    }
                }
            }
        }

        /* renamed from: b */
        void mo20185b(int i, long j, long j2);
    }

    /* renamed from: a */
    AbstractC11590v mo20063a();

    /* renamed from: a */
    void mo20059a(Handler handler, AbstractC11535a abstractC11535a);

    /* renamed from: a */
    void mo20058a(AbstractC11535a abstractC11535a);
}
