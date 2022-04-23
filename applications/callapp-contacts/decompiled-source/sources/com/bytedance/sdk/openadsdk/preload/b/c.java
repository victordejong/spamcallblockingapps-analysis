package com.bytedance.sdk.openadsdk.preload.b;

import com.bytedance.sdk.openadsdk.preload.b.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/c.class */
public class c {
    public static <IN> b<IN> a(List<h> list, e eVar) {
        return a(list, eVar, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <IN> b<IN> a(List<h> list, e eVar, d dVar) {
        if (list != null) {
            e eVar2 = eVar;
            if (eVar == null) {
                eVar2 = new e.a();
            }
            return new i(Collections.unmodifiableList(new ArrayList(list)), 0, eVar2, dVar);
        }
        throw new IllegalArgumentException("interceptors == null !");
    }
}
