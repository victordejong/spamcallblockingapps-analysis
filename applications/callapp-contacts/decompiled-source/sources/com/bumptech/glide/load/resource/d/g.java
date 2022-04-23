package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.e.b.d;
import com.bumptech.glide.e.h;
import com.bumptech.glide.j;
import com.bumptech.glide.k;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.l;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    final com.bumptech.glide.b.a f7722a;

    /* renamed from: b  reason: collision with root package name */
    final List<b> f7723b;

    /* renamed from: c  reason: collision with root package name */
    final k f7724c;

    /* renamed from: d  reason: collision with root package name */
    boolean f7725d;
    a e;
    boolean f;
    a g;
    Bitmap h;
    a i;
    int j;
    int k;
    int l;
    private final Handler m;
    private final e n;
    private boolean o;
    private boolean p;
    private j<Bitmap> q;
    private l<Bitmap> r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/g$a.class */
    public static final class a extends com.bumptech.glide.e.a.c<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        final int f7726a;

        /* renamed from: b  reason: collision with root package name */
        Bitmap f7727b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f7728c;

        /* renamed from: d  reason: collision with root package name */
        private final long f7729d;

        a(Handler handler, int i, long j) {
            this.f7728c = handler;
            this.f7726a = i;
            this.f7729d = j;
        }

        @Override // com.bumptech.glide.e.a.j
        public final /* synthetic */ void a(Object obj, d dVar) {
            this.f7727b = (Bitmap) obj;
            this.f7728c.sendMessageAtTime(this.f7728c.obtainMessage(1, this), this.f7729d);
        }

        @Override // com.bumptech.glide.e.a.j
        public final void b(Drawable drawable) {
            this.f7727b = null;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/g$b.class */
    public interface b {
        void c();
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/g$c.class */
    final class c implements Handler.Callback {
        c() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what == 1) {
                g.this.a((a) message.obj);
                return true;
            } else if (message.what != 2) {
                return false;
            } else {
                g.this.f7724c.a((com.bumptech.glide.e.a.j<?>) ((a) message.obj));
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(com.bumptech.glide.c cVar, com.bumptech.glide.b.a aVar, int i, int i2, l<Bitmap> lVar, Bitmap bitmap) {
        this(cVar.f7232a, com.bumptech.glide.c.b(cVar.f7233b.getBaseContext()), aVar, null, com.bumptech.glide.c.b(cVar.f7233b.getBaseContext()).d().a((com.bumptech.glide.e.a<?>) h.b(com.bumptech.glide.load.engine.j.f7555b).a(true).b(true).b(i, i2)), lVar, bitmap);
    }

    g(e eVar, k kVar, com.bumptech.glide.b.a aVar, Handler handler, j<Bitmap> jVar, l<Bitmap> lVar, Bitmap bitmap) {
        this.f7723b = new ArrayList();
        this.f7724c = kVar;
        Handler handler2 = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.n = eVar;
        this.m = handler2;
        this.q = jVar;
        this.f7722a = aVar;
        a(lVar, bitmap);
    }

    private void c() {
        if (!this.f7725d) {
            this.f7725d = true;
            this.f = false;
            d();
        }
    }

    private void d() {
        if (this.f7725d && !this.o) {
            if (this.p) {
                com.bumptech.glide.g.j.a(this.i == null, "Pending target must be null when starting from the first frame");
                this.f7722a.f();
                this.p = false;
            }
            a aVar = this.i;
            if (aVar != null) {
                this.i = null;
                a(aVar);
                return;
            }
            this.o = true;
            int c2 = this.f7722a.c();
            this.f7722a.b();
            this.g = new a(this.m, this.f7722a.e(), SystemClock.uptimeMillis() + c2);
            this.q.a((com.bumptech.glide.e.a<?>) h.b(e())).a(this.f7722a).a((j<Bitmap>) this.g);
        }
    }

    private static f e() {
        return new com.bumptech.glide.f.e(Double.valueOf(Math.random()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return this.f7722a.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(l<Bitmap> lVar, Bitmap bitmap) {
        this.r = (l) com.bumptech.glide.g.j.a(lVar, "Argument must not be null");
        this.h = (Bitmap) com.bumptech.glide.g.j.a(bitmap, "Argument must not be null");
        this.q = this.q.a((com.bumptech.glide.e.a<?>) new h().a(lVar));
        this.j = com.bumptech.glide.g.k.a(bitmap);
        this.k = bitmap.getWidth();
        this.l = bitmap.getHeight();
    }

    final void a(a aVar) {
        this.o = false;
        if (this.f) {
            this.m.obtainMessage(2, aVar).sendToTarget();
        } else if (this.f7725d) {
            if (aVar.f7727b != null) {
                b();
                a aVar2 = this.e;
                this.e = aVar;
                for (int size = this.f7723b.size() - 1; size >= 0; size--) {
                    this.f7723b.get(size).c();
                }
                if (aVar2 != null) {
                    this.m.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            d();
        } else if (this.p) {
            this.m.obtainMessage(2, aVar).sendToTarget();
        } else {
            this.i = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b bVar) {
        if (this.f) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        } else if (!this.f7723b.contains(bVar)) {
            boolean isEmpty = this.f7723b.isEmpty();
            this.f7723b.add(bVar);
            if (isEmpty) {
                c();
            }
        } else {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        Bitmap bitmap = this.h;
        if (bitmap != null) {
            this.n.a(bitmap);
            this.h = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(b bVar) {
        this.f7723b.remove(bVar);
        if (this.f7723b.isEmpty()) {
            this.f7725d = false;
        }
    }
}
