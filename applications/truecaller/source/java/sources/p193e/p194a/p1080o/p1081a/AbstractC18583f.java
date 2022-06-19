package p193e.p194a.p1080o.p1081a;

import com.truecaller.contextcall.p160ui.ContextCallActivity;
import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.o.a.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/f.class */
public abstract class AbstractC18583f extends h implements b {

    /* renamed from: a */
    public volatile a f52363a;

    /* renamed from: b */
    public final Object f52364b = new Object();

    /* renamed from: c */
    public boolean f52365c = false;

    public AbstractC18583f() {
        addOnContextAvailableListener(new C18582e(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m14754Yt() {
        if (this.f52363a == null) {
            synchronized (this.f52364b) {
                if (this.f52363a == null) {
                    this.f52363a = new a(this);
                }
            }
        }
        return this.f52363a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC18583f.super.getDefaultViewModelProviderFactory());
    }

    /* renamed from: pa */
    public void mo14714pa() {
        if (!this.f52365c) {
            this.f52365c = true;
            ((AbstractC18581d) m14754Yt()).mo12033u((ContextCallActivity) this);
        }
    }
}
