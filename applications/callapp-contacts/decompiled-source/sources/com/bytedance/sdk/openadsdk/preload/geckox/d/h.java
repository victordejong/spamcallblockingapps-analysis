package com.bytedance.sdk.openadsdk.preload.geckox.d;

import android.net.Uri;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.b.k;
import com.bytedance.sdk.openadsdk.preload.geckox.b.a;
import com.bytedance.sdk.openadsdk.preload.geckox.h.b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/h.class */
public class h extends k<UpdatePackage, Pair<Uri, UpdatePackage>> {

    /* renamed from: d  reason: collision with root package name */
    private int f10195d = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Pair<Uri, UpdatePackage> b() {
        UpdatePackage g = g();
        List<String> urlList = g.getPatch().getUrlList();
        int i = this.f10195d;
        this.f10195d = i + 1;
        return new Pair<>(Uri.parse(urlList.get(i)), g);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.k
    public boolean a(Throwable th) {
        b.a("gecko-debug-tag", "patch update failed", th);
        if (this.f10195d >= g().getPatch().getUrlList().size()) {
            return false;
        }
        return (th instanceof a) || (th instanceof com.bytedance.sdk.openadsdk.preload.geckox.b.b);
    }
}
