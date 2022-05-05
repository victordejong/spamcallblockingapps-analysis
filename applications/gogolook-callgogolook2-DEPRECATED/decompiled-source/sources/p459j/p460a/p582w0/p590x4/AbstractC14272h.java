package p459j.p460a.p582w0.p590x4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.p590x4.C14296p;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.x4.h */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/h.class */
public abstract class AbstractC14272h {

    /* renamed from: a */
    public int f31974a = 0;

    /* renamed from: b */
    public TimeUnit f31975b = null;

    /* renamed from: c */
    public HashMap<String, Object> f31976c = new HashMap<>();

    /* renamed from: j.a.w0.x4.h$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/h$a.class */
    public class C14273a implements Action1<Void> {
        public C14273a() {
        }

        /* renamed from: a */
        public void call(Void r3) {
            if (AbstractC14272h.this.m1939j()) {
                AbstractC14272h.this.m1938k();
            }
        }
    }

    /* renamed from: j.a.w0.x4.h$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/h$b.class */
    public class C14274b implements Single.OnSubscribe<Void> {
        public C14274b(AbstractC14272h hVar) {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Void> singleSubscriber) {
            singleSubscriber.onSuccess(null);
        }
    }

    @Nullable
    /* renamed from: a */
    public Object m1950a(String str) {
        return this.f31976c.get(str);
    }

    /* renamed from: a */
    public final void m1952a() {
        this.f31976c.clear();
    }

    /* renamed from: a */
    public abstract void mo1618a(@NonNull C14296p.C14297a.C14298a aVar);

    /* renamed from: a */
    public void m1949a(String str, @Nullable Object obj) {
        String str2;
        if (obj == null) {
            str2 = "";
        } else {
            str2 = obj;
            if (!(obj instanceof String)) {
                str2 = obj instanceof Integer ? obj : obj.toString();
            }
        }
        this.f31976c.put(str, str2);
    }

    /* renamed from: a */
    public void m1948a(boolean z) {
        if (m1939j()) {
            if (z || this.f31974a <= 0 || this.f31975b == null) {
                m1938k();
            } else {
                Single.create(new C14274b(this)).subscribeOn(Schedulers.m0io()).delay(this.f31974a, this.f31975b).subscribe(new C14273a(), C14081m3.m2611a());
            }
        }
    }

    /* renamed from: b */
    public final C14296p.C14297a.C14298a m1947b() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        String[] g = m1941g();
        Object obj = m1944d();
        if (g != null && g.length > 0) {
            Object[] e = m1943e();
            for (int i = 0; i < g.length; i++) {
                String str = g[i];
                if (e != null && i < e.length) {
                    obj = e[i];
                }
                this.f31976c.containsKey(str);
                if (this.f31976c.containsKey(str)) {
                    obj = this.f31976c.get(str);
                }
                if ((obj instanceof String) || obj == null) {
                    aVar.m1807a(str, (String) obj);
                } else if (obj instanceof Integer) {
                    aVar.m1808a(str, (Integer) obj);
                } else {
                    aVar.m1807a(str, (String) null);
                }
            }
        }
        return aVar;
    }

    /* renamed from: c */
    public void m1945c() {
        m1948a(false);
    }

    /* renamed from: d */
    public Object m1944d() {
        return C14247d.f31851f;
    }

    @Nullable
    /* renamed from: e */
    public final Object[] m1943e() {
        Map<String, Object> i = mo1940i();
        return i != null ? i.values().toArray() : mo1942f();
    }

    @Nullable
    @Deprecated
    /* renamed from: f */
    public Object[] mo1942f() {
        return null;
    }

    @Nullable
    /* renamed from: g */
    public final String[] m1941g() {
        Map<String, Object> i = mo1940i();
        return i != null ? (String[]) i.keySet().toArray(new String[i.size()]) : mo1617h();
    }

    @Nullable
    @Deprecated
    /* renamed from: h */
    public String[] mo1617h() {
        return null;
    }

    @Nullable
    /* renamed from: i */
    public Map<String, Object> mo1940i() {
        return null;
    }

    /* renamed from: j */
    public final boolean m1939j() {
        return this.f31976c.size() > 0;
    }

    /* renamed from: k */
    public final void m1938k() {
        mo1618a(m1947b());
        m1952a();
    }
}
