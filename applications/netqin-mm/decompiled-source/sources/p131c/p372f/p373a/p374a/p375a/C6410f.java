package p131c.p372f.p373a.p374a.p375a;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.integralads.avid.library.inmobi.walking.ViewType;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.p379k.AbstractC6423d;
import p131c.p372f.p373a.p374a.p375a.p379k.C6420a;
import p131c.p372f.p373a.p374a.p375a.p380l.C6425a;
import p131c.p372f.p373a.p374a.p375a.p385n.C6454b;
import p131c.p372f.p373a.p374a.p375a.p385n.C6456d;
import p131c.p372f.p373a.p374a.p375a.p385n.C6457e;
import p131c.p372f.p373a.p374a.p375a.p387p.C6461a;
import p131c.p372f.p373a.p374a.p375a.p387p.C6462b;
import p131c.p372f.p373a.p374a.p375a.p387p.p388c.C6467c;
/* renamed from: c.f.a.a.a.f */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/f.class */
public class C6410f implements AbstractC6423d.AbstractC6424a {

    /* renamed from: i */
    public static HandlerC6413c f20087i;

    /* renamed from: b */
    public int f20090b;

    /* renamed from: f */
    public double f20094f;

    /* renamed from: g */
    public double f20095g;

    /* renamed from: h */
    public static C6410f f20086h = new C6410f();

    /* renamed from: j */
    public static final Runnable f20088j = new RunnableC6411a();

    /* renamed from: a */
    public List<AbstractC6412b> f20089a = new ArrayList();

    /* renamed from: d */
    public C6461a f20092d = new C6461a(C6425a.m20900d());

    /* renamed from: c */
    public C6420a f20091c = new C6420a();

    /* renamed from: e */
    public C6462b f20093e = new C6462b(C6425a.m20900d(), new C6467c());

    /* renamed from: c.f.a.a.a.f$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/f$a.class */
    public static final class RunnableC6411a implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            if (C6410f.f20087i != null) {
                C6410f.f20087i.sendEmptyMessage(0);
                C6410f.f20087i.postDelayed(C6410f.f20088j, 200L);
            }
        }
    }

    /* renamed from: c.f.a.a.a.f$b */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/f$b.class */
    public interface AbstractC6412b {
        void onTreeProcessed(int i, long j);
    }

    /* renamed from: c.f.a.a.a.f$c */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/f$c.class */
    public static class HandlerC6413c extends Handler {
        public HandlerC6413c() {
        }

        public /* synthetic */ HandlerC6413c(RunnableC6411a aVar) {
            this();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            C6410f.m20927l().m20930i();
        }
    }

    /* renamed from: l */
    public static C6410f m20927l() {
        return f20086h;
    }

    /* renamed from: a */
    public final void m20943a() {
        double a = C6456d.m20822a();
        this.f20095g = a;
        m20942a((long) (a - this.f20094f));
    }

    /* renamed from: a */
    public final void m20942a(long j) {
        if (this.f20089a.size() > 0) {
            for (AbstractC6412b bVar : this.f20089a) {
                bVar.onTreeProcessed(this.f20090b, j);
            }
        }
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p379k.AbstractC6423d.AbstractC6424a
    /* renamed from: a */
    public void mo20907a(View view, AbstractC6423d dVar, JSONObject jSONObject) {
        ViewType d;
        if (C6457e.m20821a(view) && (d = this.f20092d.m20788d(view)) != ViewType.UNDERLYING_VIEW) {
            JSONObject state = dVar.getState(view);
            C6454b.m20830a(jSONObject, state);
            if (!m20937b(view, state)) {
                m20940a(view, state);
                m20941a(view, dVar, state, d);
            }
            this.f20090b++;
        }
    }

    /* renamed from: a */
    public final void m20941a(View view, AbstractC6423d dVar, JSONObject jSONObject, ViewType viewType) {
        dVar.mo20908a(view, jSONObject, this, viewType == ViewType.ROOT_VIEW);
    }

    /* renamed from: a */
    public final void m20940a(View view, JSONObject jSONObject) {
        ArrayList<String> b = this.f20092d.m20792b(view);
        if (b != null) {
            C6454b.m20831a(jSONObject, b);
        }
    }

    /* renamed from: b */
    public final void m20938b() {
        this.f20090b = 0;
        this.f20094f = C6456d.m20822a();
    }

    /* renamed from: b */
    public final boolean m20937b(View view, JSONObject jSONObject) {
        String c = this.f20092d.m20790c(view);
        if (c == null) {
            return false;
        }
        C6454b.m20832a(jSONObject, c);
        this.f20092d.m20789d();
        return true;
    }

    /* renamed from: c */
    public void m20936c() {
        this.f20092d.m20787e();
        double a = C6456d.m20822a();
        AbstractC6423d a2 = this.f20091c.m20911a();
        if (this.f20092d.m20793b().size() > 0) {
            this.f20093e.m20785a(a2.getState(null), this.f20092d.m20793b(), a);
        }
        if (this.f20092d.m20791c().size() > 0) {
            JSONObject state = a2.getState(null);
            m20941a(null, a2, state, ViewType.ROOT_VIEW);
            C6454b.m20834a(state);
            this.f20093e.m20784b(state, this.f20092d.m20791c(), a);
        } else {
            this.f20093e.m20786a();
        }
        this.f20092d.m20797a();
    }

    /* renamed from: d */
    public void m20935d() {
        m20931h();
    }

    /* renamed from: e */
    public void m20934e() {
        m20933f();
        m20930i();
    }

    /* renamed from: f */
    public final void m20933f() {
        if (f20087i == null) {
            HandlerC6413c cVar = new HandlerC6413c(null);
            f20087i = cVar;
            cVar.postDelayed(f20088j, 200L);
        }
    }

    /* renamed from: g */
    public void m20932g() {
        m20935d();
        this.f20089a.clear();
        this.f20093e.m20786a();
    }

    /* renamed from: h */
    public final void m20931h() {
        HandlerC6413c cVar = f20087i;
        if (cVar != null) {
            cVar.removeCallbacks(f20088j);
            f20087i = null;
        }
    }

    /* renamed from: i */
    public final void m20930i() {
        m20938b();
        m20936c();
        m20943a();
    }
}
