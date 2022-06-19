package p193e.p194a.p1080o.p1081a.p1089g.p1093j;

import com.truecaller.contextcall.p160ui.ContextCallActivity;
import com.truecaller.contextcall.p160ui.custommessage.ondemand.MidCallCustomMessageActivityContainer;
/* renamed from: e.a.o.a.g.j.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/j/b.class */
public abstract class AbstractC18625b extends ContextCallActivity {

    /* renamed from: d */
    public boolean f52428d = false;

    public AbstractC18625b() {
        addOnContextAvailableListener(new C18624a(this));
    }

    @Override // p193e.p194a.p1080o.p1081a.AbstractC18583f
    /* renamed from: pa */
    public void mo14714pa() {
        if (!this.f52428d) {
            this.f52428d = true;
            ((AbstractC18627d) Yt()).mo12072U((MidCallCustomMessageActivityContainer) this);
        }
    }
}
