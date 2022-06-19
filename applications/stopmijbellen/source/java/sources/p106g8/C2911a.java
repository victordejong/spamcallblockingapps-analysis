package p106g8;

import android.os.Build;
import ba.C0748b;
import com.mglab.scm.api.AlarmJobIntentService;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.Objects;
import p074d9.C2497h;
import p095f8.C2779g;
import p095f8.C2780h;
import p117h8.C3035k;
import p117h8.C3043q;
import p149k8.C3389e;
import p149k8.C3401q;
import p170m7.AbstractC3656d;
import p229s2.C4280b;
import p233s6.C4313h;
import p233s6.C4316k;
import p233s6.C4317l;
import p303z2.C5056q;
/* renamed from: g8.a */
/* loaded from: classes2-dex2jar.jar:g8/a.class */
public final /* synthetic */ class C2911a implements AbstractC3656d {

    /* renamed from: a */
    public final /* synthetic */ int f9812a;

    /* renamed from: b */
    public final /* synthetic */ AlarmJobIntentService f9813b;

    public /* synthetic */ C2911a(AlarmJobIntentService alarmJobIntentService, int i) {
        this.f9812a = i;
        this.f9813b = alarmJobIntentService;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public final void mo99a(Exception exc, Object obj) {
        boolean z;
        switch (this.f9812a) {
            case 0:
                AlarmJobIntentService alarmJobIntentService = this.f9813b;
                C4316k c4316k = (C4316k) obj;
                int i = AlarmJobIntentService.f7284l;
                Objects.requireNonNull(alarmJobIntentService);
                if (c4316k == null) {
                    C2780h.m3051f0(alarmJobIntentService.getApplicationContext());
                    C0748b.m7409b().m7404g(new C3401q(-3));
                    C0748b.m7409b().m7404g(new C3389e(".Init no result", 1));
                    return;
                }
                try {
                    c4316k.toString();
                    String str = alarmJobIntentService.f7288k.substring(2) + alarmJobIntentService.f7288k.substring(0, 2);
                    C2779g.m3111d(str, c4316k.m1108f("body").mo1104d());
                    C4316k m1110c = new C4317l().m1107a(C2779g.m3111d(str, c4316k.m1108f("body").mo1104d())).m1110c();
                    m1110c.toString();
                    alarmJobIntentService.f7285h = m1110c.m1108f("delinit").mo1105a();
                    alarmJobIntentService.f7286i = m1110c.m1108f("dbinit").mo1105a();
                    alarmJobIntentService.f7288k = m1110c.m1108f("key").mo1104d();
                    alarmJobIntentService.f7287j = m1110c.m1108f("pcount").mo1105a();
                    if (m1110c.m1108f("needid").mo1105a() != 1 && (Build.VERSION.SDK_INT < 23 || !C2780h.m3052f(alarmJobIntentService.getApplicationContext(), "resend_dev", true))) {
                        z = false;
                        alarmJobIntentService.m3969j(z);
                        C2780h.m3045i0(alarmJobIntentService.getApplicationContext(), 0);
                        C0748b.m7409b().m7404g(new C3401q(101, alarmJobIntentService.f7287j));
                        return;
                    }
                    z = true;
                    alarmJobIntentService.m3969j(z);
                    C2780h.m3045i0(alarmJobIntentService.getApplicationContext(), 0);
                    C0748b.m7409b().m7404g(new C3401q(101, alarmJobIntentService.f7287j));
                    return;
                } catch (Exception e) {
                    C2780h.m3051f0(alarmJobIntentService.getApplicationContext());
                    e.printStackTrace();
                    e.toString();
                    C0748b.m7409b().m7404g(new C3401q(-3));
                    C0748b.m7409b().m7404g(new C3389e(".Initexception", 1));
                    return;
                }
            default:
                AlarmJobIntentService alarmJobIntentService2 = this.f9813b;
                C4316k c4316k2 = (C4316k) obj;
                int i2 = AlarmJobIntentService.f7284l;
                Objects.requireNonNull(alarmJobIntentService2);
                if (c4316k2 == null) {
                    C2780h.m3051f0(alarmJobIntentService2.getApplicationContext());
                    C0748b.m7409b().m7404g(new C3401q(-4));
                    C0748b.m7409b().m7404g(new C3389e("Download not completed", 1));
                    return;
                }
                try {
                    c4316k2.toString();
                    C4313h m1111b = new C4317l().m1107a(C2779g.m3111d(alarmJobIntentService2.f7288k, c4316k2.m1108f("body").mo1104d())).m1111b();
                    m1111b.toString();
                    if (m1111b.size() != 0) {
                        C2497h.C2498a c2498a = new C2497h.C2498a(new C5056q(m1111b, 7), FlowManager.m3909d(C3035k.class));
                        c2498a.f8751d = new C4280b(alarmJobIntentService2);
                        c2498a.f8750c = new C2913c(alarmJobIntentService2);
                        new C2497h(c2498a).m3513a();
                    } else {
                        C3043q.m2700v();
                        C2780h.m3041k0(alarmJobIntentService2.getApplicationContext(), "lastdbcheck", System.currentTimeMillis());
                        C2779g.m3128E(alarmJobIntentService2.getApplicationContext(), true);
                        C0748b.m7409b().m7404g(new C3389e("Download complete"));
                        C0748b.m7409b().m7404g(new C3401q(100));
                    }
                    return;
                } catch (Exception e2) {
                    C2780h.m3051f0(alarmJobIntentService2.getApplicationContext());
                    e2.printStackTrace();
                    e2.toString();
                    C0748b.m7409b().m7404g(new C3401q(-4));
                    C0748b.m7409b().m7404g(new C3389e("exception", 1));
                    return;
                }
        }
    }
}
