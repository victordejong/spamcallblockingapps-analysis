package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.facebook.internal.C2434j0;
import com.facebook.internal.C2493t;
import java.io.Closeable;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.internal.s */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/s.class */
public class C2487s {

    /* renamed from: a */
    public static Handler f3181a;

    /* renamed from: b */
    public static C2434j0 f3182b = new C2434j0(8);

    /* renamed from: c */
    public static C2434j0 f3183c = new C2434j0(2);

    /* renamed from: d */
    public static final Map<C2492e, C2491d> f3184d = new HashMap();

    /* renamed from: com.facebook.internal.s$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$a.class */
    public static final class RunnableC2488a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2493t f3185a;

        /* renamed from: b */
        public final /* synthetic */ Exception f3186b;

        /* renamed from: c */
        public final /* synthetic */ boolean f3187c;

        /* renamed from: d */
        public final /* synthetic */ Bitmap f3188d;

        /* renamed from: e */
        public final /* synthetic */ C2493t.AbstractC2496c f3189e;

        public RunnableC2488a(C2493t tVar, Exception exc, boolean z, Bitmap bitmap, C2493t.AbstractC2496c cVar) {
            this.f3185a = tVar;
            this.f3186b = exc;
            this.f3187c = z;
            this.f3188d = bitmap;
            this.f3189e = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3189e.mo34279a(new C2497u(this.f3185a, this.f3186b, this.f3187c, this.f3188d));
        }
    }

    /* renamed from: com.facebook.internal.s$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$b.class */
    public static class RunnableC2489b implements Runnable {

        /* renamed from: a */
        public Context f3190a;

        /* renamed from: b */
        public C2492e f3191b;

        /* renamed from: c */
        public boolean f3192c;

        public RunnableC2489b(Context context, C2492e eVar, boolean z) {
            this.f3190a = context;
            this.f3191b = eVar;
            this.f3192c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2487s.m34591b(this.f3191b, this.f3190a, this.f3192c);
        }
    }

    /* renamed from: com.facebook.internal.s$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$c.class */
    public static class RunnableC2490c implements Runnable {

        /* renamed from: a */
        public Context f3193a;

        /* renamed from: b */
        public C2492e f3194b;

        public RunnableC2490c(Context context, C2492e eVar) {
            this.f3193a = context;
            this.f3194b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2487s.m34592b(this.f3194b, this.f3193a);
        }
    }

    /* renamed from: com.facebook.internal.s$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$d.class */
    public static class C2491d {

        /* renamed from: a */
        public C2434j0.AbstractC2436b f3195a;

        /* renamed from: b */
        public C2493t f3196b;

        /* renamed from: c */
        public boolean f3197c;

        public C2491d() {
        }

        public /* synthetic */ C2491d(RunnableC2488a aVar) {
            this();
        }
    }

    /* renamed from: com.facebook.internal.s$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$e.class */
    public static class C2492e {

        /* renamed from: a */
        public Uri f3198a;

        /* renamed from: b */
        public Object f3199b;

        public C2492e(Uri uri, Object obj) {
            this.f3198a = uri;
            this.f3199b = obj;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj != null) {
                z = false;
                if (obj instanceof C2492e) {
                    C2492e eVar = (C2492e) obj;
                    z = false;
                    if (eVar.f3198a == this.f3198a) {
                        z = false;
                        if (eVar.f3199b == this.f3199b) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return ((1073 + this.f3198a.hashCode()) * 37) + this.f3199b.hashCode();
        }
    }

    /* renamed from: a */
    public static Handler m34601a() {
        Handler handler;
        synchronized (C2487s.class) {
            try {
                if (f3181a == null) {
                    f3181a = new Handler(Looper.getMainLooper());
                }
                handler = f3181a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* renamed from: a */
    public static C2491d m34600a(C2492e eVar) {
        C2491d remove;
        synchronized (f3184d) {
            remove = f3184d.remove(eVar);
        }
        return remove;
    }

    /* renamed from: a */
    public static void m34597a(C2492e eVar, Exception exc, Bitmap bitmap, boolean z) {
        C2493t tVar;
        C2493t.AbstractC2496c a;
        C2491d a2 = m34600a(eVar);
        if (a2 != null && !a2.f3197c && (a = (tVar = a2.f3196b).m34589a()) != null) {
            m34601a().post(new RunnableC2488a(tVar, exc, z, bitmap, a));
        }
    }

    /* renamed from: a */
    public static void m34595a(C2493t tVar, C2492e eVar) {
        m34594a(tVar, eVar, f3182b, new RunnableC2490c(tVar.m34586c(), eVar));
    }

    /* renamed from: a */
    public static void m34594a(C2493t tVar, C2492e eVar, C2434j0 j0Var, Runnable runnable) {
        synchronized (f3184d) {
            C2491d dVar = new C2491d(null);
            dVar.f3196b = tVar;
            f3184d.put(eVar, dVar);
            dVar.f3195a = j0Var.m34731a(runnable);
        }
    }

    /* renamed from: a */
    public static void m34593a(C2493t tVar, C2492e eVar, boolean z) {
        m34594a(tVar, eVar, f3183c, new RunnableC2489b(tVar.m34586c(), eVar, z));
    }

    /* renamed from: a */
    public static boolean m34596a(C2493t tVar) {
        boolean z;
        C2492e eVar = new C2492e(tVar.m34585d(), tVar.m34587b());
        synchronized (f3184d) {
            C2491d dVar = f3184d.get(eVar);
            z = true;
            if (dVar == null) {
                z = false;
            } else if (dVar.f3195a.cancel()) {
                f3184d.remove(eVar);
            } else {
                dVar.f3197c = true;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m34592b(com.facebook.internal.C2487s.C2492e r5, android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C2487s.m34592b(com.facebook.internal.s$e, android.content.Context):void");
    }

    /* renamed from: b */
    public static void m34591b(C2492e eVar, Context context, boolean z) {
        InputStream inputStream;
        boolean z2;
        Uri a;
        if (!z || (a = C2405f0.m34890a(eVar.f3198a)) == null) {
            inputStream = null;
            z2 = false;
        } else {
            InputStream a2 = C2498v.m34567a(a, context);
            z2 = false;
            inputStream = a2;
            if (a2 != null) {
                z2 = true;
                inputStream = a2;
            }
        }
        if (!z2) {
            inputStream = C2498v.m34567a(eVar.f3198a, context);
        }
        if (inputStream != null) {
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            C2408g0.m34863a((Closeable) inputStream);
            m34597a(eVar, (Exception) null, decodeStream, z2);
            return;
        }
        C2491d a3 = m34600a(eVar);
        if (a3 != null && !a3.f3197c) {
            m34595a(a3.f3196b, eVar);
        }
    }

    /* renamed from: b */
    public static void m34590b(C2493t tVar) {
        if (tVar != null) {
            C2492e eVar = new C2492e(tVar.m34585d(), tVar.m34587b());
            synchronized (f3184d) {
                C2491d dVar = f3184d.get(eVar);
                if (dVar != null) {
                    dVar.f3196b = tVar;
                    dVar.f3197c = false;
                    dVar.f3195a.mo34726a();
                } else {
                    m34593a(tVar, eVar, tVar.m34584e());
                }
            }
        }
    }
}
