package com.google.android.gms.common.p080g;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.g.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/g/c.class */
public class C1562c {

    /* renamed from: b */
    private static C1562c f5823b = new C1562c();

    /* renamed from: a */
    private C1561b f5824a = null;

    @RecentlyNonNull
    /* renamed from: a */
    public static C1561b m8427a(@RecentlyNonNull Context context) {
        return f5823b.m8426b(context);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final C1561b m8426b(@RecentlyNonNull Context context) {
        C1561b c1561b;
        synchronized (this) {
            if (this.f5824a == null) {
                Context context2 = context;
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                }
                this.f5824a = new C1561b(context2);
            }
            c1561b = this.f5824a;
        }
        return c1561b;
    }
}
