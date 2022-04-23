package p081h.p203i.p204a.p224e.p259j.p269j;

import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import p081h.p203i.p204a.p224e.p259j.p269j.C7761a3;
/* renamed from: h.i.a.e.j.j.b4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/b4.class */
public class C7771b4 implements C7761a3.AbstractC7762a {

    /* renamed from: a */
    public C7761a3 f18199a;

    /* renamed from: b */
    public int f18200b;

    /* renamed from: c */
    public boolean f18201c;

    /* renamed from: d */
    public WeakReference<C7761a3.AbstractC7762a> f18202d;

    public C7771b4() {
        this(C7761a3.m19547d());
    }

    public C7771b4(@NonNull C7761a3 a3Var) {
        this.f18200b = 0;
        this.f18201c = false;
        this.f18199a = a3Var;
        this.f18202d = new WeakReference<>(this);
    }

    /* renamed from: a */
    public final int m19513a() {
        return this.f18200b;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7761a3.AbstractC7762a
    /* renamed from: a */
    public void mo19353a(int i) {
        this.f18200b = i | this.f18200b;
    }

    /* renamed from: b */
    public final void m19512b() {
        if (!this.f18201c) {
            this.f18200b = this.f18199a.m19560a();
            this.f18199a.m19553a(this.f18202d);
            this.f18201c = true;
        }
    }

    /* renamed from: b */
    public final void m19511b(int i) {
        this.f18199a.m19559a(1);
    }

    /* renamed from: c */
    public final void m19510c() {
        if (this.f18201c) {
            this.f18199a.m19549b(this.f18202d);
            this.f18201c = false;
        }
    }
}
