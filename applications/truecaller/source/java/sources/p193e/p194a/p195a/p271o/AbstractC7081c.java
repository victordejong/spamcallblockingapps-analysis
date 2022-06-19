package p193e.p194a.p195a.p271o;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.a.o.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/c.class */
public abstract class AbstractC7081c extends h implements b {

    /* renamed from: a */
    public volatile a f22816a;

    /* renamed from: b */
    public final Object f22817b = new Object();

    /* renamed from: c */
    public boolean f22818c = false;

    public AbstractC7081c() {
        addOnContextAvailableListener(new C7080b(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m30166Yt() {
        if (this.f22816a == null) {
            synchronized (this.f22817b) {
                if (this.f22816a == null) {
                    this.f22816a = new a(this);
                }
            }
        }
        return this.f22816a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC7081c.super.getDefaultViewModelProviderFactory());
    }
}
