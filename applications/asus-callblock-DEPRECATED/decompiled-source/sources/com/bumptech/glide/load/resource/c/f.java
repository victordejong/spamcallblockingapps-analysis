package com.bumptech.glide.load.resource.c;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.e;
import com.bumptech.glide.g.b.g;
import java.security.MessageDigest;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    final b f3637a;

    /* renamed from: b  reason: collision with root package name */
    final Handler f3638b;
    boolean c;
    boolean d;
    com.bumptech.glide.c<com.bumptech.glide.b.a, com.bumptech.glide.b.a, Bitmap, Bitmap> e;
    a f;
    boolean g;
    private final com.bumptech.glide.b.a h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/f$a.class */
    public static final class a extends g<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        final int f3639a;

        /* renamed from: b  reason: collision with root package name */
        Bitmap f3640b;
        private final Handler c;
        private final long d;

        public a(Handler handler, int i, long j) {
            this.c = handler;
            this.f3639a = i;
            this.d = j;
        }

        @Override // com.bumptech.glide.g.b.j
        public final /* synthetic */ void onResourceReady(Object obj, com.bumptech.glide.g.a.c cVar) {
            this.f3640b = (Bitmap) obj;
            this.c.sendMessageAtTime(this.c.obtainMessage(1, this), this.d);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/f$b.class */
    public interface b {
        void b(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/f$c.class */
    private final class c implements Handler.Callback {
        private c() {
        }

        /* synthetic */ c(f fVar, byte b2) {
            this();
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            boolean z;
            if (message.what == 1) {
                a aVar = (a) message.obj;
                f fVar = f.this;
                if (fVar.g) {
                    fVar.f3638b.obtainMessage(2, aVar).sendToTarget();
                } else {
                    a aVar2 = fVar.f;
                    fVar.f = aVar;
                    fVar.f3637a.b(aVar.f3639a);
                    if (aVar2 != null) {
                        fVar.f3638b.obtainMessage(2, aVar2).sendToTarget();
                    }
                    fVar.d = false;
                    fVar.b();
                }
                z = true;
            } else {
                if (message.what == 2) {
                    e.a((a) message.obj);
                }
                z = false;
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/f$d.class */
    public static final class d implements com.bumptech.glide.load.c {

        /* renamed from: a  reason: collision with root package name */
        private final UUID f3642a;

        public d() {
            this(UUID.randomUUID());
        }

        private d(UUID uuid) {
            this.f3642a = uuid;
        }

        @Override // com.bumptech.glide.load.c
        public final void a(MessageDigest messageDigest) {
            throw new UnsupportedOperationException("Not implemented");
        }

        public final boolean equals(Object obj) {
            return obj instanceof d ? ((d) obj).f3642a.equals(this.f3642a) : false;
        }

        public final int hashCode() {
            return this.f3642a.hashCode();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(android.content.Context r13, com.bumptech.glide.load.resource.c.f.b r14, com.bumptech.glide.b.a r15, int r16, int r17) {
        /*
            r12 = this;
            com.bumptech.glide.load.resource.c.h r0 = new com.bumptech.glide.load.resource.c.h
            r1 = r0
            r2 = r13
            com.bumptech.glide.e r2 = com.bumptech.glide.e.a(r2)
            com.bumptech.glide.load.b.a.c r2 = r2.f3405b
            r1.<init>(r2)
            r18 = r0
            com.bumptech.glide.load.resource.c.g r0 = new com.bumptech.glide.load.resource.c.g
            r1 = r0
            r1.<init>()
            r19 = r0
            com.bumptech.glide.load.b r0 = com.bumptech.glide.load.resource.a.b()
            r20 = r0
            com.bumptech.glide.h$a$a r0 = new com.bumptech.glide.h$a$a
            r1 = r0
            com.bumptech.glide.h$a r2 = new com.bumptech.glide.h$a
            r3 = r2
            r4 = r13
            com.bumptech.glide.h r4 = com.bumptech.glide.e.b(r4)
            r5 = r19
            java.lang.Class<com.bumptech.glide.b.a> r6 = com.bumptech.glide.b.a.class
            r3.<init>(r5, r6)
            r3 = r15
            r1.<init>(r3)
            r13 = r0
            com.bumptech.glide.d r0 = new com.bumptech.glide.d
            r1 = r0
            r2 = r13
            com.bumptech.glide.h$a r2 = com.bumptech.glide.h.a.this
            com.bumptech.glide.h r2 = com.bumptech.glide.h.this
            android.content.Context r2 = r2.f3448a
            r3 = r13
            com.bumptech.glide.h$a r3 = com.bumptech.glide.h.a.this
            com.bumptech.glide.h r3 = com.bumptech.glide.h.this
            com.bumptech.glide.e r3 = r3.d
            r4 = r13
            java.lang.Class<A> r4 = r4.f3456b
            r5 = r13
            com.bumptech.glide.h$a r5 = com.bumptech.glide.h.a.this
            com.bumptech.glide.load.c.j<A, T> r5 = r5.f3452a
            r6 = r13
            com.bumptech.glide.h$a r6 = com.bumptech.glide.h.a.this
            java.lang.Class<T> r6 = r6.f3453b
            java.lang.Class<android.graphics.Bitmap> r7 = android.graphics.Bitmap.class
            r8 = r13
            com.bumptech.glide.h$a r8 = com.bumptech.glide.h.a.this
            com.bumptech.glide.h r8 = com.bumptech.glide.h.this
            com.bumptech.glide.d.m r8 = r8.c
            r9 = r13
            com.bumptech.glide.h$a r9 = com.bumptech.glide.h.a.this
            com.bumptech.glide.h r9 = com.bumptech.glide.h.this
            com.bumptech.glide.d.g r9 = r9.f3449b
            r10 = r13
            com.bumptech.glide.h$a r10 = com.bumptech.glide.h.a.this
            com.bumptech.glide.h r10 = com.bumptech.glide.h.this
            com.bumptech.glide.h$b r10 = r10.e
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            com.bumptech.glide.d r0 = (com.bumptech.glide.d) r0
            r19 = r0
            r0 = r13
            boolean r0 = r0.c
            if (r0 == 0) goto L_0x0099
            r0 = r19
            r1 = r13
            A r1 = r1.f3455a
            com.bumptech.glide.c r0 = r0.b(r1)
        L_0x0099:
            r0 = r12
            r1 = r14
            r2 = r15
            r3 = r19
            r4 = r20
            com.bumptech.glide.c r3 = r3.a(r4)
            r4 = r18
            com.bumptech.glide.c r3 = r3.a(r4)
            r4 = 1
            com.bumptech.glide.c r3 = r3.a(r4)
            com.bumptech.glide.load.b.b r4 = com.bumptech.glide.load.b.b.NONE
            com.bumptech.glide.c r3 = r3.a(r4)
            r4 = r16
            r5 = r17
            com.bumptech.glide.c r3 = r3.a(r4, r5)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.c.f.<init>(android.content.Context, com.bumptech.glide.load.resource.c.f$b, com.bumptech.glide.b.a, int, int):void");
    }

    private f(b bVar, com.bumptech.glide.b.a aVar, com.bumptech.glide.c<com.bumptech.glide.b.a, com.bumptech.glide.b.a, Bitmap, Bitmap> cVar) {
        this.c = false;
        this.d = false;
        Handler handler = new Handler(Looper.getMainLooper(), new c(this, (byte) 0));
        this.f3637a = bVar;
        this.h = aVar;
        this.f3638b = handler;
        this.e = cVar;
    }

    public final void a() {
        this.c = false;
        if (this.f != null) {
            e.a(this.f);
            this.f = null;
        }
        this.g = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.c && !this.d) {
            this.d = true;
            this.h.a();
            long uptimeMillis = SystemClock.uptimeMillis();
            com.bumptech.glide.b.a aVar = this.h;
            this.e.a(new d()).a((com.bumptech.glide.c<com.bumptech.glide.b.a, com.bumptech.glide.b.a, Bitmap, Bitmap>) new a(this.f3638b, this.h.c, ((aVar.e.c <= 0 || aVar.c < 0) ? -1 : aVar.a(aVar.c)) + uptimeMillis));
        }
    }
}
