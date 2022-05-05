package p081h.p203i.p325c.p337n.p338d.p352p;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p293r.AbstractC9141g;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9612s;
import p081h.p203i.p325c.p337n.p338d.p341h.C9546h;
import p081h.p203i.p325c.p337n.p338d.p341h.C9555i0;
import p081h.p203i.p325c.p337n.p338d.p341h.C9613t;
import p081h.p203i.p325c.p337n.p338d.p341h.C9621y;
import p081h.p203i.p325c.p337n.p338d.p341h.EnumC9615v;
import p081h.p203i.p325c.p337n.p338d.p345k.C9767c;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.AbstractC9817e;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9814b;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9818f;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9819g;
import p081h.p203i.p325c.p337n.p338d.p352p.p354j.AbstractC9824e;
import p081h.p203i.p325c.p337n.p338d.p352p.p354j.C9823d;
/* renamed from: h.i.c.n.d.p.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/p/d.class */
public class C9807d implements AbstractC9809e {

    /* renamed from: a */
    public final Context f22247a;

    /* renamed from: b */
    public final C9819g f22248b;

    /* renamed from: c */
    public final C9810f f22249c;

    /* renamed from: d */
    public final AbstractC9612s f22250d;

    /* renamed from: e */
    public final C9804a f22251e;

    /* renamed from: f */
    public final AbstractC9824e f22252f;

    /* renamed from: g */
    public final C9613t f22253g;

    /* renamed from: h */
    public final AtomicReference<AbstractC9817e> f22254h = new AtomicReference<>();

    /* renamed from: i */
    public final AtomicReference<C9145i<C9814b>> f22255i = new AtomicReference<>(new C9145i());

    /* renamed from: h.i.c.n.d.p.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/p/d$a.class */
    public class C9808a implements AbstractC9141g<Void, Void> {
        public C9808a() {
        }

        @NonNull
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public AbstractC9143h<Void> mo13756a(@Nullable Void r6) throws Exception {
            JSONObject a = C9807d.this.f22252f.mo14124a(C9807d.this.f22248b, true);
            if (a != null) {
                C9818f a2 = C9807d.this.f22249c.m14144a(a);
                C9807d.this.f22251e.m14171a(a2.m14134d(), a);
                C9807d.this.m14156a(a, "Loaded settings: ");
                C9807d dVar = C9807d.this;
                dVar.m14158a(dVar.f22248b.f22288f);
                C9807d.this.f22254h.set(a2);
                ((C9145i) C9807d.this.f22255i.get()).m16004b((C9145i) a2.m14135c());
                C9145i iVar = new C9145i();
                iVar.m16004b((C9145i) a2.m14135c());
                C9807d.this.f22255i.set(iVar);
            }
            return C9148k.m15999a((Object) null);
        }
    }

    public C9807d(Context context, C9819g gVar, AbstractC9612s sVar, C9810f fVar, C9804a aVar, AbstractC9824e eVar, C9613t tVar) {
        this.f22247a = context;
        this.f22248b = gVar;
        this.f22250d = sVar;
        this.f22249c = fVar;
        this.f22251e = aVar;
        this.f22252f = eVar;
        this.f22253g = tVar;
        this.f22254h.set(C9805b.m14169a(sVar));
    }

    /* renamed from: a */
    public static C9807d m14164a(Context context, String str, C9621y yVar, C9767c cVar, String str2, String str3, String str4, C9613t tVar) {
        String c = yVar.m14685c();
        C9555i0 i0Var = new C9555i0();
        return new C9807d(context, new C9819g(str, yVar.m14684d(), yVar.m14683e(), yVar.m14682f(), yVar, C9546h.m14924a(C9546h.m14915e(context), str, str3, str2), str3, str2, EnumC9615v.m14699a(c).m14700a()), i0Var, new C9810f(i0Var), new C9804a(context), new C9823d(str4, String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), cVar), tVar);
    }

    /* renamed from: a */
    public AbstractC9143h<Void> m14162a(EnumC9806c cVar, Executor executor) {
        C9818f a;
        if (m14154c() || (a = m14163a(cVar)) == null) {
            C9818f a2 = m14163a(EnumC9806c.IGNORE_CACHE_EXPIRATION);
            if (a2 != null) {
                this.f22254h.set(a2);
                this.f22255i.get().m16004b((C9145i<C9814b>) a2.m14135c());
            }
            return this.f22253g.m14703d().mo16015a(executor, new C9808a());
        }
        this.f22254h.set(a);
        this.f22255i.get().m16004b((C9145i<C9814b>) a.m14135c());
        return C9148k.m15999a((Object) null);
    }

    /* renamed from: a */
    public AbstractC9143h<Void> m14157a(Executor executor) {
        return m14162a(EnumC9806c.USE_CACHE, executor);
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p352p.AbstractC9809e
    /* renamed from: a */
    public AbstractC9817e mo14147a() {
        return this.f22254h.get();
    }

    /* renamed from: a */
    public final C9818f m14163a(EnumC9806c cVar) {
        Exception e;
        r8 = null;
        C9818f fVar = null;
        try {
            if (!EnumC9806c.SKIP_CACHE_LOOKUP.equals(cVar)) {
                JSONObject b = this.f22251e.m14170b();
                if (b != null) {
                    fVar = this.f22249c.m14144a(b);
                    if (fVar != null) {
                        m14156a(b, "Loaded cached settings: ");
                        long a = this.f22250d.mo14711a();
                        if (!EnumC9806c.IGNORE_CACHE_EXPIRATION.equals(cVar) && fVar.m14137a(a)) {
                            C9513b.m15015a().m15013a("Cached settings have expired.");
                            fVar = null;
                        }
                        try {
                            C9513b.m15015a().m15013a("Returning cached settings.");
                        } catch (Exception e2) {
                            e = e2;
                            C9513b.m15015a().m15010b("Failed to get cached settings", e);
                            return fVar;
                        }
                    } else {
                        C9513b.m15015a().m15010b("Failed to parse cached settings data.", null);
                        fVar = null;
                    }
                } else {
                    C9513b.m15015a().m15013a("No cached settings data found.");
                    fVar = null;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return fVar;
    }

    /* renamed from: a */
    public final void m14156a(JSONObject jSONObject, String str) throws JSONException {
        C9513b a = C9513b.m15015a();
        a.m15013a(str + jSONObject.toString());
    }

    @SuppressLint({"CommitPrefEdits"})
    /* renamed from: a */
    public final boolean m14158a(String str) {
        SharedPreferences.Editor edit = C9546h.m14912h(this.f22247a).edit();
        edit.putString("existing_instance_identifier", str);
        edit.apply();
        return true;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p352p.AbstractC9809e
    /* renamed from: b */
    public AbstractC9143h<C9814b> mo14146b() {
        return this.f22255i.get().m16008a();
    }

    /* renamed from: c */
    public boolean m14154c() {
        return !m14152d().equals(this.f22248b.f22288f);
    }

    /* renamed from: d */
    public final String m14152d() {
        return C9546h.m14912h(this.f22247a).getString("existing_instance_identifier", "");
    }
}
