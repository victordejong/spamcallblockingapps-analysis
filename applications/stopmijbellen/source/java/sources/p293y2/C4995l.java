package p293y2;

import android.content.Context;
import android.content.IntentSender;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.activity.result.AbstractC0112b;
import androidx.appcompat.widget.SwitchCompat;
import ba.C0748b;
import com.android.billingclient.api.Purchase;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.abt.AbtException;
import com.mglab.scm.api.AlarmJobIntentService;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.FragmentStat;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import p004a3.AbstractC0011a;
import p006a5.C0017a;
import p007a6.C0033h;
import p070d5.AbstractC2475a;
import p070d5.AbstractC2476b;
import p070d5.C2477c;
import p074d9.C2497h;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p080e5.AbstractC2580y;
import p080e5.C2555h0;
import p095f8.C2768a;
import p095f8.C2774b;
import p095f8.C2779g;
import p095f8.C2780h;
import p095f8.C2782j;
import p117h8.C3026c;
import p117h8.C3030g;
import p117h8.C3031h;
import p117h8.C3043q;
import p117h8.C3044r;
import p117h8.C3045s;
import p117h8.C3050w;
import p124i4.AbstractC3101c;
import p124i4.C3099a;
import p135j5.C3276f;
import p149k8.C3382a;
import p149k8.C3385b0;
import p149k8.C3389e;
import p149k8.C3401q;
import p170m7.AbstractC3656d;
import p170m7.C3661g;
import p171m8.C3670d;
import p193o8.C3948e;
import p211q6.C4157b;
import p220r4.AbstractC4193b;
import p222r6.C4218d;
import p222r6.C4221e;
import p222r6.C4225i;
import p231s4.AbstractC4290c;
import p233s6.C4313h;
import p233s6.C4316k;
import p233s6.C4317l;
import p278w8.C4775f;
import p278w8.C4776g;
import p278w8.C4782k;
import p278w8.C4791r;
import p303z2.AbstractC5039c;
/* renamed from: y2.l */
/* loaded from: classes2-dex2jar.jar:y2/l.class */
public final /* synthetic */ class C4995l implements AbstractC0011a.AbstractC0012a, AbstractC2476b, Continuation, C3661g.AbstractC3662a, AbstractC3656d, AbstractC4193b, AbstractC4290c.AbstractC4292b, C2497h.AbstractC2500c, AbstractC0112b, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ int f15215a;

    /* renamed from: b */
    public final /* synthetic */ Object f15216b;

    public /* synthetic */ C4995l(Object obj, int i) {
        this.f15215a = i;
        this.f15216b = obj;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, Object obj) {
        switch (this.f15215a) {
            case 6:
                Purchase purchase = (Purchase) this.f15216b;
                C4316k c4316k = (C4316k) obj;
                Context context = C2768a.f9468a;
                if (c4316k == null) {
                    C2768a.m3148a(C2768a.f9469b, purchase.m7233b());
                    return;
                }
                try {
                    c4316k.toString();
                    if (c4316k.m1108f("result").mo1105a() == 400) {
                        return;
                    }
                    C2768a.m3148a(C2768a.f9469b, purchase.m7233b());
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    e.toString();
                    C2768a.m3148a(C2768a.f9469b, purchase.m7233b());
                    return;
                }
            default:
                AlarmJobIntentService alarmJobIntentService = (AlarmJobIntentService) this.f15216b;
                C4316k c4316k2 = (C4316k) obj;
                int i = AlarmJobIntentService.f7284l;
                Objects.requireNonNull(alarmJobIntentService);
                if (c4316k2 == null) {
                    alarmJobIntentService.m3973f();
                    return;
                }
                try {
                    c4316k2.toString();
                    C4313h m1111b = new C4317l().m1107a(C2779g.m3111d(alarmJobIntentService.f7288k, c4316k2.m1108f("body").mo1104d())).m1111b();
                    m1111b.toString();
                    if (m1111b.size() == 0) {
                        C2780h.m3051f0(alarmJobIntentService.getApplicationContext());
                        C0748b.m7409b().m7404g(new C3401q(-3));
                        C0748b.m7409b().m7404g(new C3389e(".downloadDel no result", 1));
                        return;
                    }
                    m1111b.size();
                    C4782k.C4784b m469j = new C4782k(C3045s.f10317f.f15050b).m469j(0, new Object[0]);
                    C4782k.C4784b m469j2 = new C4782k(C3031h.f10189i.f15050b).m469j(0, new Object[0]);
                    for (int i2 = 0; i2 < m1111b.size(); i2++) {
                        int mo1105a = m1111b.m1112e(i2).m1110c().m1108f("deletedid").mo1105a();
                        m469j.f14707f.add(Integer.valueOf(mo1105a));
                        m469j2.f14707f.add(C2779g.m3098q(String.valueOf(mo1105a), "g^y$j", false));
                    }
                    new C4791r(new C4776g(new C4775f(), C3044r.class), m469j).mo458i();
                    new C4791r(new C4776g(new C4775f(), C3030g.class), m469j2).mo458i();
                    C2780h.m3047h0(alarmJobIntentService.getApplicationContext(), m1111b.m1112e(m1111b.size() - 1).m1110c().m1108f(FacebookAdapter.KEY_ID).mo1105a());
                    C0748b.m7409b().m7404g(new C3389e());
                    alarmJobIntentService.m3972g();
                    return;
                } catch (Exception e2) {
                    C2780h.m3051f0(alarmJobIntentService.getApplicationContext());
                    e2.printStackTrace();
                    e2.toString();
                    C1676a.m4785l(".downloadDel exception", 1, C0082b.m8759c(-3, C0748b.m7409b()));
                    return;
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x05da  */
    @Override // androidx.activity.result.AbstractC0112b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo151b(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 1590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p293y2.C4995l.mo151b(java.lang.Object):void");
    }

    @Override // p074d9.C2497h.AbstractC2500c
    /* renamed from: c */
    public void mo105c(C2497h c2497h) {
        Context context = (Context) this.f15216b;
        C2780h.m3041k0(context, "contactslastsync", System.currentTimeMillis());
        C0748b.m7409b().m7404g(new C3401q(10));
        C2779g.m3129D(context);
    }

    @Override // p070d5.AbstractC2476b
    /* renamed from: d */
    public void mo156d(AbstractC2475a abstractC2475a) {
        C0017a c0017a = (C0017a) this.f15216b;
        synchronized (c0017a) {
            if (c0017a.f19c instanceof C2477c) {
                c0017a.f20d.add(abstractC2475a);
            }
            c0017a.f19c.mo156d(abstractC2475a);
        }
    }

    @Override // p004a3.AbstractC0011a.AbstractC0012a
    /* renamed from: e */
    public Object mo149e() {
        return Integer.valueOf(((AbstractC5039c) this.f15216b).mo91c());
    }

    @Override // p170m7.C3661g.AbstractC3662a
    /* renamed from: f */
    public void mo103f(Exception exc, Object obj, C3661g.C3663b c3663b) {
        AbstractC3656d abstractC3656d = (AbstractC3656d) this.f15216b;
        int i = C3661g.f11988i;
        abstractC3656d.mo99a(exc, obj);
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        switch (this.f15215a) {
            case 12:
                FragmentStat fragmentStat = (FragmentStat) this.f15216b;
                C3948e c3948e = FragmentStat.f7603g;
                C2780h.m3031p0(fragmentStat.getContext());
                return;
            case 13:
                ((C3670d) this.f15216b).m1904f();
                return;
            default:
                C2107c c2107c = (C2107c) this.f15216b;
                Objects.requireNonNull(c2107c);
                String obj = ((EditText) C2107c.f7645k.findViewById(2131296841)).getText().toString();
                String obj2 = ((EditText) C2107c.f7645k.findViewById(2131296744)).getText().toString();
                int i = c2107c.f7649d;
                int i2 = -1;
                if (i == 1) {
                    try {
                        C3050w c3050w = new C3050w();
                        c3050w.f10376d = obj;
                        c3050w.f10375c = obj2;
                        c3050w.f10377e = C3043q.m2705q(obj2);
                        if (!c2107c.f7650e) {
                            i2 = 0;
                        }
                        c3050w.f10378f = i2;
                        c3050w.mo7416a();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    C0033h.m8884m(1, C0748b.m7409b());
                } else if (i == 2) {
                    try {
                        C3026c c3026c = new C3026c();
                        c3026c.f10151d = obj;
                        c3026c.f10150c = obj2;
                        if (c2107c.f7650e) {
                            c3026c.f10153f = -1;
                        } else {
                            c3026c.f10153f = ((Spinner) C2107c.f7645k.findViewById(2131296453)).getSelectedItemPosition();
                        }
                        c3026c.f10152e = C3043q.m2705q(obj2);
                        c3026c.mo7416a();
                        SwitchCompat switchCompat = (SwitchCompat) C2107c.f7645k.findViewById(2131297029);
                        if (switchCompat.isChecked() && switchCompat.isEnabled() && !c2107c.f7650e) {
                            C0748b.m7409b().m7404g(new C3385b0(obj2, true));
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    C0748b.m7409b().m7404g(new C3382a(1));
                }
                C2779g.m3129D(c2107c.f7646a);
                C2779g.m3122K(c2107c.f7646a, c2107c.f7647b, 2131820738);
                c2107c.f7646a.toString();
                c2107c.f7647b.toString();
                return;
        }
    }

    @Override // p220r4.AbstractC4193b
    public void onSuccess(Object obj) {
        C2782j c2782j = (C2782j) this.f15216b;
        C3099a c3099a = (C3099a) obj;
        Context applicationContext = c2782j.f9499c.getApplicationContext();
        if (c3099a.f10488a != 2) {
            C2780h.m3041k0(applicationContext, "gappupdatelaststart", 0L);
        } else if (C2780h.m3034o(applicationContext) == 0) {
            C2780h.m3029q0(c2782j.f9499c.getApplicationContext());
        } else {
            if ((new C2774b().m3135b("app_update_repeat_interval_hrs") * 3600000) + C2780h.m3034o(applicationContext) >= System.currentTimeMillis()) {
                return;
            }
            C2780h.m3029q0(applicationContext);
            if (c3099a.m2654a(AbstractC3101c.m2652c(0)) != null) {
                c2782j.f9497a.mo2611b(c2782j.f9498b);
                try {
                    c2782j.f9497a.mo2608e(c3099a, 0, c2782j.f9499c, 530);
                } catch (IntentSender.SendIntentException e) {
                    e.printStackTrace();
                    c2782j.m3017b();
                }
                C2780h.m3029q0(applicationContext);
                return;
            }
            boolean z = false;
            if (c3099a.m2654a(AbstractC3101c.m2652c(1)) != null) {
                z = true;
            }
            if (!z) {
                return;
            }
            try {
                c2782j.f9497a.mo2608e(c3099a, 1, c2782j.f9499c, 530);
            } catch (IntentSender.SendIntentException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        boolean z = false;
        switch (this.f15215a) {
            case 2:
                C2555h0 c2555h0 = (C2555h0) this.f15216b;
                Objects.requireNonNull(c2555h0);
                if (task.isSuccessful()) {
                    AbstractC2580y abstractC2580y = (AbstractC2580y) task.getResult();
                    abstractC2580y.mo3417b();
                    Log.isLoggable("FirebaseCrashlytics", 3);
                    C3276f c3276f = c2555h0.f8927b;
                    final String mo3417b = abstractC2580y.mo3417b();
                    Objects.requireNonNull(c3276f);
                    FilenameFilter filenameFilter = new FilenameFilter() { // from class: j5.b
                        @Override // java.io.FilenameFilter
                        public final boolean accept(File file, String str) {
                            return str.startsWith(mo3417b);
                        }
                    };
                    Iterator it2 = ((ArrayList) C3276f.m2453a(C3276f.m2449e(c3276f.f11094c, filenameFilter), C3276f.m2449e(c3276f.f11096e, filenameFilter), C3276f.m2449e(c3276f.f11095d, filenameFilter))).iterator();
                    while (it2.hasNext()) {
                        ((File) it2.next()).delete();
                    }
                    z = true;
                } else {
                    Log.w("FirebaseCrashlytics", "Crashlytics report could not be enqueued to DataTransport", task.getException());
                }
                return Boolean.valueOf(z);
            default:
                C4157b c4157b = (C4157b) this.f15216b;
                Objects.requireNonNull(c4157b);
                boolean z2 = false;
                if (task.isSuccessful()) {
                    C4218d c4218d = c4157b.f13117d;
                    synchronized (c4218d) {
                        c4218d.f13215c = Tasks.forResult(null);
                    }
                    C4225i c4225i = c4218d.f13214b;
                    synchronized (c4225i) {
                        c4225i.f13236a.deleteFile(c4225i.f13237b);
                    }
                    if (task.getResult() != null) {
                        JSONArray jSONArray = ((C4221e) task.getResult()).f13221d;
                        if (c4157b.f13115b != null) {
                            try {
                                c4157b.f13115b.m866c(C4157b.m1349c(jSONArray));
                            } catch (AbtException e) {
                                Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e);
                            } catch (JSONException e2) {
                            }
                        }
                    }
                    z2 = true;
                }
                return Boolean.valueOf(z2);
        }
    }
}
