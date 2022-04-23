package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.core.e.c;
import com.bumptech.glide.e.i;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.load.engine.b.a;
import com.bumptech.glide.load.engine.b.h;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.engine.p;
import com.bumptech.glide.load.f;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k.class */
public final class k implements h.a, m, p.a {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f7558a = Log.isLoggable("Engine", 2);

    /* renamed from: b  reason: collision with root package name */
    private final r f7559b;

    /* renamed from: c  reason: collision with root package name */
    private final o f7560c;

    /* renamed from: d  reason: collision with root package name */
    private final h f7561d;
    private final b e;
    private final x f;
    private final c g;
    private final a h;
    private final com.bumptech.glide.load.engine.a i;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final h.d f7562a;

        /* renamed from: b  reason: collision with root package name */
        final c.a<h<?>> f7563b = com.bumptech.glide.g.a.a.a(DrawableConstants.CtaButton.WIDTH_DIPS, new a.AbstractC0143a<h<?>>() { // from class: com.bumptech.glide.load.engine.k.a.1
            @Override // com.bumptech.glide.g.a.a.AbstractC0143a
            public final /* synthetic */ h<?> a() {
                return new h<>(a.this.f7562a, a.this.f7563b);
            }
        });

        /* renamed from: c  reason: collision with root package name */
        int f7564c;

