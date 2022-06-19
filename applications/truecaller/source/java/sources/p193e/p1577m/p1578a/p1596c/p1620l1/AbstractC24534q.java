package p193e.p1577m.p1578a.p1596c.p1620l1;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.Format;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p193e.p1577m.p1578a.p1596c.C24854v;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24742n;
/* renamed from: e.m.a.c.l1.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/q.class */
public interface AbstractC24534q {

    /* renamed from: e.m.a.c.l1.q$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/q$a.class */
    public static final class C24535a {

        /* renamed from: a */
        public final int f68512a;

        /* renamed from: b */
        public final AbstractC24531p.C24532a f68513b;

        /* renamed from: c */
        public final CopyOnWriteArrayList<C24536a> f68514c;

        /* renamed from: d */
        public final long f68515d;

        /* renamed from: e.m.a.c.l1.q$a$a */
        /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/q$a$a.class */
        public static final class C24536a {

            /* renamed from: a */
            public final Handler f68516a;

            /* renamed from: b */
            public final AbstractC24534q f68517b;

            public C24536a(Handler handler, AbstractC24534q abstractC24534q) {
                this.f68516a = handler;
                this.f68517b = abstractC24534q;
            }
        }

        public C24535a() {
            this.f68514c = new CopyOnWriteArrayList<>();
            this.f68512a = 0;
            this.f68513b = null;
            this.f68515d = 0L;
        }

        public C24535a(CopyOnWriteArrayList<C24536a> copyOnWriteArrayList, int i, AbstractC24531p.C24532a c24532a, long j) {
            this.f68514c = copyOnWriteArrayList;
            this.f68512a = i;
            this.f68513b = c24532a;
            this.f68515d = j;
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* renamed from: a */
        public final long m4972a(long j) {
            long m4382b = C24854v.m4382b(j);
            char c = 1;
            if (m4382b != -9223372036854775807L) {
                c = this.f68515d + m4382b;
            }
            return c;
        }

        /* renamed from: b */
        public final void m4971b(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    /* renamed from: e.m.a.c.l1.q$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/q$b.class */
    public static final class C24537b {

        /* renamed from: a */
        public final Map<String, List<String>> f68518a;

        public C24537b(C24742n c24742n, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            this.f68518a = map;
        }
    }

    /* renamed from: e.m.a.c.l1.q$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/q$c.class */
    public static final class C24538c {

        /* renamed from: a */
        public final Object f68519a;

        public C24538c(int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            this.f68519a = obj;
        }
    }
}
