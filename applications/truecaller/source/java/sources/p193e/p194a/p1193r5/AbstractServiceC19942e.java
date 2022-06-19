package p193e.p194a.p1193r5;

import com.truecaller.whoviewedme.ReceiveProfileViewService;
import o3.b.a.c.c.g;
import o3.b.b.b;
import p1727n3.p1807k.p1808a.AbstractServiceC26412a0;
/* renamed from: e.a.r5.e */
/* loaded from: classes8-dex2jar.jar:e/a/r5/e.class */
public abstract class AbstractServiceC19942e extends AbstractServiceC26412a0 implements b {

    /* renamed from: a */
    public volatile g f56397a;

    /* renamed from: b */
    public final Object f56398b = new Object();

    /* renamed from: c */
    public boolean f56399c = false;

    /* renamed from: Yt */
    public final Object m11794Yt() {
        if (this.f56397a == null) {
            synchronized (this.f56398b) {
                if (this.f56397a == null) {
                    this.f56397a = new g(this);
                }
            }
        }
        return this.f56397a.Yt();
    }

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i, android.app.Service
    public void onCreate() {
        if (!this.f56399c) {
            this.f56399c = true;
            ((AbstractC19975r) m11794Yt()).mo11716h((ReceiveProfileViewService) this);
        }
        super.onCreate();
    }
}
