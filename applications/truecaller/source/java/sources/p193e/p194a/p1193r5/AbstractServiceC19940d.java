package p193e.p194a.p1193r5;

import com.truecaller.whoviewedme.GenerateProfileViewService;
import o3.b.a.c.c.g;
import o3.b.b.b;
import p1727n3.p1807k.p1808a.AbstractServiceC26412a0;
/* renamed from: e.a.r5.d */
/* loaded from: classes8-dex2jar.jar:e/a/r5/d.class */
public abstract class AbstractServiceC19940d extends AbstractServiceC26412a0 implements b {

    /* renamed from: a */
    public volatile g f56389a;

    /* renamed from: b */
    public final Object f56390b = new Object();

    /* renamed from: c */
    public boolean f56391c = false;

    /* renamed from: Yt */
    public final Object m11796Yt() {
        if (this.f56389a == null) {
            synchronized (this.f56390b) {
                if (this.f56389a == null) {
                    this.f56389a = new g(this);
                }
            }
        }
        return this.f56389a.Yt();
    }

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i, android.app.Service
    public void onCreate() {
        if (!this.f56391c) {
            this.f56391c = true;
            ((AbstractC19937c) m11796Yt()).mo11798d((GenerateProfileViewService) this);
        }
        super.onCreate();
    }
}
