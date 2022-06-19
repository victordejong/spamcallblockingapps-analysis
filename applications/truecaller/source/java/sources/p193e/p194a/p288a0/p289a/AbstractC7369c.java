package p193e.p194a.p288a0.p289a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.a0.a.c */
/* loaded from: classes12-dex2jar.jar:e/a/a0/a/c.class */
public abstract class AbstractC7369c extends h implements b {

    /* renamed from: a */
    public volatile a f23483a;

    /* renamed from: b */
    public final Object f23484b = new Object();

    /* renamed from: c */
    public boolean f23485c = false;

    public AbstractC7369c() {
        addOnContextAvailableListener(new C7368b(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m29728Yt() {
        if (this.f23483a == null) {
            synchronized (this.f23484b) {
                if (this.f23483a == null) {
                    this.f23483a = new a(this);
                }
            }
        }
        return this.f23483a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC7369c.super.getDefaultViewModelProviderFactory());
    }
}
