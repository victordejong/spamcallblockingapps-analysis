package p193e.p194a.p195a.p271o.p273r;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.a.o.r.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/r/b.class */
public abstract class AbstractC7110b extends h implements b {

    /* renamed from: a */
    public volatile a f22883a;

    /* renamed from: b */
    public final Object f22884b = new Object();

    /* renamed from: c */
    public boolean f22885c = false;

    public AbstractC7110b() {
        addOnContextAvailableListener(new C7109a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m30109Yt() {
        if (this.f22883a == null) {
            synchronized (this.f22884b) {
                if (this.f22883a == null) {
                    this.f22883a = new a(this);
                }
            }
        }
        return this.f22883a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC7110b.super.getDefaultViewModelProviderFactory());
    }
}
