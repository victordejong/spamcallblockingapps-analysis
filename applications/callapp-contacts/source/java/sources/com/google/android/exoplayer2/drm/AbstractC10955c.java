package com.google.android.exoplayer2.drm;

import android.os.Handler;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.exoplayer2.drm.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/c.class */
public interface AbstractC10955c {

    /* renamed from: com.google.android.exoplayer2.drm.c$_CC */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/c$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(AbstractC10955c abstractC10955c, int i, AbstractC11315r.C11316a c11316a) {
        }

        public static void $default$a(AbstractC10955c abstractC10955c, int i, AbstractC11315r.C11316a c11316a, Exception exc) {
        }

        public static void $default$b(AbstractC10955c abstractC10955c, int i, AbstractC11315r.C11316a c11316a) {
        }

        public static void $default$c(AbstractC10955c abstractC10955c, int i, AbstractC11315r.C11316a c11316a) {
        }

        public static void $default$d(AbstractC10955c abstractC10955c, int i, AbstractC11315r.C11316a c11316a) {
        }

        public static void $default$e(AbstractC10955c abstractC10955c, int i, AbstractC11315r.C11316a c11316a) {
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/c$a.class */
    public static final class C10956a {

        /* renamed from: a */
        public final int f35466a;

        /* renamed from: b */
        public final AbstractC11315r.C11316a f35467b;

        /* renamed from: c */
        private final CopyOnWriteArrayList<C10957a> f35468c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.android.exoplayer2.drm.c$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/c$a$a.class */
        public static final class C10957a {

            /* renamed from: a */
            public Handler f35469a;

            /* renamed from: b */
            public AbstractC10955c f35470b;

            public C10957a(Handler handler, AbstractC10955c abstractC10955c) {
                this.f35469a = handler;
                this.f35470b = abstractC10955c;
            }
        }

        public C10956a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private C10956a(CopyOnWriteArrayList<C10957a> copyOnWriteArrayList, int i, AbstractC11315r.C11316a c11316a) {
            this.f35468c = copyOnWriteArrayList;
            this.f35466a = i;
            this.f35467b = c11316a;
        }

        /* renamed from: a */
        public /* synthetic */ void m21861a(AbstractC10955c abstractC10955c) {
            abstractC10955c.mo19596e(this.f35466a, this.f35467b);
        }

        /* renamed from: a */
        public /* synthetic */ void m21860a(AbstractC10955c abstractC10955c, Exception exc) {
            abstractC10955c.mo19602a(this.f35466a, this.f35467b, exc);
        }

        /* renamed from: b */
        public /* synthetic */ void m21857b(AbstractC10955c abstractC10955c) {
            abstractC10955c.mo19597d(this.f35466a, this.f35467b);
        }

        /* renamed from: c */
        public /* synthetic */ void m21855c(AbstractC10955c abstractC10955c) {
            abstractC10955c.mo19599c(this.f35466a, this.f35467b);
        }

        /* renamed from: d */
        public /* synthetic */ void m21853d(AbstractC10955c abstractC10955c) {
            abstractC10955c.mo19601b(this.f35466a, this.f35467b);
        }

        /* renamed from: e */
        public /* synthetic */ void m21851e(AbstractC10955c abstractC10955c) {
            abstractC10955c.mo19606a(this.f35466a, this.f35467b);
        }

        /* renamed from: a */
        public final C10956a m21863a(int i, AbstractC11315r.C11316a c11316a) {
            return new C10956a(this.f35468c, i, c11316a);
        }

        /* renamed from: a */
        public final void m21864a() {
            Iterator<C10957a> it2 = this.f35468c.iterator();
            while (it2.hasNext()) {
                C10957a next = it2.next();
                final AbstractC10955c abstractC10955c = next.f35470b;
                C11599af.m19984a(next.f35469a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$up52avUaT9X1ehp2mXY_yQ_dMPA
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10955c.C10956a.this.m21851e(abstractC10955c);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m21862a(Handler handler, AbstractC10955c abstractC10955c) {
            C11593a.m20020b(handler);
            C11593a.m20020b(abstractC10955c);
            this.f35468c.add(new C10957a(handler, abstractC10955c));
        }

        /* renamed from: a */
        public final void m21859a(final Exception exc) {
            Iterator<C10957a> it2 = this.f35468c.iterator();
            while (it2.hasNext()) {
                C10957a next = it2.next();
                final AbstractC10955c abstractC10955c = next.f35470b;
                C11599af.m19984a(next.f35469a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$q8M4mxe6b4tm3DTvKgHTeK_1Mhg
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10955c.C10956a.this.m21860a(abstractC10955c, exc);
                    }
                });
            }
        }

        /* renamed from: b */
        public final void m21858b() {
            Iterator<C10957a> it2 = this.f35468c.iterator();
            while (it2.hasNext()) {
                C10957a next = it2.next();
                final AbstractC10955c abstractC10955c = next.f35470b;
                C11599af.m19984a(next.f35469a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$z7jDPGaJ8i2s3C5k7bBkTGKM_Hk
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10955c.C10956a.this.m21853d(abstractC10955c);
                    }
                });
            }
        }

        /* renamed from: c */
        public final void m21856c() {
            Iterator<C10957a> it2 = this.f35468c.iterator();
            while (it2.hasNext()) {
                C10957a next = it2.next();
                final AbstractC10955c abstractC10955c = next.f35470b;
                C11599af.m19984a(next.f35469a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$04GcogedEUb2CvSWjusVuJhzeh8
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10955c.C10956a.this.m21855c(abstractC10955c);
                    }
                });
            }
        }

        /* renamed from: d */
        public final void m21854d() {
            Iterator<C10957a> it2 = this.f35468c.iterator();
            while (it2.hasNext()) {
                C10957a next = it2.next();
                final AbstractC10955c abstractC10955c = next.f35470b;
                C11599af.m19984a(next.f35469a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$3XW80SE7nF2xZQkloGDxKyF0_jU
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10955c.C10956a.this.m21857b(abstractC10955c);
                    }
                });
            }
        }

        /* renamed from: e */
        public final void m21852e() {
            Iterator<C10957a> it2 = this.f35468c.iterator();
            while (it2.hasNext()) {
                C10957a next = it2.next();
                final AbstractC10955c abstractC10955c = next.f35470b;
                C11599af.m19984a(next.f35469a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$wKNWQw3KOO5FAkx_ga61EjJqBIo
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10955c.C10956a.this.m21861a(abstractC10955c);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    void mo19606a(int i, AbstractC11315r.C11316a c11316a);

    /* renamed from: a */
    void mo19602a(int i, AbstractC11315r.C11316a c11316a, Exception exc);

    /* renamed from: b */
    void mo19601b(int i, AbstractC11315r.C11316a c11316a);

    /* renamed from: c */
    void mo19599c(int i, AbstractC11315r.C11316a c11316a);

    /* renamed from: d */
    void mo19597d(int i, AbstractC11315r.C11316a c11316a);

    /* renamed from: e */
    void mo19596e(int i, AbstractC11315r.C11316a c11316a);
}
