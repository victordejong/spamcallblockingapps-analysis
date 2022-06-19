package p193e.p194a.p195a.p200c;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.a.c.i6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i6.class */
public abstract class AbstractC5383i6 extends h implements b {

    /* renamed from: a */
    public volatile a f18421a;

    /* renamed from: b */
    public final Object f18422b = new Object();

    /* renamed from: c */
    public boolean f18423c = false;

    public AbstractC5383i6() {
        addOnContextAvailableListener(new C5340h6(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m33202Yt() {
        if (this.f18421a == null) {
            synchronized (this.f18422b) {
                if (this.f18421a == null) {
                    this.f18421a = new a(this);
                }
            }
        }
        return this.f18421a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC5383i6.super.getDefaultViewModelProviderFactory());
    }
}
