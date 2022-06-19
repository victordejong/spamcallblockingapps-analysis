package p193e.p194a.p1011l;

import com.truecaller.premium.PremiumActivity;
import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.l.t */
/* loaded from: classes12-dex2jar.jar:e/a/l/t.class */
public abstract class AbstractC17231t extends h implements b {

    /* renamed from: a */
    public volatile a f48359a;

    /* renamed from: b */
    public final Object f48360b = new Object();

    /* renamed from: c */
    public boolean f48361c = false;

    public AbstractC17231t() {
        addOnContextAvailableListener(new C17226s(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m16356Yt() {
        if (this.f48359a == null) {
            synchronized (this.f48360b) {
                if (this.f48359a == null) {
                    this.f48359a = new a(this);
                }
            }
        }
        return this.f48359a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC17231t.super.getDefaultViewModelProviderFactory());
    }

    /* renamed from: pa */
    public void mo16329pa() {
        if (!this.f48361c) {
            this.f48361c = true;
            ((AbstractC16611a0) m16356Yt()).mo12060e((PremiumActivity) this);
        }
    }
}
