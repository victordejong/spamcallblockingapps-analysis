package p193e.p194a.p1080o.p1081a.p1085b;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.o.a.b.i */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/b/i.class */
public abstract class AbstractC18538i extends h implements b {

    /* renamed from: a */
    public volatile a f52288a;

    /* renamed from: b */
    public final Object f52289b = new Object();

    /* renamed from: c */
    public boolean f52290c = false;

    public AbstractC18538i() {
        addOnContextAvailableListener(new C18537h(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m14797Yt() {
        if (this.f52288a == null) {
            synchronized (this.f52289b) {
                if (this.f52288a == null) {
                    this.f52288a = new a(this);
                }
            }
        }
        return this.f52288a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC18538i.super.getDefaultViewModelProviderFactory());
    }
}
