package p107g9;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;
/* renamed from: g9.n */
/* loaded from: classes2-dex2jar.jar:g9/n.class */
public final class C2945n implements AbstractC2928d {

    /* renamed from: a */
    public final LruCache<String, C2946a> f9904a;

    /* renamed from: g9.n$a */
    /* loaded from: classes2-dex2jar.jar:g9/n$a.class */
    public static final class C2946a {

        /* renamed from: a */
        public final Bitmap f9905a;

        /* renamed from: b */
        public final int f9906b;

        public C2946a(Bitmap bitmap, int i) {
            this.f9905a = bitmap;
            this.f9906b = i;
        }
    }

    public C2945n(Context context) {
        StringBuilder sb = C2929d0.f9877a;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f9904a = new C2944m(this, (int) ((((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * 1048576) / 7));
    }
}
