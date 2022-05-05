package p459j.p460a.p474c0.p475c.p476w;

import android.os.Handler;
import android.text.TextUtils;
import androidx.collection.SimpleArrayMap;
import gogolook.callgogolook2.messaging.datamodel.action.Action;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12204q0;
/* renamed from: j.a.c0.c.w.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/a.class */
public class C11569a {

    /* renamed from: i */
    public static SimpleArrayMap<String, C11569a> f25863i = new SimpleArrayMap<>();

    /* renamed from: b */
    public int f25865b;

    /* renamed from: c */
    public AbstractC11572c f25866c;

    /* renamed from: d */
    public AbstractC11573d f25867d;

    /* renamed from: e */
    public AbstractC11574e f25868e;

    /* renamed from: g */
    public final Object f25870g;

    /* renamed from: h */
    public final String f25871h;

    /* renamed from: a */
    public final Object f25864a = new Object();

    /* renamed from: f */
    public final Handler f25869f = C12204q0.m6814a();

    /* renamed from: j.a.c0.c.w.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/a$a.class */
    public class RunnableC11570a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f25872a;

        /* renamed from: b */
        public final /* synthetic */ Action f25873b;

        /* renamed from: c */
        public final /* synthetic */ Object f25874c;

        public RunnableC11570a(boolean z, Action action, Object obj) {
            this.f25872a = z;
            this.f25873b = action;
            this.f25874c = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC11572c cVar;
            synchronized (C11569a.this.f25864a) {
                cVar = C11569a.this.f25866c != null ? C11569a.this.f25866c : null;
                C11569a.this.f25866c = null;
            }
            if (cVar == null) {
                return;
            }
            if (this.f25872a) {
                C11569a aVar = C11569a.this;
                cVar.mo9089a(aVar, this.f25873b, aVar.f25870g, this.f25874c);
                return;
            }
            C11569a aVar2 = C11569a.this;
            cVar.mo9088b(aVar2, this.f25873b, aVar2.f25870g, this.f25874c);
        }
    }

    /* renamed from: j.a.c0.c.w.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/a$b.class */
    public class RunnableC11571b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Action f25876a;

        /* renamed from: b */
        public final /* synthetic */ Object f25877b;

        public RunnableC11571b(Action action, Object obj) {
            this.f25876a = action;
            this.f25877b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC11573d dVar;
            synchronized (C11569a.this.f25864a) {
                if (C11569a.this.f25867d != null) {
                    dVar = C11569a.this.f25867d;
                    C11569a.this.f25867d = null;
                } else {
                    dVar = null;
                }
            }
            if (dVar != null) {
                C11569a aVar = C11569a.this;
                dVar.m9087a(aVar, this.f25876a, aVar.f25870g, this.f25877b);
            }
        }
    }

    /* renamed from: j.a.c0.c.w.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/a$c.class */
    public interface AbstractC11572c {
        /* renamed from: a */
        void mo9089a(C11569a aVar, Action action, Object obj, Object obj2);

        /* renamed from: b */
        void mo9088b(C11569a aVar, Action action, Object obj, Object obj2);
    }

    /* renamed from: j.a.c0.c.w.a$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/a$d.class */
    public interface AbstractC11573d {
        /* renamed from: a */
        void m9087a(C11569a aVar, Action action, Object obj, Object obj2);
    }

    /* renamed from: j.a.c0.c.w.a$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/a$e.class */
    public interface AbstractC11574e {
        /* renamed from: a */
        void m9086a(Action action, int i);
    }

    public C11569a(int i, String str, Object obj) {
        this.f25871h = str;
        this.f25865b = i;
        this.f25870g = obj;
    }

    /* renamed from: a */
    public static C11569a m9101a(String str) {
        C11569a aVar;
        synchronized (f25863i) {
            aVar = f25863i.get(str);
        }
        return aVar;
    }

    /* renamed from: a */
    public static void m9100a(String str, C11569a aVar) {
        if (aVar == null || (!TextUtils.isEmpty(aVar.m9099b()) && !TextUtils.isEmpty(str) && str.equals(aVar.m9099b()))) {
            synchronized (f25863i) {
                f25863i.put(str, aVar);
            }
            return;
        }
        throw new IllegalArgumentException("Monitor key " + aVar.m9099b() + " not compatible with action key " + str);
    }

    /* renamed from: b */
    public static void m9098b(Action action, int i, int i2) {
        C11569a a = m9101a(action.f11189a);
        int i3 = i;
        int i4 = i2;
        if (a != null) {
            i3 = a.f25865b;
            a.m9108a(action, i, i2);
            i4 = a.f25865b;
        }
        if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            C12153d0.m6983d("MessagingAppDataModel", "Operation-" + action.f11189a + ": @" + simpleDateFormat.format(new Date()) + "UTC State = " + i3 + " - " + i4);
        }
    }

    /* renamed from: b */
    public static void m9097b(Action action, int i, Object obj, boolean z) {
        C11569a a = m9101a(action.f11189a);
        int i2 = i;
        if (a != null) {
            i2 = a.f25865b;
            a.m9107a(action, i, obj, z);
            m9094b(action.f11189a, a);
        }
        if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            C12153d0.m6983d("MessagingAppDataModel", "Operation-" + action.f11189a + ": @" + simpleDateFormat.format(new Date()) + "UTC State = " + i2 + " - 8");
        }
    }

    /* renamed from: b */
    public static void m9096b(Action action, int i, boolean z, Object obj) {
        C11569a a = m9101a(action.f11189a);
        int i2 = i;
        if (a != null) {
            i2 = a.f25865b;
            a.m9106a(action, i, z, obj);
        }
        if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            C12153d0.m6983d("MessagingAppDataModel", "Operation-" + action.f11189a + ": @" + simpleDateFormat.format(new Date()) + "UTC State = " + i2 + " - EXECUTED");
        }
    }

    /* renamed from: b */
    public static void m9094b(String str, C11569a aVar) {
        if (aVar != null && aVar.m9093c()) {
            synchronized (f25863i) {
                f25863i.remove(str);
            }
        }
    }

    /* renamed from: a */
    public final void m9109a() {
        synchronized (this.f25864a) {
            this.f25866c = null;
            this.f25867d = null;
        }
    }

    /* renamed from: a */
    public void m9108a(Action action, int i, int i2) {
        AbstractC11574e eVar;
        synchronized (this.f25864a) {
            if (i != 0) {
                if (this.f25865b != i) {
                    throw new IllegalStateException("On updateState to " + i2 + " was " + this.f25865b + " expecting " + i);
                }
            }
            if (i2 != this.f25865b) {
                this.f25865b = i2;
                eVar = this.f25868e;
            } else {
                eVar = null;
            }
        }
        if (eVar != null) {
            eVar.m9086a(action, i2);
        }
    }

    /* renamed from: a */
    public final void m9107a(Action action, int i, Object obj, boolean z) {
        AbstractC11572c cVar;
        synchronized (this.f25864a) {
            m9098b(action, i, 8);
            cVar = this.f25866c;
            this.f25867d = null;
            this.f25868e = null;
        }
        if (cVar != null) {
            this.f25869f.post(new RunnableC11570a(z, action, obj));
        }
    }

    /* renamed from: a */
    public final void m9106a(Action action, int i, boolean z, Object obj) {
        AbstractC11573d dVar;
        synchronized (this.f25864a) {
            if (z) {
                m9098b(action, i, 4);
            }
            dVar = this.f25867d;
        }
        if (dVar != null) {
            this.f25869f.post(new RunnableC11571b(action, obj));
        }
    }

    /* renamed from: a */
    public final void m9105a(AbstractC11572c cVar) {
        synchronized (this.f25864a) {
            this.f25866c = cVar;
        }
    }

    /* renamed from: b */
    public String m9099b() {
        return this.f25871h;
    }

    /* renamed from: c */
    public boolean m9093c() {
        boolean z;
        synchronized (this.f25864a) {
            z = this.f25865b == 8;
        }
        return z;
    }

    /* renamed from: d */
    public void m9091d() {
        m9109a();
    }
}
