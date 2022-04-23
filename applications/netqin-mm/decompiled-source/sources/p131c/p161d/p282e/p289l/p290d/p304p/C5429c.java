package p131c.p161d.p282e.p289l.p290d.p304p;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.settings.SettingsCacheBehavior;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5279q;
import p131c.p161d.p282e.p289l.p290d.p293h.C5219e0;
import p131c.p161d.p282e.p289l.p290d.p293h.C5280r;
import p131c.p161d.p282e.p289l.p290d.p293h.C5286u;
import p131c.p161d.p282e.p289l.p290d.p297k.C5395b;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.AbstractC5439e;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5436b;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5440f;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5441g;
import p131c.p161d.p282e.p289l.p290d.p304p.p306i.AbstractC5445d;
import p131c.p161d.p282e.p289l.p290d.p304p.p306i.C5444c;
/* renamed from: c.d.e.l.d.p.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/p/c.class */
public class C5429c implements AbstractC5431d {

    /* renamed from: a */
    public final Context f18376a;

    /* renamed from: b */
    public final C5441g f18377b;

    /* renamed from: c */
    public final C5432e f18378c;

    /* renamed from: d */
    public final AbstractC5279q f18379d;

    /* renamed from: e */
    public final C5427a f18380e;

    /* renamed from: f */
    public final AbstractC5445d f18381f;

    /* renamed from: g */
    public final C5280r f18382g;

    /* renamed from: h */
    public final AtomicReference<AbstractC5439e> f18383h = new AtomicReference<>();

    /* renamed from: i */
    public final AtomicReference<TaskCompletionSource<C5436b>> f18384i = new AtomicReference<>(new TaskCompletionSource());

    /* renamed from: c.d.e.l.d.p.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/p/c$a.class */
    public class C5430a implements SuccessContinuation<Void, Void> {
        public C5430a() {
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Task<Void> mo8618a(Void r6) throws Exception {
            JSONObject a = C5429c.this.f18381f.mo23761a(C5429c.this.f18377b, true);
            if (a != null) {
                C5440f a2 = C5429c.this.f18378c.m23781a(a);
                C5429c.this.f18380e.m23808a(a2.m23771d(), a);
                C5429c.this.m23793a(a, "Loaded settings: ");
                C5429c cVar = C5429c.this;
                cVar.m23795a(cVar.f18377b.f18417f);
                C5429c.this.f18383h.set(a2);
                ((TaskCompletionSource) C5429c.this.f18384i.get()).m8596b((TaskCompletionSource) a2.m23772c());
                TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                taskCompletionSource.m8596b((TaskCompletionSource) a2.m23772c());
                C5429c.this.f18384i.set(taskCompletionSource);
            }
            return Tasks.m8591a((Object) null);
        }
    }

    public C5429c(Context context, C5441g gVar, AbstractC5279q qVar, C5432e eVar, C5427a aVar, AbstractC5445d dVar, C5280r rVar) {
        this.f18376a = context;
        this.f18377b = gVar;
        this.f18379d = qVar;
        this.f18378c = eVar;
        this.f18380e = aVar;
        this.f18381f = dVar;
        this.f18382g = rVar;
        this.f18383h.set(C5428b.m23806a(qVar));
    }

    /* renamed from: a */
    public static C5429c m23801a(Context context, String str, C5286u uVar, C5395b bVar, String str2, String str3, String str4, C5280r rVar) {
        String c = uVar.m24056c();
        C5219e0 e0Var = new C5219e0();
        return new C5429c(context, new C5441g(str, uVar.m24055d(), uVar.m24054e(), uVar.m24053f(), uVar, CommonUtils.m7655a(CommonUtils.m7646e(context), str, str3, str2), str3, str2, DeliveryMechanism.determineFrom(c).getId()), e0Var, new C5432e(e0Var), new C5427a(context), new C5444c(str4, String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), bVar), rVar);
    }

    /* renamed from: a */
    public final C5440f m23797a(SettingsCacheBehavior settingsCacheBehavior) {
        Exception e;
        r8 = null;
        C5440f fVar = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject b = this.f18380e.m23807b();
                if (b != null) {
                    fVar = this.f18378c.m23781a(b);
                    if (fVar != null) {
                        m23793a(b, "Loaded cached settings: ");
                        long a = this.f18379d.mo24076a();
                        if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) && fVar.m23774a(a)) {
                            C5192b.m24319a().m24317a("Cached settings have expired.");
                            fVar = null;
                        }
                        try {
                            C5192b.m24319a().m24317a("Returning cached settings.");
                        } catch (Exception e2) {
                            e = e2;
                            C5192b.m24319a().m24314b("Failed to get cached settings", e);
                            return fVar;
                        }
                    } else {
                        C5192b.m24319a().m24314b("Failed to parse cached settings data.", null);
                        fVar = null;
                    }
                } else {
                    C5192b.m24319a().m24317a("No cached settings data found.");
                    fVar = null;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return fVar;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p304p.AbstractC5431d
    /* renamed from: a */
    public Task<C5436b> mo23784a() {
        return this.f18384i.get().m8600a();
    }

    /* renamed from: a */
    public Task<Void> m23796a(SettingsCacheBehavior settingsCacheBehavior, Executor executor) {
        C5440f a;
        if (m23791c() || (a = m23797a(settingsCacheBehavior)) == null) {
            C5440f a2 = m23797a(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
            if (a2 != null) {
                this.f18383h.set(a2);
                this.f18384i.get().m8596b((TaskCompletionSource<C5436b>) a2.m23772c());
            }
            return this.f18382g.m24068d().mo8607a(executor, new C5430a());
        }
        this.f18383h.set(a);
        this.f18384i.get().m8596b((TaskCompletionSource<C5436b>) a.m23772c());
        return Tasks.m8591a((Object) null);
    }

    /* renamed from: a */
    public Task<Void> m23794a(Executor executor) {
        return m23796a(SettingsCacheBehavior.USE_CACHE, executor);
    }

    /* renamed from: a */
    public final void m23793a(JSONObject jSONObject, String str) throws JSONException {
        C5192b a = C5192b.m24319a();
        a.m24317a(str + jSONObject.toString());
    }

    /* renamed from: a */
    public final boolean m23795a(String str) {
        SharedPreferences.Editor edit = CommonUtils.m7643h(this.f18376a).edit();
        edit.putString("existing_instance_identifier", str);
        edit.apply();
        return true;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p304p.AbstractC5431d
    /* renamed from: b */
    public AbstractC5439e mo23783b() {
        return this.f18383h.get();
    }

    /* renamed from: c */
    public boolean m23791c() {
        return !m23789d().equals(this.f18377b.f18417f);
    }

    /* renamed from: d */
    public final String m23789d() {
        return CommonUtils.m7643h(this.f18376a).getString("existing_instance_identifier", "");
    }
}
