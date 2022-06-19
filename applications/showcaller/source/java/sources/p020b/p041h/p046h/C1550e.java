package p020b.p041h.p046h;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p020b.p036e.C1495e;
import p020b.p036e.C1502g;
import p020b.p041h.p042e.C1527d;
import p020b.p041h.p046h.C1556f;
import p020b.p041h.p049k.AbstractC1590a;
/* renamed from: b.h.h.e */
/* loaded from: classes-dex2jar.jar:b/h/h/e.class */
public class C1550e {

    /* renamed from: a */
    static final C1495e<String, Typeface> f6096a = new C1495e<>(16);

    /* renamed from: b */
    private static final ExecutorService f6097b = C1560g.m29727a("fonts-androidx", 10, 10000);

    /* renamed from: c */
    static final Object f6098c = new Object();

    /* renamed from: d */
    static final C1502g<String, ArrayList<AbstractC1590a<C1555e>>> f6099d = new C1502g<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.h.e$a */
    /* loaded from: classes-dex2jar.jar:b/h/h/e$a.class */
    public class CallableC1551a implements Callable<C1555e> {

        /* renamed from: a */
        final /* synthetic */ String f6100a;

        /* renamed from: b */
        final /* synthetic */ Context f6101b;

        /* renamed from: c */
        final /* synthetic */ C1549d f6102c;

        /* renamed from: d */
        final /* synthetic */ int f6103d;

        CallableC1551a(String str, Context context, C1549d c1549d, int i) {
            this.f6100a = str;
            this.f6101b = context;
            this.f6102c = c1549d;
            this.f6103d = i;
        }

