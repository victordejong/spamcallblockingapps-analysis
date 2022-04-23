package com.bytedance.sdk.openadsdk.preload.geckox.d;

import android.net.Uri;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.b.k;
import com.bytedance.sdk.openadsdk.preload.geckox.b.a;
import com.bytedance.sdk.openadsdk.preload.geckox.h.b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/g.class */
public class g extends k<UpdatePackage, Pair<Uri, UpdatePackage>> {

    /* renamed from: d  reason: collision with root package name */
    private int f10194d = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Pair<Uri, UpdatePackage> b() {
        UpdatePackage g = g();
        List<String> urlList = g.getFullPackage().getUrlList();
        int i = this.f10194d;
        this.f10194d = i + 1;
        return new Pair<>(Uri.parse(urlList.get(i)), g);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.k
    public boolean a(Throwable th) {
        b.a("gecko-debug-tag", "full update failed and retry", th);
        if (this.f10194d >= g().getFullPackage().getUrlList().size()) {
            return false;
        }
        return (th instanceof a) || (th instanceof com.bytedance.sdk.openadsdk.preload.geckox.b.b);
    }
}
