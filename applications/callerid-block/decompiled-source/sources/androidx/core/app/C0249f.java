package androidx.core.app;

import android.app.Activity;
import android.os.Build;
import android.util.SparseIntArray;
/* renamed from: androidx.core.app.f */
/* loaded from: classes-dex2jar.jar:androidx/core/app/f.class */
public class C0249f {

    /* renamed from: a */
    private C0250b f1596a;

    /* renamed from: androidx.core.app.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/f$b.class */
    private static class C0250b {
        C0250b() {
        }

        /* renamed from: a */
        public void m13647a(Activity activity) {
        }

        /* renamed from: b */
        public SparseIntArray[] m13646b(Activity activity) {
            return null;
        }
    }

    public C0249f() {
        this(1);
    }

    public C0249f(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1596a = new a(i);
        } else {
            this.f1596a = new C0250b();
        }
    }

    /* renamed from: a */
    public void m13649a(Activity activity) {
        this.f1596a.m13647a(activity);
    }

    /* renamed from: b */
    public SparseIntArray[] m13648b(Activity activity) {
        return this.f1596a.m13646b(activity);
    }
}
