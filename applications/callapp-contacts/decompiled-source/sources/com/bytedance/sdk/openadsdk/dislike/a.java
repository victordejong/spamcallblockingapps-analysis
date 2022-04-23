package com.bytedance.sdk.openadsdk.dislike;

import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f9475a;

    /* renamed from: b  reason: collision with root package name */
    private final o<com.bytedance.sdk.openadsdk.d.a> f9476b = n.f();

    private a() {
    }

    public static a a() {
        if (f9475a == null) {
            synchronized (a.class) {
                try {
                    if (f9475a == null) {
                        f9475a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9475a;
    }

    public void a(i iVar, List<FilterWord> list) {
        this.f9476b.a(iVar, list);
    }
}
