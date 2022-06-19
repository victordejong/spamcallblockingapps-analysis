package com.bytedance.sdk.openadsdk.preload.geckox.p211d;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5427k;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/d.class */
public class C5363d extends AbstractC5283d<List<String>, List<Pair<String, Long>>> {

    /* renamed from: d */
    private File f18851d;

    /* renamed from: e */
    private String f18852e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<List<Pair<String, Long>>> abstractC5279b, List<String> list) throws Exception {
        C5381b.m32429a("gecko-debug-tag", "get local channel version:", list);
        File file = new File(this.f18851d, this.f18852e);
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            Long m32344a = C5427k.m32344a(new File(file, str));
            arrayList.add(new Pair<>(str, Long.valueOf((long) (m32344a == null ? 0 : m32344a.longValue()))));
        }
        return abstractC5279b.mo32631a((AbstractC5279b<List<Pair<String, Long>>>) arrayList);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a */
    public void mo32475a(Object... objArr) {
        super.mo32475a(objArr);
        this.f18851d = (File) objArr[0];
        this.f18852e = (String) objArr[1];
    }
}
