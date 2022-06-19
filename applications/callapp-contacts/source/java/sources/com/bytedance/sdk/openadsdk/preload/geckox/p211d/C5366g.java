package com.bytedance.sdk.openadsdk.preload.geckox.p211d;

import android.net.Uri;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p208b.C5324a;
import com.bytedance.sdk.openadsdk.preload.geckox.p208b.C5325b;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5295k;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/g.class */
public class C5366g extends AbstractC5295k<UpdatePackage, Pair<Uri, UpdatePackage>> {

    /* renamed from: d */
    private int f18855d = 0;

    /* renamed from: a */
    public Pair<Uri, UpdatePackage> mo32471b() {
        UpdatePackage g = m32639g();
        List<String> urlList = g.getFullPackage().getUrlList();
        int i = this.f18855d;
        this.f18855d = i + 1;
        return new Pair<>(Uri.parse(urlList.get(i)), g);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5295k
    /* renamed from: a */
    public boolean mo32472a(Throwable th) {
        C5381b.m32430a("gecko-debug-tag", "full update failed and retry", th);
        if (this.f18855d >= m32639g().getFullPackage().getUrlList().size()) {
            return false;
        }
        return (th instanceof C5324a) || (th instanceof C5325b);
    }
}
