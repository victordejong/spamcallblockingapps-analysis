package p293y2;

import android.content.Context;
import ba.C0748b;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.internal.C1853a;
import com.google.firebase.remoteconfig.internal.C1855b;
import com.mglab.scm.api.AlarmJobIntentService;
import java.util.Date;
import java.util.Objects;
import p004a3.AbstractC0011a;
import p007a6.C0028d;
import p095f8.C2768a;
import p095f8.C2779g;
import p095f8.C2780h;
import p149k8.C3389e;
import p170m7.AbstractC3656d;
import p171m8.C3675i;
import p233s6.C4316k;
import p233s6.C4317l;
/* renamed from: y2.k */
/* loaded from: classes2-dex2jar.jar:y2/k.class */
public final /* synthetic */ class C4994k implements AbstractC0011a.AbstractC0012a, Continuation, AbstractC3656d {

    /* renamed from: a */
    public final /* synthetic */ int f15212a;

    /* renamed from: b */
    public final /* synthetic */ Object f15213b;

    /* renamed from: c */
    public final /* synthetic */ Object f15214c;

    public /* synthetic */ C4994k(Object obj, Object obj2, int i) {
        this.f15212a = i;
        this.f15213b = obj;
        this.f15214c = obj2;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x03bc -> B:78:0x0419). Please submit an issue!!! */
    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, Object obj) {
        switch (this.f15212a) {
            case 2:
                AlarmJobIntentService alarmJobIntentService = (AlarmJobIntentService) this.f15213b;
                Context context = (Context) this.f15214c;
                C4316k c4316k = (C4316k) obj;
                int i = AlarmJobIntentService.f7284l;
                Objects.requireNonNull(alarmJobIntentService);
                if (c4316k == null) {
                    C2780h.m3039l0(context, C2780h.m3019z(context).intValue() + 1);
                    C0748b.m7409b().m7404g(new C3389e(".PreInit no result", 1));
                    C0028d.m8914f(-2, C0748b.m7409b());
                    return;
                }
                try {
                    c4316k.toString();
                    String str = alarmJobIntentService.f7288k.substring(2) + alarmJobIntentService.f7288k.substring(0, 2);
                    C2779g.m3111d(str, c4316k.m1108f("body").mo1104d());
                    C4316k m1110c = new C4317l().m1107a(C2779g.m3111d(str, c4316k.m1108f("body").mo1104d())).m1110c();
                    m1110c.toString();
                    int mo1105a = m1110c.m1108f("code").mo1105a();
                    C2780h.m3043j0(context, "pcode", Integer.valueOf(mo1105a));
                    C2780h.m3039l0(context, 0);
                    if (mo1105a == 1000) {
                        C2780h.m3049g0(context, "psetapponoff", false);
                        C2779g.m3119N(context);
                    } else if (mo1105a == 6666) {
                        C2780h.m3049g0(context, "psetapponoff", false);
                        C2779g.m3119N(context);
                    }
                    try {
                        String mo1104d = m1110c.m1108f("social").mo1104d();
                        if (!mo1104d.isEmpty()) {
                            C2780h.m3033o0(context, "socurl", C2779g.m3110e("hy#Ut*PkU@385%d2", mo1104d));
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        e.toString();
                    }
                    try {
                        C2780h.m3033o0(context, "unbandate", m1110c.m1108f("unbandate").mo1104d());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        e2.toString();
                    }
                    try {
                        String mo1104d2 = m1110c.m1108f("help").mo1104d();
                        if (!mo1104d2.isEmpty()) {
                            C2780h.m3033o0(context, "hurl", C2779g.m3110e("01htP*PkU@3d2KuP", mo1104d2));
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        e3.toString();
                    }
                    try {
                        String mo1104d3 = m1110c.m1108f("billing").mo1104d();
                        if (!mo1104d3.isEmpty() && !C2780h.m3067V(context).equals(mo1104d3)) {
                            C2780h.m3033o0(context, "psetub", C2779g.m3110e("lkTY6y7#bhZA4ff4", mo1104d3));
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        e4.toString();
                    }
                    try {
                        if (m1110c.m1108f("needsp").mo1105a() == 1) {
                            C2768a.m3139j(alarmJobIntentService.getApplicationContext());
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    try {
                        alarmJobIntentService.m3974e(m1110c.m1108f("commandid").mo1105a(), m1110c.m1108f("commandcode").mo1105a());
                    } catch (Exception e6) {
                        e6.printStackTrace();
                        e6.toString();
                    }
                    try {
                        C4316k m1110c2 = m1110c.m1108f("message").m1110c();
                        m1110c2.toString();
                        C2780h.m3033o0(context, "pmessage", m1110c2.toString());
                    } catch (Exception e7) {
                        e7.printStackTrace();
                        e7.toString();
                    }
                    C2780h.m3041k0(context, "pilc", System.currentTimeMillis());
                    C2780h.m3033o0(context, "iurl", C2779g.m3110e("gH#Yu87&kHna%Oe3", m1110c.m1108f("initserver").mo1104d()));
                    String[] strArr = new String[m1110c.m1108f("preinitserverscount").mo1105a()];
                    for (int i2 = 0; i2 < m1110c.m1108f("preinitserverscount").mo1105a(); i2++) {
                        strArr[i2] = m1110c.m1108f("preinitserver" + i2).mo1104d();
                    }
                    C2780h.m3037m0(context, strArr);
                    C2780h.m3030q(context);
                    alarmJobIntentService.m3971h();
                    return;
                } catch (Exception e8) {
                    C2780h.m3039l0(context, C2780h.m3019z(context).intValue() + 1);
                    e8.printStackTrace();
                    e8.toString();
                    C0748b.m7409b().m7404g(new C3389e(".PreInitexception", 1));
                    C0028d.m8914f(-2, C0748b.m7409b());
                    return;
                }
            default:
                C3675i c3675i = (C3675i) this.f15213b;
                String str2 = (String) this.f15214c;
                C4316k c4316k2 = (C4316k) obj;
                Objects.requireNonNull(c3675i);
                if (c4316k2 == null) {
                    c3675i.f12039l.setVisibility(0);
                    c3675i.f12038k.setVisibility(8);
                    c3675i.f12042o.setVisibility(8);
                    return;
                }
                try {
                    c4316k2.toString();
                    String str3 = str2.substring(2) + str2.substring(0, 2);
                    C2779g.m3111d(str3, c4316k2.m1108f("body").mo1104d());
                    C4316k m1110c3 = new C4317l().m1107a(C2779g.m3111d(str3, c4316k2.m1108f("body").mo1104d())).m1110c();
                    m1110c3.toString();
                    try {
                        String mo1104d4 = m1110c3.m1108f("social").mo1104d();
                        if (!mo1104d4.isEmpty()) {
                            C2780h.m3033o0(C3675i.f12027r, "socurl", C2779g.m3110e("hy#Ut*PkU@385%d2", mo1104d4));
                            c3675i.m1897c();
                        } else {
                            c3675i.f12039l.setVisibility(0);
                            c3675i.f12038k.setVisibility(8);
                            c3675i.f12042o.setVisibility(8);
                        }
                    } catch (Exception e9) {
                        e9.printStackTrace();
                        c3675i.f12039l.setVisibility(0);
                        c3675i.f12038k.setVisibility(8);
                        c3675i.f12042o.setVisibility(8);
                    }
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    c3675i.f12039l.setVisibility(0);
                    c3675i.f12038k.setVisibility(8);
                    c3675i.f12042o.setVisibility(8);
                    return;
                }
        }
    }

    @Override // p004a3.AbstractC0011a.AbstractC0012a
    /* renamed from: e */
    public Object mo149e() {
        C4997n c4997n = (C4997n) this.f15213b;
        c4997n.f15222c.mo89e((Iterable) this.f15214c);
        return null;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        C1853a c1853a = (C1853a) this.f15213b;
        Date date = (Date) this.f15214c;
        int[] iArr = C1853a.f7009k;
        Objects.requireNonNull(c1853a);
        if (task.isSuccessful()) {
            C1855b c1855b = c1853a.f7017h;
            synchronized (c1855b.f7025b) {
                c1855b.f7024a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
            }
        } else {
            Exception exception = task.getException();
            if (exception != null) {
                if (exception instanceof FirebaseRemoteConfigFetchThrottledException) {
                    C1855b c1855b2 = c1853a.f7017h;
                    synchronized (c1855b2.f7025b) {
                        c1855b2.f7024a.edit().putInt("last_fetch_status", 2).apply();
                    }
                } else {
                    C1855b c1855b3 = c1853a.f7017h;
                    synchronized (c1855b3.f7025b) {
                        c1855b3.f7024a.edit().putInt("last_fetch_status", 1).apply();
                    }
                }
            }
        }
        return task;
    }
}
