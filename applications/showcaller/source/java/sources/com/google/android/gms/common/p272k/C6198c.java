package com.google.android.gms.common.p272k;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.k.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/k/c.class */
public class C6198c {

    /* renamed from: a */
    private static C6198c f19641a = new C6198c();

    /* renamed from: b */
    private C6197b f19642b = null;

    @RecentlyNonNull
    /* renamed from: a */
    public static C6197b m16885a(@RecentlyNonNull Context context) {
        return f19641a.m16884b(context);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final C6197b m16884b(@RecentlyNonNull Context context) {
        C6197b c6197b;
        synchronized (this) {
            if (this.f19642b == null) {
                Context context2 = context;
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                }
                this.f19642b = new C6197b(context2);
            }
            c6197b = this.f19642b;
        }
        return c6197b;
    }
}
