package androidx.fragment.app;

import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0869h;
import androidx.lifecycle.C0870i;
/* renamed from: androidx.fragment.app.s */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/s.class */
public class C0712s implements AbstractC0869h {

    /* renamed from: a */
    private C0870i f2561a = null;

    /* renamed from: a */
    public void m19604a() {
        if (this.f2561a == null) {
            this.f2561a = new C0870i(this);
        }
    }

    /* renamed from: a */
    public void m19603a(AbstractC0864e.EnumC0865a enumC0865a) {
        this.f2561a.m19222a(enumC0865a);
    }

    @Override // androidx.lifecycle.AbstractC0869h
    /* renamed from: b */
    public AbstractC0864e mo19203b() {
        m19604a();
        return this.f2561a;
    }

    /* renamed from: c */
    public boolean m19602c() {
        return this.f2561a != null;
    }
}
