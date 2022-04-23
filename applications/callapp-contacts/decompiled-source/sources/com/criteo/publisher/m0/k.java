package com.criteo.publisher.m0;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.model.AdSize;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/k.class */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17518a;

    public k(Context context) {
        h.a(getClass());
        this.f17518a = context;
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public final DisplayMetrics a() {
        return this.f17518a.getResources().getDisplayMetrics();
    }

    public final AdSize b() {
        DisplayMetrics a2 = a();
        return new AdSize(Math.round(a2.widthPixels / a2.density), Math.round(a2.heightPixels / a2.density));
    }
}
