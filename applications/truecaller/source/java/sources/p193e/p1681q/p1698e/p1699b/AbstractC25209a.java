package p193e.p1681q.p1698e.p1699b;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1681q.p1698e.p1700c.C25220a;
/* renamed from: e.q.e.b.a */
/* loaded from: classes16-dex2jar.jar:e/q/e/b/a.class */
public abstract class AbstractC25209a<T> implements Serializable {

    /* renamed from: c */
    public int f70487c;

    /* renamed from: a */
    public List<T> f70485a = new ArrayList();

    /* renamed from: b */
    public HashMap<T, C25212c<T>> f70486b = new HashMap<>();

    /* renamed from: d */
    public C25211b<T> f70488d = new C25211b<>(null);

    /* renamed from: e.q.e.b.a$b */
    /* loaded from: classes16-dex2jar.jar:e/q/e/b/a$b.class */
    public static class C25211b<T> {

        /* renamed from: a */
        public final Map<T, Boolean> f70489a = new HashMap();

        public C25211b(C25210a c25210a) {
        }

        /* renamed from: a */
        public boolean m4063a(T t) {
            return this.f70489a.get(t) != null && this.f70489a.get(t).booleanValue();
        }
    }

    /* renamed from: e.q.e.b.a$c */
    /* loaded from: classes16-dex2jar.jar:e/q/e/b/a$c.class */
    public static class C25212c<T> {

        /* renamed from: a */
        public List<T> f70490a = new ArrayList(2);

        /* renamed from: b */
        public int f70491b;

        public C25212c(int i, Date date) {
            this.f70491b = i;
        }
    }

    public AbstractC25209a(int i) {
        this.f70487c = i;
    }

    /* renamed from: a */
    public abstract boolean m4068a(String str, long j, String str2);

    /* renamed from: b */
    public String m4067b(String str) {
        int i = this.f70487c;
        if (i == 1) {
            C25220a.m4052a();
            return C25220a.f70510a.getJSONObject(str).getString("delta");
        } else if (i == 2) {
            C25220a.m4052a();
            return C25220a.f70512c.getJSONObject("rules").getJSONObject(str).getJSONObject("rule").getString("delta");
        } else {
            C25220a.m4052a();
            return C25220a.f70511b.getJSONObject(str).getString("delta");
        }
    }

    /* renamed from: c */
    public abstract void m4066c(List<T> list, HashMap<T, C25212c<T>> hashMap);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public void m4065d(T t, T t2, int i, Date date) {
        T t3;
        if (this.f70487c != 2 || !this.f70488d.m4063a(t) || !this.f70488d.m4063a(t2)) {
            if (this.f70486b.containsKey(t)) {
                if (this.f70486b.get(t).f70491b < i) {
                    this.f70486b.get(t).f70491b = i;
                    Objects.requireNonNull(this.f70486b.get(t));
                }
                if (!this.f70486b.get(t).f70490a.contains(t2)) {
                    this.f70486b.get(t).f70490a.add(t2);
                    Objects.requireNonNull(this.f70486b.get(t));
                }
            } else {
                Iterator<T> it = this.f70486b.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        t3 = null;
                        break;
                    }
                    t3 = it.next();
                    if (this.f70486b.get(t3).f70491b == i && this.f70486b.get(t3).f70490a.contains(t)) {
                        break;
                    }
                }
                if (t3 == null) {
                    this.f70486b.put(t, new C25212c<>(i, date));
                    this.f70486b.get(t).f70490a.add(t);
                    this.f70486b.get(t).f70490a.add(t2);
                    Objects.requireNonNull(this.f70486b.get(t));
                } else if (!this.f70486b.get(t3).f70490a.contains(t2)) {
                    this.f70486b.get(t3).f70490a.add(t2);
                    Objects.requireNonNull(this.f70486b.get(t3));
                }
            }
            C25211b<T> c25211b = this.f70488d;
            List<Object> asList = Arrays.asList(t, t2);
            Objects.requireNonNull(c25211b);
            for (Object obj : asList) {
                c25211b.f70489a.put(obj, Boolean.TRUE);
            }
        }
    }

    /* renamed from: e */
    public abstract int m4064e(String str, long j, String str2);
}
