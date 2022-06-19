package p283x2;

import android.content.Context;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Objects;
import p004a3.AbstractC0011a;
import p095f8.C2779g;
import p117h8.C3036l;
import p117h8.C3037m;
import p170m7.AbstractC3656d;
import p211q6.C4157b;
import p222r6.C4221e;
import p233s6.C4313h;
import p233s6.C4316k;
import p233s6.C4317l;
import p250u2.AbstractC4463f;
import p250u2.AbstractC4469i;
import p278w8.C4790q;
import p278w8.C4791r;
import p293y2.C4995l;
/* renamed from: x2.a */
/* loaded from: classes2-dex2jar.jar:x2/a.class */
public final /* synthetic */ class C4849a implements AbstractC0011a.AbstractC0012a, Continuation, AbstractC3656d {

    /* renamed from: a */
    public final /* synthetic */ Object f14864a;

    /* renamed from: b */
    public final /* synthetic */ Object f14865b;

    /* renamed from: c */
    public final /* synthetic */ Object f14866c;

    public /* synthetic */ C4849a(Object obj, Object obj2, Object obj3) {
        this.f14864a = obj;
        this.f14865b = obj2;
        this.f14866c = obj3;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, Object obj) {
        String str = (String) this.f14864a;
        String str2 = (String) this.f14865b;
        Context context = (Context) this.f14866c;
        C4316k c4316k = (C4316k) obj;
        if (c4316k == null) {
            C2779g.m3129D(context);
            return;
        }
        try {
            C4313h m1111b = new C4317l().m1107a(C2779g.m3111d(str, c4316k.m1108f("body").mo1104d())).m1110c().m1108f("feedbacks").m1111b();
            if (m1111b.size() > 0) {
                new C4791r(new C4790q(C3036l.class).m460a(C3037m.f10306z.m239a(m1111b.m1112e(0).m1110c().m1108f(AppMeasurementSdk.ConditionalUserProperty.NAME).mo1104d()), C3037m.f10285A.m239a(Boolean.TRUE)), C3037m.f10288h.m236e(str2)).mo458i();
            } else {
                new C4791r(new C4790q(C3036l.class).m460a(C3037m.f10306z.m239a(""), C3037m.f10285A.m239a(Boolean.TRUE)), C3037m.f10288h.m236e(str2)).mo458i();
            }
            C2779g.m3129D(context);
        } catch (Exception e) {
            e.printStackTrace();
            e.toString();
            C2779g.m3129D(context);
        }
    }

    @Override // p004a3.AbstractC0011a.AbstractC0012a
    /* renamed from: e */
    public Object mo149e() {
        C4851c c4851c = (C4851c) this.f14864a;
        AbstractC4469i abstractC4469i = (AbstractC4469i) this.f14865b;
        c4851c.f14875d.mo95I(abstractC4469i, (AbstractC4463f) this.f14866c);
        c4851c.f14872a.mo147a(abstractC4469i, 1);
        return null;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        Task task2;
        C4157b c4157b = (C4157b) this.f14864a;
        Task task3 = (Task) this.f14865b;
        Task task4 = (Task) this.f14866c;
        Objects.requireNonNull(c4157b);
        if (!task3.isSuccessful() || task3.getResult() == null) {
            task2 = Tasks.forResult(Boolean.FALSE);
        } else {
            C4221e c4221e = (C4221e) task3.getResult();
            if (task4.isSuccessful()) {
                C4221e c4221e2 = (C4221e) task4.getResult();
                if (!(c4221e2 == null || !c4221e.f13220c.equals(c4221e2.f13220c))) {
                    task2 = Tasks.forResult(Boolean.FALSE);
                }
            }
            task2 = c4157b.f13118e.m1283c(c4221e).continueWith(c4157b.f13116c, new C4995l(c4157b, 3));
        }
        return task2;
    }
}
