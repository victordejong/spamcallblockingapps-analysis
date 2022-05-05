package p459j.p460a.p582w0.p590x4;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.widget.Toast;
import gogolook.callgogolook2.MyApplication;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import org.json.JSONObject;
import p459j.p460a.p521j0.p522u.p523d.C12629k0;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.p632u.C15021m;
import p626l.p632u.C15029u;
import p626l.p633v.C15036a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \u00142\u00020\u0001:\u0002\u0014\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u0012\u001a\u00020\fJ\u0006\u0010\u0013\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/util/analytics/CallDialogSearchRetryEventHelper;", "", "()V", "endTime", "", "firstRespondTag", "", "startTime", "triggeredRequestMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lgogolook/callgogolook2/util/analytics/CallDialogSearchRetryEventHelper$RequestInfo;", "setRequestExtras", "", NovaHomeBadger.TAG, "extras", "Landroid/os/Bundle;", "setRequestResponded", "setRequestTriggered", "start", "stop", "Companion", "RequestInfo", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.x4.i */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/i.class */
public final class C14275i {

    /* renamed from: a */
    public long f31978a;

    /* renamed from: b */
    public long f31979b;

    /* renamed from: c */
    public String f31980c;

    /* renamed from: d */
    public final ConcurrentHashMap<String, C14277b> f31981d = new ConcurrentHashMap<>();

    /* renamed from: j.a.w0.x4.i$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/i$a.class */
    public static final class C14276a {
        public C14276a() {
        }

        public /* synthetic */ C14276a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.w0.x4.i$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/i$b.class */
    public static final class C14277b {

        /* renamed from: a */
        public int f31982a;

        /* renamed from: b */
        public Bundle f31983b;

        /* renamed from: c */
        public final String f31984c;

        /* renamed from: d */
        public final int f31985d;

        public C14277b(String str, int i) {
            C15149k.m377b(str, NovaHomeBadger.TAG);
            this.f31984c = str;
            this.f31985d = i;
        }

        /* renamed from: a */
        public final Bundle m1931a() {
            return this.f31983b;
        }

        /* renamed from: a */
        public final void m1930a(int i) {
            this.f31982a = i;
        }

        /* renamed from: a */
        public final void m1929a(Bundle bundle) {
            this.f31983b = bundle;
        }

        /* renamed from: b */
        public final int m1928b() {
            return this.f31982a;
        }

        /* renamed from: c */
        public final String m1927c() {
            return this.f31984c;
        }

        /* renamed from: d */
        public final int m1926d() {
            return this.f31985d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C14277b)) {
                return false;
            }
            C14277b bVar = (C14277b) obj;
            if (!C15149k.m384a((Object) this.f31984c, (Object) bVar.f31984c)) {
                return false;
            }
            return this.f31985d == bVar.f31985d;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f31984c;
            int hashCode2 = str != null ? str.hashCode() : 0;
            hashCode = Integer.valueOf(this.f31985d).hashCode();
            return (hashCode2 * 31) + hashCode;
        }

        public String toString() {
            return "RequestInfo(tag=" + this.f31984c + ", triggerTime=" + this.f31985d + ")";
        }
    }

    /* renamed from: j.a.w0.x4.i$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/i$c.class */
    public static final class C14278c<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C15036a.m498a(Integer.valueOf(((C14277b) t).m1926d()), Integer.valueOf(((C14277b) t2).m1926d()));
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "", "run"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.w0.x4.i$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/i$d.class */
    public static final class RunnableC14279d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f31986a;

        /* renamed from: j.a.w0.x4.i$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/i$d$a.class */
        public static final class C14280a extends AbstractC15150l implements AbstractC15118l<C14277b, String> {

            /* renamed from: a */
            public static final C14280a f31987a = new C14280a();

            public C14280a() {
                super(1);
            }

            /* renamed from: a */
            public final String invoke(C14277b bVar) {
                C15149k.m377b(bVar, "it");
                return bVar.m1927c() + ": " + bVar.m1926d() + " -> " + bVar.m1928b();
            }
        }

        public RunnableC14279d(List list) {
            this.f31986a = list;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            Toast.makeText(o.getApplicationContext(), C15029u.m545a(this.f31986a, "\n", null, null, 0, null, C14280a.f31987a, 30, null), 1).show();
        }
    }

    static {
        new C14276a(null);
    }

    /* renamed from: a */
    public final void m1935a() {
        this.f31978a = SystemClock.elapsedRealtime();
    }

    /* renamed from: a */
    public final void m1934a(String str) {
        C15149k.m377b(str, NovaHomeBadger.TAG);
        this.f31981d.put(str, new C14277b(str, (int) (SystemClock.elapsedRealtime() - this.f31978a)));
    }

    /* renamed from: a */
    public final void m1933a(String str, Bundle bundle) {
        C15149k.m377b(str, NovaHomeBadger.TAG);
        C15149k.m377b(bundle, "extras");
        int elapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.f31978a);
        C14277b bVar = this.f31981d.get(str);
        if (bVar != null) {
            bVar.m1930a(elapsedRealtime);
            bVar.m1929a(bundle);
        }
        if (this.f31980c == null) {
            this.f31980c = str;
        }
    }

    /* renamed from: b */
    public final void m1932b() {
        this.f31979b = SystemClock.elapsedRealtime();
        Collection<C14277b> values = this.f31981d.values();
        C15149k.m383a((Object) values, "triggeredRequestMap.values");
        List c = C15029u.m530c(values, new C14278c());
        C13565v g = C13565v.m3921g();
        C15149k.m383a((Object) g, "DevelopMode.getInstance()");
        if (g.m23335b()) {
            C14174u.m2293k().postDelayed(new RunnableC14279d(c), 500L);
        }
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1807a("operator", C14017g4.m2812l());
        aVar.m1808a("cd_duration", Integer.valueOf((int) (this.f31979b - this.f31978a)));
        int i = 1;
        int i2 = 0;
        aVar.m1808a("has_response", Integer.valueOf(this.f31980c != null ? 1 : 0));
        if (this.f31980c == null || !(!C15149k.m384a((Object) ((C14277b) c.get(0)).m1927c(), (Object) this.f31980c))) {
            i = 0;
        }
        aVar.m1808a("retry_faster", Integer.valueOf(i));
        aVar.m1808a("ab_group", Integer.valueOf(C12629k0.m5707h()));
        for (Object obj : c) {
            JSONObject jSONObject = null;
            if (i2 >= 0) {
                C14277b bVar = (C14277b) obj;
                aVar.m1807a("req" + i2 + "_tag", bVar.m1927c());
                aVar.m1808a("req" + i2 + "_req_time", Integer.valueOf(bVar.m1926d()));
                aVar.m1808a("req" + i2 + "_res_time", Integer.valueOf(bVar.m1928b()));
                String str = "req" + i2 + "_extras";
                Bundle a = bVar.m1931a();
                if (a != null) {
                    jSONObject = C14060l2.m2707a(a);
                }
                aVar.m1807a(str, String.valueOf(jSONObject));
                i2++;
            } else {
                C15021m.m558c();
                throw null;
            }
        }
        C14296p.m1830a("whoscall_call_dialog_search_slow_retry", aVar.m1811a());
    }
}
