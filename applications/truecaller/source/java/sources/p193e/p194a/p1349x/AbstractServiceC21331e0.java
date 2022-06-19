package p193e.p194a.p1349x;

import android.app.Service;
import com.truecaller.ghost_call.GhostCallService;
import o3.b.a.c.c.g;
import o3.b.b.b;
/* renamed from: e.a.x.e0 */
/* loaded from: classes9-dex2jar.jar:e/a/x/e0.class */
public abstract class AbstractServiceC21331e0 extends Service implements b {

    /* renamed from: a */
    public volatile g f59725a;

    /* renamed from: b */
    public final Object f59726b = new Object();

    /* renamed from: c */
    public boolean f59727c = false;

    /* renamed from: Yt */
    public final Object m9884Yt() {
        if (this.f59725a == null) {
            synchronized (this.f59726b) {
                if (this.f59725a == null) {
                    this.f59725a = new g(this);
                }
            }
        }
        return this.f59725a.Yt();
    }

    @Override // android.app.Service
    public void onCreate() {
        if (!this.f59727c) {
            this.f59727c = true;
            ((AbstractC21384v) m9884Yt()).mo9802i((GhostCallService) this);
        }
        super.onCreate();
    }
}
