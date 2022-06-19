package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vk3.class */
public final class vk3 {

    /* renamed from: a */
    public final int f31235a;

    /* renamed from: b */
    public final mk3 f31236b;

    /* renamed from: c */
    private final CopyOnWriteArrayList<uk3> f31237c;

    public vk3() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    private vk3(CopyOnWriteArrayList<uk3> copyOnWriteArrayList, int i, mk3 mk3Var, long j) {
        this.f31237c = copyOnWriteArrayList;
        this.f31235a = i;
        this.f31236b = mk3Var;
    }

    /* renamed from: n */
    private static final long m9940n(long j) {
        long m9369a = C7130x2.m9369a(j);
        if (m9369a == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return m9369a;
    }

    /* renamed from: a */
    public final vk3 m9953a(int i, mk3 mk3Var, long j) {
        return new vk3(this.f31237c, i, mk3Var, 0L);
    }

    /* renamed from: b */
    public final void m9952b(Handler handler, wk3 wk3Var) {
        this.f31237c.add(new uk3(handler, wk3Var));
    }

    /* renamed from: c */
    public final void m9951c(wk3 wk3Var) {
        Iterator<uk3> it = this.f31237c.iterator();
        while (it.hasNext()) {
            uk3 next = it.next();
            if (next.f30657b == wk3Var) {
                this.f31237c.remove(next);
            }
        }
    }

    /* renamed from: d */
    public final void m9950d(dk3 dk3Var, int i, int i2, C7021u4 c7021u4, int i3, Object obj, long j, long j2) {
        m9949e(dk3Var, new jk3(1, -1, null, 0, null, m9940n(j), m9940n(j2)));
    }

    /* renamed from: e */
    public final void m9949e(dk3 dk3Var, jk3 jk3Var) {
        Iterator<uk3> it = this.f31237c.iterator();
        while (it.hasNext()) {
            uk3 next = it.next();
            C7101wa.m9713O(next.f30656a, new Runnable(this, next.f30657b, dk3Var, jk3Var) { // from class: com.google.android.gms.internal.ads.pk3

                /* renamed from: d */
                private final vk3 f28042d;

                /* renamed from: e */
                private final wk3 f28043e;

                /* renamed from: f */
                private final dk3 f28044f;

                /* renamed from: g */
                private final jk3 f28045g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28042d = this;
                    this.f28043e = wk3Var;
                    this.f28044f = dk3Var;
                    this.f28045g = jk3Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vk3 vk3Var = this.f28042d;
                    this.f28043e.mo9569d(vk3Var.f31235a, vk3Var.f31236b, this.f28044f, this.f28045g);
                }
            });
        }
    }

    /* renamed from: f */
    public final void m9948f(dk3 dk3Var, int i, int i2, C7021u4 c7021u4, int i3, Object obj, long j, long j2) {
        m9947g(dk3Var, new jk3(1, -1, null, 0, null, m9940n(j), m9940n(j2)));
    }

