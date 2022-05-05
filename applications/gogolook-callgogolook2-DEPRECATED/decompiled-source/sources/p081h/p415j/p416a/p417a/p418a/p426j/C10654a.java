package p081h.p415j.p416a.p417a.p418a.p426j;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import p081h.p415j.p416a.p417a.p418a.p422f.AbstractC10635a;
import p081h.p415j.p416a.p417a.p418a.p422f.C10637b;
import p081h.p415j.p416a.p417a.p418a.p423g.C10641b;
import p081h.p415j.p416a.p417a.p418a.p423g.C10644d;
import p081h.p415j.p416a.p417a.p418a.p423g.C10646f;
import p081h.p415j.p416a.p417a.p418a.p426j.p427b.C10663c;
/* renamed from: h.j.a.a.a.j.a */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/a.class */
public class C10654a implements AbstractC10635a.AbstractC10636a {

    /* renamed from: g */
    public static C10654a f24243g = new C10654a();

    /* renamed from: h */
    public static Handler f24244h = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    public static Handler f24245i = null;

    /* renamed from: j */
    public static final Runnable f24246j = new RunnableC10656b();

    /* renamed from: k */
    public static final Runnable f24247k = new RunnableC10657c();

    /* renamed from: b */
    public int f24249b;

    /* renamed from: f */
    public double f24253f;

    /* renamed from: a */
    public List<AbstractC10658d> f24248a = new ArrayList();

    /* renamed from: d */
    public C10667c f24251d = new C10667c();

    /* renamed from: c */
    public C10637b f24250c = new C10637b();

    /* renamed from: e */
    public C10668d f24252e = new C10668d(new C10663c());

    /* renamed from: h.j.a.a.a.j.a$a */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/a$a.class */
    public class RunnableC10655a implements Runnable {
        public RunnableC10655a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C10654a.this.f24252e.m11011a();
        }
    }

    /* renamed from: h.j.a.a.a.j.a$b */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/a$b.class */
    public static final class RunnableC10656b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            C10654a.m11035m().m11043e();
        }
    }

    /* renamed from: h.j.a.a.a.j.a$c */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/a$c.class */
    public static final class RunnableC10657c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (C10654a.f24245i != null) {
                C10654a.f24245i.post(C10654a.f24246j);
                C10654a.f24245i.postDelayed(C10654a.f24247k, 200L);
            }
        }
    }

    /* renamed from: h.j.a.a.a.j.a$d */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/a$d.class */
    public interface AbstractC10658d {
        /* renamed from: a */
        void m11034a(int i, long j);
    }

    /* renamed from: m */
    public static C10654a m11035m() {
        return f24243g;
    }

    /* renamed from: a */
    public void m11054a() {
        m11040h();
    }

    /* renamed from: a */
    public final void m11053a(long j) {
        if (this.f24248a.size() > 0) {
            for (AbstractC10658d dVar : this.f24248a) {
                dVar.m11034a(this.f24249b, j);
            }
        }
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p422f.AbstractC10635a.AbstractC10636a
    /* renamed from: a */
    public void mo11052a(View view, AbstractC10635a aVar, JSONObject jSONObject) {
        EnumC10669e c;
        if (C10646f.m11073d(view) && (c = this.f24251d.m11015c(view)) != EnumC10669e.UNDERLYING_VIEW) {
            JSONObject a = aVar.mo11110a(view);
            C10641b.m11094a(jSONObject, a);
            if (!m11050a(view, a)) {
                m11047b(view, a);
                m11051a(view, aVar, a, c);
            }
            this.f24249b++;
        }
    }

    /* renamed from: a */
    public final void m11051a(View view, AbstractC10635a aVar, JSONObject jSONObject, EnumC10669e eVar) {
        aVar.mo11109a(view, jSONObject, this, eVar == EnumC10669e.PARENT_VIEW);
    }

    /* renamed from: a */
    public final boolean m11050a(View view, JSONObject jSONObject) {
        String a = this.f24251d.m11021a(view);
        if (a == null) {
            return false;
        }
        C10641b.m11097a(jSONObject, a);
        this.f24251d.m11012e();
        return true;
    }

    /* renamed from: b */
    public void m11048b() {
        m11045c();
        this.f24248a.clear();
        f24244h.post(new RunnableC10655a());
    }

    /* renamed from: b */
    public final void m11047b(View view, JSONObject jSONObject) {
        ArrayList<String> b = this.f24251d.m11017b(view);
        if (b != null) {
            C10641b.m11095a(jSONObject, b);
        }
    }

    /* renamed from: c */
    public void m11045c() {
        m11039i();
    }

    @VisibleForTesting
    /* renamed from: d */
    public void m11044d() {
        this.f24251d.m11016c();
        double a = C10644d.m11085a();
        AbstractC10635a a2 = this.f24250c.m11112a();
        if (this.f24251d.m11018b().size() > 0) {
            this.f24252e.m11007b(a2.mo11110a(null), this.f24251d.m11018b(), a);
        }
        if (this.f24251d.m11022a().size() > 0) {
            JSONObject a3 = a2.mo11110a(null);
            m11051a(null, a2, a3, EnumC10669e.PARENT_VIEW);
            C10641b.m11098a(a3);
            this.f24252e.m11009a(a3, this.f24251d.m11022a(), a);
        } else {
            this.f24252e.m11011a();
        }
        this.f24251d.m11014d();
    }

    /* renamed from: e */
    public final void m11043e() {
        m11042f();
        m11044d();
        m11041g();
    }

    /* renamed from: f */
    public final void m11042f() {
        this.f24249b = 0;
        this.f24253f = C10644d.m11085a();
    }

    /* renamed from: g */
    public final void m11041g() {
        m11053a((long) (C10644d.m11085a() - this.f24253f));
    }

    /* renamed from: h */
    public final void m11040h() {
        if (f24245i == null) {
            f24245i = new Handler(Looper.getMainLooper());
            f24245i.post(f24246j);
            f24245i.postDelayed(f24247k, 200L);
        }
    }

    /* renamed from: i */
    public final void m11039i() {
        Handler handler = f24245i;
        if (handler != null) {
            handler.removeCallbacks(f24247k);
            f24245i = null;
        }
    }
}
