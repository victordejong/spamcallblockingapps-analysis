package com.bytedance.sdk.openadsdk.p176k;

import android.content.Context;
import com.bytedance.sdk.openadsdk.p176k.p177a.C4964b;
import com.bytedance.sdk.openadsdk.p176k.p177a.C4966c;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4982c;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.k.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/e.class */
public class C5001e {

    /* renamed from: a */
    static volatile C4964b f18138a;

    /* renamed from: b */
    static volatile C4966c f18139b;

    /* renamed from: d */
    public static volatile boolean f18141d;

    /* renamed from: f */
    static volatile boolean f18143f;

    /* renamed from: i */
    public static volatile Integer f18146i;

    /* renamed from: j */
    private static volatile C4982c f18147j;

    /* renamed from: k */
    private static volatile Context f18148k;

    /* renamed from: c */
    public static final boolean f18140c = C5478q.m32110c();

    /* renamed from: e */
    static volatile boolean f18142e = true;

    /* renamed from: g */
    static volatile int f18144g = 0;

    /* renamed from: h */
    public static volatile int f18145h = 3;

    /* renamed from: a */
    public static Context m33341a() {
        return f18148k;
    }

    /* renamed from: a */
    public static void m33340a(int i) {
        f18144g = i;
    }

    /* renamed from: a */
    public static void m33339a(C4966c c4966c, Context context) {
        if (c4966c == null || context == null) {
            throw new IllegalArgumentException("DiskLruCache and Context can't be null !!!");
        }
        f18148k = context.getApplicationContext();
        if (f18139b != null) {
            return;
        }
        C4964b c4964b = f18138a;
        if (c4964b != null && c4964b.f18051a.getAbsolutePath().equals(c4966c.f18053a.getAbsolutePath())) {
            throw new IllegalArgumentException("DiskLruCache 和 DiskCache 不能使用相同的目录");
        }
        f18139b = c4966c;
        f18147j = C4982c.m33368a(context);
        f18139b.m33402a(new C4966c.AbstractC4975a() { // from class: com.bytedance.sdk.openadsdk.k.e.1
            @Override // com.bytedance.sdk.openadsdk.p176k.p177a.C4966c.AbstractC4975a
            /* renamed from: a */
            public final void mo33333a(String str) {
                boolean z = C5001e.f18140c;
            }

            @Override // com.bytedance.sdk.openadsdk.p176k.p177a.C4966c.AbstractC4975a
            /* renamed from: a */
            public final void mo33332a(Set<String> set) {
                C5001e.f18147j.m33363a(set, 0);
                if (C5001e.f18140c) {
                    new StringBuilder("cache file removed, ").append(set);
                }
            }
        });
        C5011f m33315a = C5011f.m33315a();
        m33315a.m33313a(c4966c);
        m33315a.m33312a(f18147j);
        C4991d m33345c = C4991d.m33345c();
        m33345c.m33356a(c4966c);
        m33345c.m33355a(f18147j);
    }

    /* renamed from: a */
    public static void m33338a(boolean z) {
        f18142e = z;
    }

    /* renamed from: b */
    public static C4966c m33337b() {
        return f18139b;
    }

    /* renamed from: b */
    public static void m33336b(boolean z) {
        f18143f = z;
    }

    /* renamed from: c */
    public static C4964b m33335c() {
        return f18138a;
    }
}
