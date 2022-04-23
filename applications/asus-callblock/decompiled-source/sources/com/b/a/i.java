package com.b.a;

import com.b.a.a.a.e;
import com.b.a.a.b.o;
import java.net.Socket;
/* loaded from: classes-dex2jar.jar:com/b/a/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    final j f3321a;

    /* renamed from: b  reason: collision with root package name */
    public final y f3322b;
    public Socket c;
    e e;
    o f;
    long h;
    public o i;
    int j;
    private Object k;
    boolean d = false;
    public t g = t.HTTP_1_1;

    public i(j jVar, y yVar) {
        this.f3321a = jVar;
        this.f3322b = yVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.b.a.u r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.i.a(com.b.a.u, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Object obj) {
        if (!e()) {
            synchronized (this.f3321a) {
                if (this.k != null) {
                    throw new IllegalStateException("Connection already has an owner!");
                }
                this.k = obj;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        boolean z;
        synchronized (this.f3321a) {
            if (this.k == null) {
                z = false;
            } else {
                this.k = null;
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return !this.c.isClosed() && !this.c.isInputShutdown() && !this.c.isOutputShutdown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return this.f == null || this.f.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long d() {
        return this.f == null ? this.h : this.f.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e() {
        return this.f != null;
    }

    public final String toString() {
        return "Connection{" + this.f3322b.f3354a.f3186b + ":" + this.f3322b.f3354a.c + ", proxy=" + this.f3322b.f3355b + " hostAddress=" + this.f3322b.c.getAddress().getHostAddress() + " cipherSuite=" + (this.i != null ? this.i.f3334a : "none") + " protocol=" + this.g + '}';
    }
}
