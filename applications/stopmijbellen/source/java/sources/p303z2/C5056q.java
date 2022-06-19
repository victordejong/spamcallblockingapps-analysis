package p303z2;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import android.widget.EditText;
import ba.C0748b;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.consent_sdk.zzd;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.mglab.scm.MainActivity;
import com.mglab.scm.api.AlarmJobIntentService;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.FragmentPreferences;
import com.mglab.scm.visual.FragmentStat;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p006a5.C0017a;
import p006a5.C0018b;
import p007a6.C0033h;
import p030c5.C0844c;
import p030c5.C0845d;
import p034c9.AbstractC0859f;
import p070d5.AbstractC2475a;
import p074d9.AbstractC2490c;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p086f.C2678t;
import p095f8.C2774b;
import p095f8.C2779g;
import p095f8.C2780h;
import p117h8.C3026c;
import p117h8.C3027d;
import p117h8.C3036l;
import p117h8.C3037m;
import p117h8.C3043q;
import p117h8.C3044r;
import p117h8.C3050w;
import p117h8.C3051x;
import p149k8.C3382a;
import p149k8.C3394j;
import p170m7.AbstractC3656d;
import p211q6.C4157b;
import p222r6.C4221e;
import p231s4.AbstractC4288b;
import p231s4.AbstractC4297g;
import p231s4.C4295e;
import p233s6.C4313h;
import p233s6.C4316k;
import p275w5.AbstractC4737a;
import p275w5.AbstractC4739b;
import p278w8.C4775f;
import p278w8.C4776g;
import p278w8.C4788o;
import p278w8.C4790q;
import p278w8.C4791r;
import p283x2.C4849a;
import p285x4.AbstractC4857a;
import p289x8.AbstractC4932a;
import p303z2.C5055p;
import p303z2.C5056q;
import p303z2.C5057r;
/* renamed from: z2.q */
/* loaded from: classes2-dex2jar.jar:z2/q.class */
public final /* synthetic */ class C5056q implements C5057r.AbstractC5059b, AbstractC4737a.AbstractC4738a, OnFailureListener, SuccessContinuation, OnCompleteListener, AbstractC4297g, AbstractC3656d, AbstractC2490c, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ int f15358a;

    /* renamed from: b */
    public final /* synthetic */ Object f15359b;

    public /* synthetic */ C5056q(Object obj, int i) {
        this.f15358a = i;
        this.f15359b = obj;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, Object obj) {
        AlarmJobIntentService alarmJobIntentService = (AlarmJobIntentService) this.f15359b;
        C4316k c4316k = (C4316k) obj;
        int i = AlarmJobIntentService.f7284l;
        Objects.requireNonNull(alarmJobIntentService);
        if (c4316k == null) {
            C2780h.m3051f0(alarmJobIntentService.getApplicationContext());
            C1676a.m4785l(".uploadDev no result", 1, C0082b.m8759c(-3, C0748b.m7409b()));
            return;
        }
        c4316k.toString();
        Context baseContext = alarmJobIntentService.getBaseContext();
        C2780h.m3052f(baseContext, "fstart", true);
        if (!C2780h.m3052f(baseContext, "fstart", true)) {
            C2780h.m3049g0(alarmJobIntentService.getBaseContext(), "resend_dev", false);
        }
        alarmJobIntentService.m3968k();
    }

    @Override // p303z2.C5057r.AbstractC5059b
    public Object apply(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        sQLiteDatabase.compileStatement((String) this.f15359b).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    @Override // p074d9.AbstractC2490c
    /* renamed from: c */
    public void mo98c(AbstractC0859f abstractC0859f) {
        C4313h c4313h = (C4313h) this.f15359b;
        int i = AlarmJobIntentService.f7284l;
        for (int i2 = 0; i2 < c4313h.size(); i2++) {
            C4316k m1110c = c4313h.m1112e(i2).m1110c();
            C3044r c3044r = new C3044r();
            c3044r.f10315b = m1110c.m1108f(FacebookAdapter.KEY_ID).mo1105a();
            c3044r.f10316c = m1110c.m1108f("hash").mo1104d();
            c3044r.mo7416a();
        }
    }

    @Override // p275w5.AbstractC4737a.AbstractC4738a
    /* renamed from: d */
    public void mo97d(AbstractC4739b abstractC4739b) {
        C0017a c0017a = (C0017a) this.f15359b;
        Objects.requireNonNull(c0017a);
        AbstractC4857a abstractC4857a = (AbstractC4857a) abstractC4739b.get();
        C2678t c2678t = new C2678t(abstractC4857a);
        C0018b c0018b = new C0018b();
        AbstractC4857a.AbstractC4858a mo347a = abstractC4857a.mo347a("clx", c0018b);
        AbstractC4857a.AbstractC4858a abstractC4858a = mo347a;
        if (mo347a == null) {
            Log.isLoggable("FirebaseCrashlytics", 3);
            abstractC4858a = abstractC4857a.mo347a(AppMeasurement.CRASH_ORIGIN, c0018b);
            if (abstractC4858a != null) {
                Log.w("FirebaseCrashlytics", "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.", null);
            }
        }
        if (abstractC4858a == null) {
            Log.w("FirebaseCrashlytics", "Could not register Firebase Analytics listener; a listener is already registered.", null);
            return;
        }
        Log.isLoggable("FirebaseCrashlytics", 3);
        C0845d c0845d = new C0845d();
        C0844c c0844c = new C0844c(c2678t, 500, TimeUnit.MILLISECONDS);
        synchronized (c0017a) {
            for (AbstractC2475a abstractC2475a : c0017a.f20d) {
                c0845d.mo156d(abstractC2475a);
            }
            c0018b.f22b = c0845d;
            c0018b.f21a = c0844c;
            c0017a.f19c = c0845d;
            c0017a.f18b = c0844c;
        }
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        switch (this.f15358a) {
            case 8:
                ((FragmentPreferences) this.f15359b).pinEntry.setChecked(false);
                return;
            case 9:
                Context context = (Context) this.f15359b;
                int i = FragmentStat.AsyncTaskC2093a.f7611b;
                C2780h.m3049g0(context, "rate_100", true);
                return;
            default:
                C2107c c2107c = (C2107c) this.f15359b;
                Objects.requireNonNull(c2107c);
                String obj = ((EditText) C2107c.f7645k.findViewById(2131296744)).getText().toString();
                int i2 = c2107c.f7649d;
                if (i2 == 1) {
                    if (c2107c.f7650e) {
                        new C4791r(new C4776g(new C4775f(), C3050w.class), C3051x.f10380g.m239a(obj), C3051x.f10383j.m239a(-1)).mo458i();
                    } else {
                        for (C3050w c3050w : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3050w.class), C3051x.f10383j.m234g(-1)).mo456l()) {
                            if (C3043q.m2697y(c3050w.f10375c, obj)) {
                                new C4791r(new C4776g(new C4775f(), C3050w.class), C3051x.f10380g.m239a(c3050w.f10375c), C3051x.f10383j.m231j(-1)).mo458i();
                            }
                        }
                    }
                    C0033h.m8884m(1, C0748b.m7409b());
                } else if (i2 == 2) {
                    if (c2107c.f7650e) {
                        new C4791r(new C4776g(new C4775f(), C3026c.class), C3027d.f10156g.m239a(obj), C3027d.f10159j.m239a(-1)).mo458i();
                    } else {
                        for (C3026c c3026c : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class), C3027d.f10159j.m234g(-1)).mo456l()) {
                            if (C3043q.m2697y(c3026c.f10150c, obj)) {
                                new C4791r(new C4776g(new C4775f(), C3026c.class), C3027d.f10156g.m239a(c3026c.f10150c), C3027d.f10159j.m231j(-1)).mo458i();
                            }
                        }
                    }
                    C0748b.m7409b().m7404g(new C3382a(1));
                } else if (i2 == 5) {
                    int i3 = c2107c.f7651f.f7343d.f10260b;
                    new C4791r(new C4790q(C3036l.class).m460a(C3037m.f10294n.m239a(1)), C3037m.f10287g.m239a(Integer.valueOf(c2107c.f7651f.f7343d.f10260b))).mo458i();
                    C0748b.m7409b().m7404g(new C3394j(c2107c.f7651f));
                }
                C2779g.m3122K(c2107c.f7646a, c2107c.f7647b, 2131820739);
                return;
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        Objects.requireNonNull((C2774b) this.f15359b);
        if (task.isSuccessful()) {
            Objects.toString(task.getResult());
        }
    }

    @Override // p231s4.AbstractC4297g
    public void onConsentFormLoadSuccess(AbstractC4288b abstractC4288b) {
        final MainActivity mainActivity = (MainActivity) this.f15359b;
        if (mainActivity.f7275r.getConsentStatus() == 2) {
            abstractC4288b.show(mainActivity, new AbstractC4288b.AbstractC4289a() { // from class: f8.m
                @Override // p231s4.AbstractC4288b.AbstractC4289a
                /* renamed from: a */
                public final void mo1114a(C4295e c4295e) {
                    MainActivity mainActivity2 = MainActivity.this;
                    int i = MainActivity.f7270v;
                    Objects.requireNonNull(mainActivity2);
                    zzd.zza(mainActivity2).zzc().zza(new C5056q(mainActivity2, 5), C5055p.f15355f);
                }
            });
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        ((RemoteConfigManager) this.f15359b).m4467xc904e814(exc);
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        C4157b c4157b = (C4157b) this.f15359b;
        Void r0 = (Void) obj;
        Task<C4221e> m1284b = c4157b.f13117d.m1284b();
        Task<C4221e> m1284b2 = c4157b.f13118e.m1284b();
        return Tasks.whenAllComplete(m1284b, m1284b2).continueWithTask(c4157b.f13116c, new C4849a(c4157b, m1284b, m1284b2));
    }
}
