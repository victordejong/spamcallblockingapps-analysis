package p193e.p194a.p1002k4;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.k4.b */
/* loaded from: classes11-dex2jar.jar:e/a/k4/b.class */
public abstract class AbstractC16505b extends h implements b {

    /* renamed from: a */
    public volatile a f46410a;

    /* renamed from: b */
    public final Object f46411b = new Object();

    /* renamed from: c */
    public boolean f46412c = false;

    public AbstractC16505b() {
        addOnContextAvailableListener(new C16504a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m17314Yt() {
        if (this.f46410a == null) {
            synchronized (this.f46411b) {
                if (this.f46410a == null) {
                    this.f46410a = new a(this);
                }
            }
        }
        return this.f46410a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC16505b.super.getDefaultViewModelProviderFactory());
    }
}
