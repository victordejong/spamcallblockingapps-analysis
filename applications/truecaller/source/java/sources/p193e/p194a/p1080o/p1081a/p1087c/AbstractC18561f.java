package p193e.p194a.p1080o.p1081a.p1087c;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.o.a.c.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/c/f.class */
public abstract class AbstractC18561f extends h implements b {

    /* renamed from: a */
    public volatile a f52331a;

    /* renamed from: b */
    public final Object f52332b = new Object();

    /* renamed from: c */
    public boolean f52333c = false;

    public AbstractC18561f() {
        addOnContextAvailableListener(new C18560e(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m14783Yt() {
        if (this.f52331a == null) {
            synchronized (this.f52332b) {
                if (this.f52331a == null) {
                    this.f52331a = new a(this);
                }
            }
        }
        return this.f52331a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC18561f.super.getDefaultViewModelProviderFactory());
    }
}
