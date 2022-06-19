package p193e.p194a.p1011l;

import com.truecaller.premium.PremiumNotificationService;
import o3.b.a.c.c.g;
import o3.b.b.b;
import p1727n3.p1807k.p1808a.AbstractServiceC26412a0;
/* renamed from: e.a.l.x */
/* loaded from: classes12-dex2jar.jar:e/a/l/x.class */
public abstract class AbstractServiceC17299x extends AbstractServiceC26412a0 implements b {

    /* renamed from: a */
    public volatile g f48532a;

    /* renamed from: b */
    public final Object f48533b = new Object();

    /* renamed from: c */
    public boolean f48534c = false;

    /* renamed from: Yt */
    public final Object m16271Yt() {
        if (this.f48532a == null) {
            synchronized (this.f48533b) {
                if (this.f48532a == null) {
                    this.f48532a = new g(this);
                }
            }
        }
        return this.f48532a.Yt();
    }

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i, android.app.Service
    public void onCreate() {
        if (!this.f48534c) {
            this.f48534c = true;
            ((AbstractC17220r1) m16271Yt()).mo11880e((PremiumNotificationService) this);
        }
        super.onCreate();
    }
}
