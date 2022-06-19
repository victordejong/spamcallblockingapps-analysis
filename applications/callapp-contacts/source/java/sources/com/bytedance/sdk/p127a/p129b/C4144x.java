package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b;
import com.bytedance.sdk.p127a.p129b.p130a.p131a.C3996a;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4006a;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4018a;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4019b;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4026g;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4029j;
import com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e;
import java.io.IOException;
import java.util.ArrayList;
/* renamed from: com.bytedance.sdk.a.b.x */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/x.class */
public final class C4144x implements AbstractC4109e {

    /* renamed from: a */
    final C4140v f15206a;

    /* renamed from: b */
    final C4029j f15207b;

    /* renamed from: c */
    final C4146y f15208c;

    /* renamed from: d */
    final boolean f15209d;

    /* renamed from: e */
    private AbstractC4127p f15210e;

    /* renamed from: f */
    private boolean f15211f;

    /* renamed from: com.bytedance.sdk.a.b.x$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/x$a.class */
    public final class C4145a extends AbstractRunnableC4005b {

        /* renamed from: a */
        final /* synthetic */ C4144x f15212a;

        /* renamed from: c */
        private final AbstractC4110f f15213c;

        /* renamed from: a */
        public final String m36343a() {
            return this.f15212a.f15208c.m36341a().m36435f();
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
        /* renamed from: b */
        public final void mo36342b() {
            IOException e;
            boolean z = true;
            try {
                try {
                    C4098aa m36345f = this.f15212a.m36345f();
                    try {
                        if (this.f15212a.f15207b.m36860a()) {
                            this.f15213c.m36551a(this.f15212a, new IOException("Canceled"));
                        } else {
                            this.f15213c.m36552a(this.f15212a, m36345f);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        if (z) {
                            C4090e.m36643b().mo36651a(4, "Callback failure for " + this.f15212a.m36347d(), e);
                        } else {
                            this.f15212a.f15210e.m36490a(this.f15212a, e);
                            this.f15213c.m36551a(this.f15212a, e);
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    z = false;
                }
            } finally {
                this.f15212a.f15206a.m36377s().m36504a(this);
            }
        }
    }

    private C4144x(C4140v c4140v, C4146y c4146y, boolean z) {
        this.f15206a = c4140v;
        this.f15208c = c4146y;
        this.f15209d = z;
        this.f15207b = new C4029j(c4140v, z);
    }

    /* renamed from: a */
    public static C4144x m36351a(C4140v c4140v, C4146y c4146y, boolean z) {
        C4144x c4144x = new C4144x(c4140v, c4146y, z);
        c4144x.f15210e = c4140v.m36372x().mo36475a(c4144x);
        return c4144x;
    }

    /* renamed from: g */
    private void m36344g() {
        this.f15207b.m36854a(C4090e.m36643b().mo36650a("response.body().close()"));
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4109e
    /* renamed from: a */
    public final C4098aa mo36352a() throws IOException {
        synchronized (this) {
            if (this.f15211f) {
                throw new IllegalStateException("Already Executed");
            }
            this.f15211f = true;
        }
        m36344g();
        this.f15210e.m36496a(this);
        try {
            try {
                this.f15206a.m36377s().m36503a(this);
                C4098aa m36345f = m36345f();
                if (m36345f == null) {
                    throw new IOException("Canceled");
                }
                this.f15206a.m36377s().m36499b(this);
                return m36345f;
            } catch (IOException e) {
                this.f15210e.m36490a(this, e);
                throw e;
            }
        } catch (Throwable th) {
            this.f15206a.m36377s().m36499b(this);
            throw th;
        }
    }

    /* renamed from: b */
    public final boolean m36349b() {
        return this.f15207b.m36860a();
    }

    /* renamed from: c */
    public final C4144x clone() {
        return m36351a(this.f15206a, this.f15208c, this.f15209d);
    }

    /* renamed from: d */
    final String m36347d() {
        StringBuilder sb = new StringBuilder();
        sb.append(m36349b() ? "canceled " : "");
        sb.append(this.f15209d ? "web socket" : "call");
        sb.append(" to ");
        sb.append(m36346e());
        return sb.toString();
    }

    /* renamed from: e */
    final String m36346e() {
        return this.f15208c.m36341a().m36428m();
    }

    /* renamed from: f */
    final C4098aa m36345f() throws IOException {
        ArrayList arrayList = new ArrayList(this.f15206a.m36374v());
        arrayList.add(this.f15207b);
        arrayList.add(new C4018a(this.f15206a.m36390f()));
        arrayList.add(new C3996a(this.f15206a.m36389g()));
        arrayList.add(new C4006a(this.f15206a));
        if (!this.f15209d) {
            arrayList.addAll(this.f15206a.m36373w());
        }
        arrayList.add(new C4019b(this.f15209d));
        return new C4026g(arrayList, null, null, null, 0, this.f15208c, this, this.f15210e, this.f15206a.m36397a(), this.f15206a.m36394b(), this.f15206a.m36393c()).mo36404a(this.f15208c);
    }
}
