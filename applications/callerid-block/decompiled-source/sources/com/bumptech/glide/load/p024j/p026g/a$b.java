package com.bumptech.glide.load.p024j.p026g;

import com.bumptech.glide.p017k.C0724d;
import com.bumptech.glide.p029o.C0857k;
import java.nio.ByteBuffer;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.j.g.a$b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/a$b.class */
class a$b {

    /* renamed from: a */
    private final Queue<C0724d> f3695a = C0857k.m10753e(0);

    a$b() {
    }

    /* renamed from: a */
    C0724d m10953a(ByteBuffer byteBuffer) {
        C0724d dVar;
        synchronized (this) {
            C0724d poll = this.f3695a.poll();
            dVar = poll;
            if (poll == null) {
                dVar = new C0724d();
            }
            dVar.m11223p(byteBuffer);
        }
        return dVar;
    }

    /* renamed from: b */
    void m10952b(C0724d dVar) {
        synchronized (this) {
            dVar.m11238a();
            this.f3695a.offer(dVar);
        }
    }
}
