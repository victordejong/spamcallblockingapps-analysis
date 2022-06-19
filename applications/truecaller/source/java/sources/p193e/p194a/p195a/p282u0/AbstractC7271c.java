package p193e.p194a.p195a.p282u0;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.a.u0.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/u0/c.class */
public abstract class AbstractC7271c extends h implements b {

    /* renamed from: a */
    public volatile a f23222a;

    /* renamed from: b */
    public final Object f23223b = new Object();

    /* renamed from: c */
    public boolean f23224c = false;

    public AbstractC7271c() {
        addOnContextAvailableListener(new C7270b(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m29866Yt() {
        if (this.f23222a == null) {
            synchronized (this.f23223b) {
                if (this.f23222a == null) {
                    this.f23222a = new a(this);
                }
            }
        }
        return this.f23222a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC7271c.super.getDefaultViewModelProviderFactory());
    }
}
