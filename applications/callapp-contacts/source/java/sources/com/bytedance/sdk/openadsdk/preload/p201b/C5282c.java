package com.bytedance.sdk.openadsdk.preload.p201b;

import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5284e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/c.class */
public class C5282c {
    /* renamed from: a */
    public static <IN> AbstractC5279b<IN> m32665a(List<C5289h> list, AbstractC5284e abstractC5284e) {
        return m32664a(list, abstractC5284e, null);
    }

    /* renamed from: a */
    public static <IN> AbstractC5279b<IN> m32664a(List<C5289h> list, AbstractC5284e abstractC5284e, AbstractC5283d abstractC5283d) {
        if (list != null) {
            AbstractC5284e.C5285a c5285a = abstractC5284e;
            if (abstractC5284e == null) {
                c5285a = new AbstractC5284e.C5285a();
            }
            return new C5292i(Collections.unmodifiableList(new ArrayList(list)), 0, c5285a, abstractC5283d);
        }
        throw new IllegalArgumentException("interceptors == null !");
    }
}
