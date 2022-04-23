package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.b;
import com.bytedance.sdk.a.b.a.c.g;
import com.bytedance.sdk.a.b.a.c.j;
import com.bytedance.sdk.a.b.a.g.e;
import java.io.IOException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/x.class */
public final class x implements e {

    /* renamed from: a  reason: collision with root package name */
    final v f8161a;

    /* renamed from: b  reason: collision with root package name */
    final j f8162b;

    /* renamed from: c  reason: collision with root package name */
    final y f8163c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f8164d;
    private p e;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/x$a.class */
    public final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ x f8165a;

        /* renamed from: c  reason: collision with root package name */
        private final f f8166c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String a() {
            return this.f8165a.f8163c.a().f();
        }

        @Override // com.bytedance.sdk.a.b.a.b
        public final void b() {
            IOException e;
            boolean z = true;
            try {
                try {
                    aa f = this.f8165a.f();
                    try {
                        if (this.f8165a.f8162b.a()) {
                            this.f8166c.a(this.f8165a, new IOException("Canceled"));
                        } else {
                            this.f8166c.a(this.f8165a, f);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        if (z) {
                            e b2 = e.b();
                            b2.a(4, "Callback failure for " + this.f8165a.d(), e);
                        } else {
                            this.f8165a.e.a(this.f8165a, e);
                            this.f8166c.a(this.f8165a, e);
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    z = false;
                }
            } finally {
                this.f8165a.f8161a.s().a(this);
            }
        }
    }

    private x(v vVar, y yVar, boolean z) {
        this.f8161a = vVar;
        this.f8163c = yVar;
        this.f8164d = z;
        this.f8162b = new j(vVar, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x a(v vVar, y yVar, boolean z) {
        x xVar = new x(vVar, yVar, z);
        xVar.e = vVar.x().a(xVar);
        return xVar;
    }

    private void g() {
        this.f8162b.a(e.b().a("response.body().close()"));
    }

    @Override // com.bytedance.sdk.a.b.e
    public final aa a() throws IOException {
        synchronized (this) {
            if (!this.f) {
                this.f = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        g();
        this.e.a(this);
        try {
            try {
                this.f8161a.s().a(this);
                aa f = f();
                if (f != null) {
                    this.f8161a.s().b(this);
                    return f;
                }
                throw new IOException("Canceled");
            } catch (IOException e) {
                this.e.a(this, e);
                throw e;
            }
        } catch (Throwable th) {
            this.f8161a.s().b(this);
            throw th;
        }
    }

    public final boolean b() {
        return this.f8162b.a();
    }

    /* renamed from: c */
    public final x clone() {
        return a(this.f8161a, this.f8163c, this.f8164d);
    }

    final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append(b() ? "canceled " : "");
        sb.append(this.f8164d ? "web socket" : "call");
        sb.append(" to ");
        sb.append(e());
        return sb.toString();
    }

    final String e() {
        return this.f8163c.a().m();
    }

    final aa f() throws IOException {
        ArrayList arrayList = new ArrayList(this.f8161a.v());
        arrayList.add(this.f8162b);
        arrayList.add(new com.bytedance.sdk.a.b.a.c.a(this.f8161a.f()));
        arrayList.add(new com.bytedance.sdk.a.b.a.a.a(this.f8161a.g()));
        arrayList.add(new com.bytedance.sdk.a.b.a.b.a(this.f8161a));
        if (!this.f8164d) {
            arrayList.addAll(this.f8161a.w());
        }
        arrayList.add(new com.bytedance.sdk.a.b.a.c.b(this.f8164d));
        return new g(arrayList, null, null, null, 0, this.f8163c, this, this.e, this.f8161a.a(), this.f8161a.b(), this.f8161a.c()).a(this.f8163c);
    }
}
