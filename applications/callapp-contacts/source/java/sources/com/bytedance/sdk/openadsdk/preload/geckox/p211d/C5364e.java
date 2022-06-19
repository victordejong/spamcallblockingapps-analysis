package com.bytedance.sdk.openadsdk.preload.geckox.p211d;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5427k;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/e.class */
public class C5364e extends AbstractC5283d<String, Map<String, List<Pair<String, Long>>>> {

    /* renamed from: d */
    private File f18853d;

    /* renamed from: e */
    private List<String> f18854e;

    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<Map<String, List<Pair<String, Long>>>> abstractC5279b, String str) throws Exception {
        Long m32344a;
        C5381b.m32429a("gecko-debug-tag", "get local channel version:", str);
        HashMap hashMap = new HashMap();
        for (String str2 : this.f18854e) {
            File file = new File(this.f18853d, str2);
            String[] list = file.list();
            ArrayList arrayList = new ArrayList();
            if (list != null && list.length > 0) {
                for (String str3 : list) {
                    File file2 = new File(file, str3);
                    if (file2.isDirectory() && (m32344a = C5427k.m32344a(file2)) != null) {
                        arrayList.add(new Pair<>(str3, m32344a));
                    }
                }
            }
            hashMap.put(str2, arrayList);
        }
        return abstractC5279b.mo32631a((AbstractC5279b<Map<String, List<Pair<String, Long>>>>) hashMap);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a */
    public void mo32475a(Object... objArr) {
        super.mo32475a(objArr);
        this.f18853d = (File) objArr[0];
        this.f18854e = (List) objArr[1];
    }
}
