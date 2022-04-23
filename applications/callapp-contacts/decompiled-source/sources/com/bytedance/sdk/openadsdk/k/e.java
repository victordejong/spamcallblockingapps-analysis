package com.bytedance.sdk.openadsdk.k;

import android.content.Context;
import com.bytedance.sdk.openadsdk.k.a.b;
import com.bytedance.sdk.openadsdk.k.a.c;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    static volatile b f9721a;

    /* renamed from: b  reason: collision with root package name */
    static volatile c f9722b;

    /* renamed from: d  reason: collision with root package name */
    public static volatile boolean f9724d;
    static volatile boolean f;
    public static volatile Integer i;
    private static volatile com.bytedance.sdk.openadsdk.k.b.c j;
    private static volatile Context k;

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f9723c = q.c();
    static volatile boolean e = true;
    static volatile int g = 0;
    public static volatile int h = 3;

    public static Context a() {
        return k;
    }

    public static void a(int i2) {
        g = i2;
    }

    public static void a(c cVar, Context context) {
        if (cVar == null || context == null) {
            throw new IllegalArgumentException("DiskLruCache and Context can't be null !!!");
        }
        k = context.getApplicationContext();
        if (f9722b == null) {
            b bVar = f9721a;
            if (bVar == null || !bVar.f9668a.getAbsolutePath().equals(cVar.f9670a.getAbsolutePath())) {
                f9722b = cVar;
                j = com.bytedance.sdk.openadsdk.k.b.c.a(context);
                f9722b.a(new c.a() { // from class: com.bytedance.sdk.openadsdk.k.e.1
                    @Override // com.bytedance.sdk.openadsdk.k.a.c.a
                    public final void a(String str) {
                        boolean z = e.f9723c;
                    }

                    @Override // com.bytedance.sdk.openadsdk.k.a.c.a
                    public final void a(Set<String> set) {
                        e.j.a(set, 0);
                        if (e.f9723c) {
                            new StringBuilder("cache file removed, ").append(set);
                        }
                    }
                });
                f a2 = f.a();
                a2.a(cVar);
                a2.a(j);
                d c2 = d.c();
                c2.a(cVar);
                c2.a(j);
                return;
            }
            throw new IllegalArgumentException("DiskLruCache 和 DiskCache 不能使用相同的目录");
        }
    }

    public static void a(boolean z) {
        e = z;
    }

    public static c b() {
        return f9722b;
    }

    public static void b(boolean z) {
        f = z;
    }

    public static b c() {
        return f9721a;
    }
}
