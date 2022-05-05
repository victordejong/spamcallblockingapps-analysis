package p081h.p203i.p325c.p337n.p338d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import p081h.p203i.p204a.p224e.p293r.AbstractC9128a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9141g;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p337n.p338d.p341h.C9546h;
import p081h.p203i.p325c.p337n.p338d.p341h.C9601m;
import p081h.p203i.p325c.p337n.p338d.p341h.C9613t;
import p081h.p203i.p325c.p337n.p338d.p341h.C9621y;
import p081h.p203i.p325c.p337n.p338d.p341h.EnumC9615v;
import p081h.p203i.p325c.p337n.p338d.p345k.C9767c;
import p081h.p203i.p325c.p337n.p338d.p352p.C9807d;
import p081h.p203i.p325c.p337n.p338d.p352p.EnumC9806c;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9813a;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9814b;
import p081h.p203i.p325c.p337n.p338d.p352p.p354j.C9822c;
import p081h.p203i.p325c.p337n.p338d.p352p.p354j.C9825f;
/* renamed from: h.i.c.n.d.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/e.class */
public class C9518e {

    /* renamed from: a */
    public final C9767c f21674a = new C9767c();

    /* renamed from: b */
    public final C9435c f21675b;

    /* renamed from: c */
    public final Context f21676c;

    /* renamed from: d */
    public PackageManager f21677d;

    /* renamed from: e */
    public String f21678e;

    /* renamed from: f */
    public PackageInfo f21679f;

    /* renamed from: g */
    public String f21680g;

    /* renamed from: h */
    public String f21681h;

    /* renamed from: i */
    public String f21682i;

    /* renamed from: j */
    public String f21683j;

    /* renamed from: k */
    public String f21684k;

    /* renamed from: l */
    public C9621y f21685l;

    /* renamed from: m */
    public C9613t f21686m;

    /* renamed from: h.i.c.n.d.e$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/e$a.class */
    public class C9519a implements AbstractC9141g<C9814b, Void> {

        /* renamed from: a */
        public final /* synthetic */ String f21687a;

        /* renamed from: b */
        public final /* synthetic */ C9807d f21688b;

        /* renamed from: c */
        public final /* synthetic */ Executor f21689c;

        public C9519a(String str, C9807d dVar, Executor executor) {
            this.f21687a = str;
            this.f21688b = dVar;
            this.f21689c = executor;
        }

        @NonNull
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public AbstractC9143h<Void> mo13756a(@Nullable C9814b bVar) throws Exception {
            try {
                C9518e.this.m14988a(bVar, this.f21687a, this.f21688b, this.f21689c, true);
                return null;
            } catch (Exception e) {
                C9513b.m15015a().m15010b("Error performing auto configuration.", e);
                throw e;
            }
        }
    }

    /* renamed from: h.i.c.n.d.e$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/e$b.class */
    public class C9520b implements AbstractC9141g<Void, C9814b> {

        /* renamed from: a */
        public final /* synthetic */ C9807d f21691a;

        public C9520b(C9518e eVar, C9807d dVar) {
            this.f21691a = dVar;
        }

        @NonNull
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public AbstractC9143h<C9814b> mo13756a(@Nullable Void r3) throws Exception {
            return this.f21691a.mo14146b();
        }
    }

    /* renamed from: h.i.c.n.d.e$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/e$c.class */
    public class C9521c implements AbstractC9128a<Void, Object> {
        public C9521c(C9518e eVar) {
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
        /* renamed from: a */
        public Object mo14017a(@NonNull AbstractC9143h<Void> hVar) throws Exception {
            if (hVar.mo16009e()) {
                return null;
            }
            C9513b.m15015a().m15010b("Error fetching settings.", hVar.mo16030a());
            return null;
        }
    }

    public C9518e(C9435c cVar, Context context, C9621y yVar, C9613t tVar) {
        this.f21675b = cVar;
        this.f21676c = context;
        this.f21685l = yVar;
        this.f21686m = tVar;
    }

    /* renamed from: e */
    public static String m14980e() {
        return C9601m.m14742e();
    }

    /* renamed from: a */
    public Context m14991a() {
        return this.f21676c;
    }

    /* renamed from: a */
    public C9807d m14990a(Context context, C9435c cVar, Executor executor) {
        C9807d a = C9807d.m14164a(context, cVar.m15169d().m15149b(), this.f21685l, this.f21674a, this.f21680g, this.f21681h, m14982c(), this.f21686m);
        a.m14157a(executor).mo16020a(executor, new C9521c(this));
        return a;
    }

    /* renamed from: a */
    public final C9813a m14986a(String str, String str2) {
        return new C9813a(str, str2, m14984b().m14687b(), this.f21681h, this.f21680g, C9546h.m14924a(C9546h.m14915e(m14991a()), str2, this.f21681h, this.f21680g), this.f21683j, EnumC9615v.m14699a(this.f21682i).m14700a(), this.f21684k, "0");
    }

    /* renamed from: a */
    public final void m14988a(C9814b bVar, String str, C9807d dVar, Executor executor, boolean z) {
        if ("new".equals(bVar.f22268a)) {
            if (m14987a(bVar, str, z)) {
                dVar.m14162a(EnumC9806c.SKIP_CACHE_LOOKUP, executor);
            } else {
                C9513b.m15015a().m15010b("Failed to create app with Crashlytics service.", null);
            }
        } else if ("configured".equals(bVar.f22268a)) {
            dVar.m14162a(EnumC9806c.SKIP_CACHE_LOOKUP, executor);
        } else if (bVar.f22273f) {
            C9513b.m15015a().m15013a("Server says an update is required - forcing a full App update.");
            m14983b(bVar, str, z);
        }
    }

    /* renamed from: a */
    public void m14985a(Executor executor, C9807d dVar) {
        this.f21686m.m14703d().mo16015a(executor, new C9520b(this, dVar)).mo16015a(executor, new C9519a(this.f21675b.m15169d().m15149b(), dVar, executor));
    }

    /* renamed from: a */
    public final boolean m14987a(C9814b bVar, String str, boolean z) {
        return new C9822c(m14982c(), bVar.f22269b, this.f21674a, m14980e()).m14132a(m14986a(bVar.f22272e, str), z);
    }

    /* renamed from: b */
    public final C9621y m14984b() {
        return this.f21685l;
    }

    /* renamed from: b */
    public final boolean m14983b(C9814b bVar, String str, boolean z) {
        return new C9825f(m14982c(), bVar.f22269b, this.f21674a, m14980e()).m14132a(m14986a(bVar.f22272e, str), z);
    }

    /* renamed from: c */
    public String m14982c() {
        return C9546h.m14921b(this.f21676c, "com.crashlytics.ApiEndpoint");
    }

    /* renamed from: d */
    public boolean m14981d() {
        try {
            this.f21682i = this.f21685l.m14685c();
            this.f21677d = this.f21676c.getPackageManager();
            this.f21678e = this.f21676c.getPackageName();
            this.f21679f = this.f21677d.getPackageInfo(this.f21678e, 0);
            this.f21680g = Integer.toString(this.f21679f.versionCode);
            this.f21681h = this.f21679f.versionName == null ? "0.0" : this.f21679f.versionName;
            this.f21683j = this.f21677d.getApplicationLabel(this.f21676c.getApplicationInfo()).toString();
            this.f21684k = Integer.toString(this.f21676c.getApplicationInfo().targetSdkVersion);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            C9513b.m15015a().m15010b("Failed init", e);
            return false;
        }
    }
}