        /* renamed from: a */
        public C1555e call() {
            return C1550e.m29747c(this.f6100a, this.f6101b, this.f6102c, this.f6103d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.h.e$b */
    /* loaded from: classes-dex2jar.jar:b/h/h/e$b.class */
    public class C1552b implements AbstractC1590a<C1555e> {

        /* renamed from: a */
        final /* synthetic */ C1543a f6104a;

        C1552b(C1543a c1543a) {
            this.f6104a = c1543a;
        }

        /* renamed from: b */
        public void mo29670a(C1555e c1555e) {
            this.f6104a.m29766b(c1555e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.h.e$c */
    /* loaded from: classes-dex2jar.jar:b/h/h/e$c.class */
    public class CallableC1553c implements Callable<C1555e> {

        /* renamed from: a */
        final /* synthetic */ String f6105a;

        /* renamed from: b */
        final /* synthetic */ Context f6106b;

        /* renamed from: c */
        final /* synthetic */ C1549d f6107c;

        /* renamed from: d */
        final /* synthetic */ int f6108d;

        CallableC1553c(String str, Context context, C1549d c1549d, int i) {
            this.f6105a = str;
            this.f6106b = context;
            this.f6107c = c1549d;
            this.f6108d = i;
        }

        /* renamed from: a */
        public C1555e call() {
            return C1550e.m29747c(this.f6105a, this.f6106b, this.f6107c, this.f6108d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.h.e$d */
    /* loaded from: classes-dex2jar.jar:b/h/h/e$d.class */
    public class C1554d implements AbstractC1590a<C1555e> {

        /* renamed from: a */
        final /* synthetic */ String f6109a;

        C1554d(String str) {
            this.f6109a = str;
        }

        /* renamed from: b */
        public void mo29670a(C1555e c1555e) {
            synchronized (C1550e.f6098c) {
                C1502g<String, ArrayList<AbstractC1590a<C1555e>>> c1502g = C1550e.f6099d;
                ArrayList<AbstractC1590a<C1555e>> arrayList = c1502g.get(this.f6109a);
                if (arrayList == null) {
                    return;
                }
                c1502g.remove(this.f6109a);
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).mo29670a(c1555e);
                }
            }
        }
    }

    /* renamed from: b.h.h.e$e */
    /* loaded from: classes-dex2jar.jar:b/h/h/e$e.class */
    public static final class C1555e {

        /* renamed from: a */
        final Typeface f6110a;

        /* renamed from: b */
        final int f6111b;

        C1555e(int i) {
            this.f6110a = null;
            this.f6111b = i;
        }

        @SuppressLint({"WrongConstant"})
        C1555e(Typeface typeface) {
            this.f6110a = typeface;
            this.f6111b = 0;
        }

        @SuppressLint({"WrongConstant"})
        /* renamed from: a */
        public boolean m29740a() {
            return this.f6111b == 0;
        }
    }

    /* renamed from: a */
    private static String m29749a(C1549d c1549d, int i) {
        return c1549d.m29753d() + "-" + i;
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: b */
    private static int m29748b(C1556f.C1557a c1557a) {
        if (c1557a.m29736c() != 0) {
            return c1557a.m29736c() != 1 ? -3 : -2;
        }
        C1556f.C1558b[] m29737b = c1557a.m29737b();
        int i = 1;
        if (m29737b != null) {
            if (m29737b.length != 0) {
                int length = m29737b.length;
                int i2 = 0;
                while (true) {
                    i = 0;
                    if (i2 >= length) {
                        break;
                    }
                    int m29734b = m29737b[i2].m29734b();
                    if (m29734b != 0) {
                        return m29734b < 0 ? -3 : m29734b;
                    }
                    i2++;
                }
            } else {
                i = 1;
            }
        }
        return i;
    }

    /* renamed from: c */
    static C1555e m29747c(String str, Context context, C1549d c1549d, int i) {
        C1495e<String, Typeface> c1495e = f6096a;
        Typeface m29943c = c1495e.m29943c(str);
        if (m29943c != null) {
            return new C1555e(m29943c);
        }
        try {
            C1556f.C1557a m29760d = C1547c.m29760d(context, c1549d, null);
            int m29748b = m29748b(m29760d);
            if (m29748b != 0) {
                return new C1555e(m29748b);
            }
            Typeface m29826b = C1527d.m29826b(context, null, m29760d.m29737b(), i);
            if (m29826b == null) {
                return new C1555e(-3);
            }
            c1495e.m29942d(str, m29826b);
            return new C1555e(m29826b);
        } catch (PackageManager.NameNotFoundException e) {
            return new C1555e(-1);
        }
    }

    /* renamed from: d */
    public static Typeface m29746d(Context context, C1549d c1549d, int i, Executor executor, C1543a c1543a) {
        String m29749a = m29749a(c1549d, i);
        Typeface m29943c = f6096a.m29943c(m29749a);
        if (m29943c != null) {
            c1543a.m29766b(new C1555e(m29943c));
            return m29943c;
        }
        C1552b c1552b = new C1552b(c1543a);
        synchronized (f6098c) {
            C1502g<String, ArrayList<AbstractC1590a<C1555e>>> c1502g = f6099d;
            ArrayList<AbstractC1590a<C1555e>> arrayList = c1502g.get(m29749a);
            if (arrayList != null) {
                arrayList.add(c1552b);
                return null;
            }
            ArrayList<AbstractC1590a<C1555e>> arrayList2 = new ArrayList<>();
            arrayList2.add(c1552b);
            c1502g.put(m29749a, arrayList2);
            CallableC1553c callableC1553c = new CallableC1553c(m29749a, context, c1549d, i);
            ExecutorService executorService = executor;
            if (executor == null) {
                executorService = f6097b;
            }
            C1560g.m29726b(executorService, callableC1553c, new C1554d(m29749a));
            return null;
        }
    }

    /* renamed from: e */
    public static Typeface m29745e(Context context, C1549d c1549d, C1543a c1543a, int i, int i2) {
        String m29749a = m29749a(c1549d, i);
        Typeface m29943c = f6096a.m29943c(m29749a);
        if (m29943c != null) {
            c1543a.m29766b(new C1555e(m29943c));
            return m29943c;
        } else if (i2 == -1) {
            C1555e m29747c = m29747c(m29749a, context, c1549d, i);
            c1543a.m29766b(m29747c);
            return m29747c.f6110a;
        } else {
            try {
                C1555e c1555e = (C1555e) C1560g.m29725c(f6097b, new CallableC1551a(m29749a, context, c1549d, i), i2);
                c1543a.m29766b(c1555e);
                return c1555e.f6110a;
            } catch (InterruptedException e) {
                c1543a.m29766b(new C1555e(-3));
                return null;
            }
        }
    }
}
