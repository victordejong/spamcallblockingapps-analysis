package p193e.p1451f.p1452a.p1457n.p1460o.p1462c0;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
/* renamed from: e.f.a.n.o.c0.j */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/j.class */
public final class C22336j {

    /* renamed from: a */
    public final int f62013a;

    /* renamed from: b */
    public final int f62014b;

    /* renamed from: c */
    public final Context f62015c;

    /* renamed from: d */
    public final int f62016d;

    /* renamed from: e.f.a.n.o.c0.j$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/j$a.class */
    public static final class C22337a {

        /* renamed from: e */
        public static final int f62017e;

        /* renamed from: a */
        public final Context f62018a;

        /* renamed from: b */
        public ActivityManager f62019b;

        /* renamed from: c */
        public AbstractC22339c f62020c;

        /* renamed from: d */
        public float f62021d;

        static {
            f62017e = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public C22337a(Context context) {
            this.f62021d = f62017e;
            this.f62018a = context;
            this.f62019b = (ActivityManager) context.getSystemService("activity");
            this.f62020c = new C22338b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !this.f62019b.isLowRamDevice()) {
                return;
            }
            this.f62021d = 0.0f;
        }
    }

    /* renamed from: e.f.a.n.o.c0.j$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/j$b.class */
    public static final class C22338b implements AbstractC22339c {

        /* renamed from: a */
        public final DisplayMetrics f62022a;

        public C22338b(DisplayMetrics displayMetrics) {
            this.f62022a = displayMetrics;
        }
    }

    /* renamed from: e.f.a.n.o.c0.j$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/j$c.class */
    public interface AbstractC22339c {
    }

    public C22336j(C22337a c22337a) {
        ActivityManager activityManager;
        this.f62015c = c22337a.f62018a;
        int i = c22337a.f62019b.isLowRamDevice() ? 2097152 : 4194304;
        this.f62016d = i;
        int round = Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (c22337a.f62019b.isLowRamDevice() ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = ((C22338b) c22337a.f62020c).f62022a;
        float f = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int round2 = Math.round(c22337a.f62021d * f);
        int round3 = Math.round(f * 2.0f);
        int i2 = round - i;
        if (round3 + round2 <= i2) {
            this.f62014b = round3;
            this.f62013a = round2;
        } else {
            float f2 = i2 / (c22337a.f62021d + 2.0f);
            this.f62014b = Math.round(2.0f * f2);
            this.f62013a = Math.round(f2 * c22337a.f62021d);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            m8306a(this.f62014b);
            m8306a(this.f62013a);
            m8306a(i);
            m8306a(round);
            c22337a.f62019b.getMemoryClass();
            c22337a.f62019b.isLowRamDevice();
        }
    }

    /* renamed from: a */
    public final String m8306a(int i) {
        return Formatter.formatFileSize(this.f62015c, i);
    }
}
