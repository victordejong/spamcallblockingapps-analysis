package p277w7;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p009a8.C0043a;
import p023b8.C0739a;
import p083e8.AbstractC2608b;
import p083e8.C2606a;
import p083e8.C2609c;
import p083e8.C2612e;
import p083e8.C2615f;
import p083e8.C2618h;
import p083e8.C2620j;
import p083e8.C2625m;
import p124i4.C3102d;
import p148k7.C3343h;
import p170m7.AbstractFutureC3655c;
import p170m7.C3658f;
import p181n7.C3732a;
import p201p6.C4018c;
import p202p7.C4030d;
import p233s6.C4312g;
import p255u7.C4539d;
import p277w7.AbstractC4744c;
import p288x7.C4931c;
import p298y7.C5013b;
import p308z7.AbstractC5111a;
import p308z7.AbstractC5113c;
/* renamed from: w7.e */
/* loaded from: classes2-dex2jar.jar:w7/e.class */
public class C4749e {

    /* renamed from: i */
    public static final Handler f14630i = new Handler(Looper.getMainLooper());

    /* renamed from: j */
    public static int f14631j = Runtime.getRuntime().availableProcessors();

    /* renamed from: k */
    public static ExecutorService f14632k = Executors.newFixedThreadPool(4);

    /* renamed from: l */
    public static ExecutorService f14633l;

    /* renamed from: m */
    public static HashMap<String, C4749e> f14634m;

    /* renamed from: n */
    public static Comparator<C4748d> f14635n;

    /* renamed from: a */
    public C3732a f14636a;

    /* renamed from: b */
    public C4312g f14637b;

    /* renamed from: d */
    public String f14639d;

    /* renamed from: g */
    public Context f14642g;

    /* renamed from: c */
    public ArrayList<AbstractC4768q> f14638c = new ArrayList<>();

    /* renamed from: e */
    public C4018c f14640e = new C4018c(5);

    /* renamed from: f */
    public C4751b f14641f = new C4751b();

    /* renamed from: h */
    public WeakHashMap<Object, C4753c> f14643h = new WeakHashMap<>();

    /* renamed from: w7.e$a */
    /* loaded from: classes2-dex2jar.jar:w7/e$a.class */
    public static final class C4750a implements Comparator<C4748d> {
        @Override // java.util.Comparator
        public int compare(C4748d c4748d, C4748d c4748d2) {
            Objects.requireNonNull(c4748d);
            Objects.requireNonNull(c4748d2);
            return 0;
        }
    }

    /* renamed from: w7.e$b */
    /* loaded from: classes2-dex2jar.jar:w7/e$b.class */
    public class C4751b {

        /* renamed from: a */
        public AbstractC2608b f14644a = new C4752a();

        /* renamed from: w7.e$b$a */
        /* loaded from: classes2-dex2jar.jar:w7/e$b$a.class */
        public class C4752a implements AbstractC2608b {
            public C4752a() {
                C4751b.this = r4;
            }
        }

        public C4751b() {
            C4749e.this = r6;
        }
    }

    /* renamed from: w7.e$c */
    /* loaded from: classes2-dex2jar.jar:w7/e$c.class */
    public static class C4753c extends WeakHashMap<AbstractFutureC3655c, Boolean> {
    }

    static {
        int i = f14631j;
        f14633l = i > 2 ? Executors.newFixedThreadPool(i - 1) : Executors.newFixedThreadPool(1);
        f14634m = new HashMap<>();
        f14635n = new C4750a();
    }

    public C4749e(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f14642g = applicationContext;
        this.f14639d = str;
        C3732a c3732a = new C3732a(new C3343h(C1676a.m4789h("ion-", str)));
        this.f14636a = c3732a;
        c3732a.f12123b.f12210i = new C4931c();
        C3732a c3732a2 = this.f14636a;
        c3732a2.f12122a.add(0, new C0043a(applicationContext, this.f14636a.f12123b));
        File file = new File(applicationContext.getCacheDir(), str);
        try {
            C4030d.m1483i(this.f14636a, file, 10485760L);
        } catch (IOException e) {
            Log.w("ION", "unable to set up response cache, clearing", e);
            C3102d.m2624o(file);
            try {
                C4030d.m1483i(this.f14636a, file, 10485760L);
            } catch (IOException e2) {
                Log.w("ION", "unable to set up response cache, failing", e);
            }
        }
        new C4539d(new File(applicationContext.getFilesDir(), str), Long.MAX_VALUE, false);
        C3732a c3732a3 = this.f14636a;
        c3732a3.f12122a.add(0, new C0739a(this));
        C3732a c3732a4 = this.f14636a;
        c3732a4.f12124c.f12241e = true;
        c3732a4.f12123b.f12241e = true;
        Context applicationContext2 = this.f14642g.getApplicationContext();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) applicationContext2.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        new Resources(applicationContext2.getAssets(), displayMetrics, applicationContext2.getResources().getConfiguration());
        new C5013b(((((ActivityManager) applicationContext2.getSystemService("activity")).getMemoryClass() * 1024) * 1024) / 7);
        C4751b c4751b = this.f14641f;
        C4749e.this.f14638c.add(new C2625m());
        C4749e.this.f14638c.add(new C2618h());
        C4749e.this.f14638c.add(new C2615f());
        C4749e.this.f14638c.add(new C2609c());
        C4749e.this.f14638c.add(new C2620j());
        C4749e.this.f14638c.add(new C2606a());
        C4749e.this.f14638c.add(new C2612e());
    }

    /* renamed from: b */
    public static AbstractC5113c<AbstractC5111a> m498b(Context context) {
        Objects.requireNonNull(context, "Can not pass null context in to retrieve ion instance");
        C4749e c4749e = f14634m.get("ion");
        C4749e c4749e2 = c4749e;
        if (c4749e == null) {
            HashMap<String, C4749e> hashMap = f14634m;
            c4749e2 = new C4749e(context, "ion");
            hashMap.put("ion", c4749e2);
        }
        int i = AbstractC4744c.f14629a;
        return new C4766p(context instanceof Service ? new AbstractC4744c.C4747c((Service) context) : context instanceof Activity ? new AbstractC4744c.C4745a((Activity) context) : new C4743b(context), c4749e2);
    }

    /* renamed from: a */
    public void m499a(AbstractFutureC3655c abstractFutureC3655c, Object obj) {
        C4753c c4753c;
        if (obj != null) {
            C3658f c3658f = (C3658f) abstractFutureC3655c;
            if (c3658f.f11985a || c3658f.isCancelled()) {
                return;
            }
            synchronized (this) {
                C4753c c4753c2 = this.f14643h.get(obj);
                c4753c = c4753c2;
                if (c4753c2 == null) {
                    c4753c = new C4753c();
                    this.f14643h.put(obj, c4753c);
                }
            }
            c4753c.put(abstractFutureC3655c, Boolean.TRUE);
        }
    }
}
