package p081h.p203i.p325c.p337n.p338d.p341h;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p342i.C9624b;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
import p081h.p203i.p325c.p337n.p338d.p343j.C9755w;
import p081h.p203i.p325c.p337n.p338d.p346l.AbstractC9776h;
import p081h.p203i.p325c.p337n.p338d.p346l.C9775g;
import p081h.p203i.p325c.p337n.p338d.p351o.C9803c;
import p081h.p203i.p325c.p337n.p338d.p352p.AbstractC9809e;
import p081h.p203i.p325c.p337n.p338d.p355q.AbstractC9829d;
/* renamed from: h.i.c.n.d.h.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/h0.class */
public class C9549h0 implements AbstractC9607o {

    /* renamed from: a */
    public final C9608p f21741a;

    /* renamed from: b */
    public final C9775g f21742b;

    /* renamed from: c */
    public final C9803c f21743c;

    /* renamed from: d */
    public final C9624b f21744d;

    /* renamed from: e */
    public final C9557j0 f21745e;

    public C9549h0(C9608p pVar, C9775g gVar, C9803c cVar, C9624b bVar, C9557j0 j0Var) {
        this.f21741a = pVar;
        this.f21742b = gVar;
        this.f21743c = cVar;
        this.f21744d = bVar;
        this.f21745e = j0Var;
    }

    /* renamed from: a */
    public static C9549h0 m14903a(Context context, C9621y yVar, AbstractC9776h hVar, C9533b bVar, C9624b bVar2, C9557j0 j0Var, AbstractC9829d dVar, AbstractC9809e eVar) {
        return new C9549h0(new C9608p(context, yVar, bVar, dVar), new C9775g(new File(hVar.mo14291b()), eVar), C9803c.m14177a(context), bVar2, j0Var);
    }

    @NonNull
    /* renamed from: a */
    public static List<AbstractC9715v.AbstractC9717b> m14894a(@NonNull Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            AbstractC9715v.AbstractC9717b.AbstractC9718a c = AbstractC9715v.AbstractC9717b.m14590c();
            c.mo14588a(entry.getKey());
            c.mo14587b(entry.getValue());
            arrayList.add(c.mo14589a());
        }
        Collections.sort(arrayList, C9545g0.m14942a());
        return arrayList;
    }

    /* renamed from: a */
    public AbstractC9143h<Void> m14893a(@NonNull Executor executor, @NonNull EnumC9614u uVar) {
        if (uVar == EnumC9614u.NONE) {
            C9513b.m15015a().m15013a("Send via DataTransport disabled. Removing DataTransport reports.");
            this.f21742b.m14310b();
            return C9148k.m15999a((Object) null);
        }
        List<AbstractC9609q> d = this.f21742b.m14299d();
        ArrayList arrayList = new ArrayList();
        for (AbstractC9609q qVar : d) {
            if (qVar.mo14716a().m14605i() != AbstractC9715v.EnumC9754e.NATIVE || uVar == EnumC9614u.ALL) {
                arrayList.add(this.f21743c.m14175a(qVar).mo16020a(executor, C9543f0.m14948a(this)));
            } else {
                C9513b.m15015a().m15013a("Send native reports via DataTransport disabled. Removing DataTransport reports.");
                this.f21742b.m14306b(qVar.mo14714b());
            }
        }
        return C9148k.m15998a((Collection<? extends AbstractC9143h<?>>) arrayList);
    }

    /* renamed from: a */
    public void m14905a() {
        this.f21742b.m14310b();
    }

    /* renamed from: a */
    public void m14904a(long j, @Nullable String str) {
        this.f21742b.m14317a(str, j);
    }

    /* renamed from: a */
    public void m14899a(@NonNull String str) {
        String b = this.f21745e.m14878b();
        if (b == null) {
            C9513b.m15015a().m15013a("Could not persist user ID; no user ID available");
        } else {
            this.f21742b.m14313a(b, str);
        }
    }

    /* renamed from: a */
    public void m14898a(@NonNull String str, long j) {
        this.f21742b.m14328a(this.f21741a.m14729a(str, j));
    }

    /* renamed from: a */
    public void m14897a(@NonNull String str, @NonNull List<AbstractC9537c0> list) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC9537c0 c0Var : list) {
            AbstractC9715v.AbstractC9719c.AbstractC9721b a = c0Var.mo14693a();
            if (a != null) {
                arrayList.add(a);
            }
        }
        C9775g gVar = this.f21742b;
        AbstractC9715v.AbstractC9719c.AbstractC9720a c = AbstractC9715v.AbstractC9719c.m14584c();
        c.mo14582a(C9755w.m14391a(arrayList));
        gVar.m14316a(str, c.mo14583a());
    }

    /* renamed from: a */
    public void m14896a(@NonNull Throwable th, @NonNull Thread thread, @NonNull String str, long j) {
        C9513b a = C9513b.m15015a();
        a.m15013a("Persisting fatal event for session " + str);
        m14895a(th, thread, str, "crash", j, true);
    }

    /* renamed from: a */
    public final void m14895a(@NonNull Throwable th, @NonNull Thread thread, @NonNull String str, @NonNull String str2, long j, boolean z) {
        boolean equals = str2.equals("crash");
        AbstractC9715v.AbstractC9723d.AbstractC9730d a = this.f21741a.m14726a(th, thread, str2, j, 4, 8, z);
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b f = a.mo14504f();
        String c = this.f21744d.m14672c();
        if (c != null) {
            AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d.AbstractC9749a b = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d.m14408b();
            b.mo14406a(c);
            f.mo14425a(b.mo14407a());
        } else {
            C9513b.m15015a().m15013a("No log data to include with this event.");
        }
        List<AbstractC9715v.AbstractC9717b> a2 = m14894a(this.f21745e.m14881a());
        if (!a2.isEmpty()) {
            AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a e = a.mo14509a().mo14498e();
            e.mo14493a(C9755w.m14391a(a2));
            f.mo14427a(e.mo14496a());
        }
        this.f21742b.m14329a(f.mo14429a(), str, equals);
    }

    /* renamed from: a */
    public final boolean m14902a(@NonNull AbstractC9143h<AbstractC9609q> hVar) {
        if (hVar.mo16009e()) {
            AbstractC9609q b = hVar.mo16014b();
            C9513b a = C9513b.m15015a();
            a.m15013a("Crashlytics report successfully enqueued to DataTransport: " + b.mo14714b());
            this.f21742b.m14306b(b.mo14714b());
            return true;
        }
        C9513b.m15015a().m15012a("Crashlytics report could not be enqueued to DataTransport", hVar.mo16030a());
        return false;
    }

    /* renamed from: b */
    public void m14892b(@NonNull Throwable th, @NonNull Thread thread, @NonNull String str, long j) {
        C9513b a = C9513b.m15015a();
        a.m15013a("Persisting non-fatal event for session " + str);
        m14895a(th, thread, str, "error", j, false);
    }
}