    /* renamed from: g */
    public final void m9947g(dk3 dk3Var, jk3 jk3Var) {
        Iterator<uk3> it = this.f31237c.iterator();
        while (it.hasNext()) {
            uk3 next = it.next();
            C7101wa.m9713O(next.f30656a, new Runnable(this, next.f30657b, dk3Var, jk3Var) { // from class: com.google.android.gms.internal.ads.qk3

                /* renamed from: d */
                private final vk3 f28543d;

                /* renamed from: e */
                private final wk3 f28544e;

                /* renamed from: f */
                private final dk3 f28545f;

                /* renamed from: g */
                private final jk3 f28546g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28543d = this;
                    this.f28544e = wk3Var;
                    this.f28545f = dk3Var;
                    this.f28546g = jk3Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vk3 vk3Var = this.f28543d;
                    this.f28544e.mo9568g(vk3Var.f31235a, vk3Var.f31236b, this.f28545f, this.f28546g);
                }
            });
        }
    }

    /* renamed from: h */
    public final void m9946h(dk3 dk3Var, int i, int i2, C7021u4 c7021u4, int i3, Object obj, long j, long j2) {
        m9945i(dk3Var, new jk3(1, -1, null, 0, null, m9940n(j), m9940n(j2)));
    }

    /* renamed from: i */
    public final void m9945i(dk3 dk3Var, jk3 jk3Var) {
        Iterator<uk3> it = this.f31237c.iterator();
        while (it.hasNext()) {
            uk3 next = it.next();
            C7101wa.m9713O(next.f30656a, new Runnable(this, next.f30657b, dk3Var, jk3Var) { // from class: com.google.android.gms.internal.ads.rk3

                /* renamed from: d */
                private final vk3 f29008d;

                /* renamed from: e */
                private final wk3 f29009e;

                /* renamed from: f */
                private final dk3 f29010f;

                /* renamed from: g */
                private final jk3 f29011g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29008d = this;
                    this.f29009e = wk3Var;
                    this.f29010f = dk3Var;
                    this.f29011g = jk3Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vk3 vk3Var = this.f29008d;
                    this.f29009e.mo9567j(vk3Var.f31235a, vk3Var.f31236b, this.f29010f, this.f29011g);
                }
            });
        }
    }

    /* renamed from: j */
    public final void m9944j(dk3 dk3Var, int i, int i2, C7021u4 c7021u4, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
        m9943k(dk3Var, new jk3(1, -1, null, 0, null, m9940n(j), m9940n(j2)), iOException, z);
    }

    /* renamed from: k */
    public final void m9943k(dk3 dk3Var, jk3 jk3Var, IOException iOException, boolean z) {
        Iterator<uk3> it = this.f31237c.iterator();
        while (it.hasNext()) {
            uk3 next = it.next();
            C7101wa.m9713O(next.f30656a, new Runnable(this, next.f30657b, dk3Var, jk3Var, iOException, z) { // from class: com.google.android.gms.internal.ads.sk3

                /* renamed from: d */
                private final vk3 f29556d;

                /* renamed from: e */
                private final wk3 f29557e;

                /* renamed from: f */
                private final dk3 f29558f;

                /* renamed from: g */
                private final jk3 f29559g;

                /* renamed from: h */
                private final IOException f29560h;

                /* renamed from: i */
                private final boolean f29561i;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29556d = this;
                    this.f29557e = wk3Var;
                    this.f29558f = dk3Var;
                    this.f29559g = jk3Var;
                    this.f29560h = iOException;
                    this.f29561i = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vk3 vk3Var = this.f29556d;
                    this.f29557e.mo9566r(vk3Var.f31235a, vk3Var.f31236b, this.f29558f, this.f29559g, this.f29560h, this.f29561i);
                }
            });
        }
    }

    /* renamed from: l */
    public final void m9942l(int i, C7021u4 c7021u4, int i2, Object obj, long j) {
        m9941m(new jk3(1, i, c7021u4, 0, null, m9940n(j), -9223372036854775807L));
    }

    /* renamed from: m */
    public final void m9941m(jk3 jk3Var) {
        Iterator<uk3> it = this.f31237c.iterator();
        while (it.hasNext()) {
            uk3 next = it.next();
            C7101wa.m9713O(next.f30656a, new Runnable(this, next.f30657b, jk3Var) { // from class: com.google.android.gms.internal.ads.tk3

                /* renamed from: d */
                private final vk3 f30031d;

                /* renamed from: e */
                private final wk3 f30032e;

                /* renamed from: f */
                private final jk3 f30033f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f30031d = this;
                    this.f30032e = wk3Var;
                    this.f30033f = jk3Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vk3 vk3Var = this.f30031d;
                    this.f30032e.mo9570b(vk3Var.f31235a, vk3Var.f31236b, this.f30033f);
                }
            });
        }
    }
}