        a(h.d dVar) {
            this.f7562a = dVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final com.bumptech.glide.load.engine.c.a f7566a;

        /* renamed from: b  reason: collision with root package name */
        final com.bumptech.glide.load.engine.c.a f7567b;

        /* renamed from: c  reason: collision with root package name */
        final com.bumptech.glide.load.engine.c.a f7568c;

        /* renamed from: d  reason: collision with root package name */
        final com.bumptech.glide.load.engine.c.a f7569d;
        final m e;
        final p.a f;
        final c.a<l<?>> g = com.bumptech.glide.g.a.a.a(DrawableConstants.CtaButton.WIDTH_DIPS, new a.AbstractC0143a<l<?>>() { // from class: com.bumptech.glide.load.engine.k.b.1
            @Override // com.bumptech.glide.g.a.a.AbstractC0143a
            public final /* synthetic */ l<?> a() {
                return new l<>(b.this.f7566a, b.this.f7567b, b.this.f7568c, b.this.f7569d, b.this.e, b.this.f, b.this.g);
            }
        });

        b(com.bumptech.glide.load.engine.c.a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, com.bumptech.glide.load.engine.c.a aVar4, m mVar, p.a aVar5) {
            this.f7566a = aVar;
            this.f7567b = aVar2;
            this.f7568c = aVar3;
            this.f7569d = aVar4;
            this.e = mVar;
            this.f = aVar5;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$c.class */
    static final class c implements h.d {

        /* renamed from: a  reason: collision with root package name */
        private final a.AbstractC0146a f7571a;

        /* renamed from: b  reason: collision with root package name */
        private volatile com.bumptech.glide.load.engine.b.a f7572b;

        c(a.AbstractC0146a aVar) {
            this.f7571a = aVar;
        }

        @Override // com.bumptech.glide.load.engine.h.d
        public final com.bumptech.glide.load.engine.b.a a() {
            if (this.f7572b == null) {
                synchronized (this) {
                    if (this.f7572b == null) {
                        this.f7572b = this.f7571a.a();
                    }
                    if (this.f7572b == null) {
                        this.f7572b = new com.bumptech.glide.load.engine.b.b();
                    }
                }
            }
            return this.f7572b;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$d.class */
    public final class d {

        /* renamed from: a  reason: collision with root package name */
        public final l<?> f7573a;

        /* renamed from: b  reason: collision with root package name */
        public final i f7574b;

        d(i iVar, l<?> lVar) {
            this.f7574b = iVar;
            this.f7573a = lVar;
        }
    }

    k(com.bumptech.glide.load.engine.b.h hVar, a.AbstractC0146a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, com.bumptech.glide.load.engine.c.a aVar4, com.bumptech.glide.load.engine.c.a aVar5, r rVar, o oVar, com.bumptech.glide.load.engine.a aVar6, b bVar, a aVar7, x xVar, boolean z) {
        this.f7561d = hVar;
        c cVar = new c(aVar);
        this.g = cVar;
        com.bumptech.glide.load.engine.a aVar8 = aVar6 == null ? new com.bumptech.glide.load.engine.a(z) : aVar6;
        this.i = aVar8;
        synchronized (this) {
            synchronized (aVar8) {
                aVar8.f7434c = this;
            }
        }
        this.f7560c = oVar == null ? new o() : oVar;
        this.f7559b = rVar == null ? new r() : rVar;
        this.e = bVar == null ? new b(aVar2, aVar3, aVar4, aVar5, this, this) : bVar;
        this.h = aVar7 == null ? new a(cVar) : aVar7;
        this.f = xVar == null ? new x() : xVar;
        hVar.a(this);
    }

    public k(com.bumptech.glide.load.engine.b.h hVar, a.AbstractC0146a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, com.bumptech.glide.load.engine.c.a aVar4, com.bumptech.glide.load.engine.c.a aVar5, boolean z) {
        this(hVar, aVar, aVar2, aVar3, aVar4, aVar5, null, null, null, null, null, null, z);
    }

    public static void a(u<?> uVar) {
        if (uVar instanceof p) {
            ((p) uVar).f();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    private static void a(String str, long j, f fVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(com.bumptech.glide.g.f.a(j));
        sb.append("ms, key: ");
        sb.append(fVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ed A[Catch: all -> 0x00e1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:10:0x0033, B:12:0x0043, B:17:0x0052, B:18:0x0061, B:21:0x0079, B:23:0x0081, B:24:0x008b, B:27:0x00a0, B:32:0x00cd, B:38:0x00ed, B:40:0x0107, B:42:0x0115, B:43:0x011e, B:43:0x011e, B:44:0x0121, B:45:0x012e, B:47:0x0272, B:48:0x027c, B:48:0x027c, B:49:0x027f, B:51:0x028a, B:55:0x028e), top: B:63:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x028d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <R> com.bumptech.glide.load.engine.k.d a(com.bumptech.glide.e r12, java.lang.Object r13, com.bumptech.glide.load.f r14, int r15, int r16, java.lang.Class<?> r17, java.lang.Class<R> r18, com.bumptech.glide.h r19, com.bumptech.glide.load.engine.j r20, java.util.Map<java.lang.Class<?>, com.bumptech.glide.load.l<?>> r21, boolean r22, boolean r23, com.bumptech.glide.load.h r24, boolean r25, boolean r26, boolean r27, boolean r28, com.bumptech.glide.e.i r29, java.util.concurrent.Executor r30) {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.k.a(com.bumptech.glide.e, java.lang.Object, com.bumptech.glide.load.f, int, int, java.lang.Class, java.lang.Class, com.bumptech.glide.h, com.bumptech.glide.load.engine.j, java.util.Map, boolean, boolean, com.bumptech.glide.load.h, boolean, boolean, boolean, boolean, com.bumptech.glide.e.i, java.util.concurrent.Executor):com.bumptech.glide.load.engine.k$d");
    }

    @Override // com.bumptech.glide.load.engine.m
    public final void a(l<?> lVar, f fVar) {
        synchronized (this) {
            this.f7559b.a(fVar, lVar);
        }
    }

    @Override // com.bumptech.glide.load.engine.m
    public final void a(l<?> lVar, f fVar, p<?> pVar) {
        synchronized (this) {
            if (pVar != null) {
                if (pVar.f7590a) {
                    this.i.a(fVar, pVar);
                }
            }
            this.f7559b.a(fVar, lVar);
        }
    }

    @Override // com.bumptech.glide.load.engine.p.a
    public final void a(f fVar, p<?> pVar) {
        this.i.a(fVar);
        if (pVar.f7590a) {
            this.f7561d.a(fVar, pVar);
        } else {
            this.f.a(pVar, false);
        }
    }

    @Override // com.bumptech.glide.load.engine.b.h.a
    public final void b(u<?> uVar) {
        this.f.a(uVar, true);
    }
}
