package com.criteo.publisher.p256m0;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.AdSize;
/* renamed from: com.criteo.publisher.m0.k */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/k.class */
public class C8440k {

    /* renamed from: a */
    private final Context f30203a;

    public C8440k(Context context) {
        C8404h.m25741a(getClass());
        this.f30203a = context;
    }

    /* renamed from: c */
    public static boolean m25682c() {
        return Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: a */
    public final DisplayMetrics m25684a() {
        return this.f30203a.getResources().getDisplayMetrics();
    }

    /* renamed from: b */
    public final AdSize m25683b() {
        DisplayMetrics m25684a = m25684a();
        return new AdSize(Math.round(m25684a.widthPixels / m25684a.density), Math.round(m25684a.heightPixels / m25684a.density));
    }
}
