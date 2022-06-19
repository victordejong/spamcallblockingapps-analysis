package com.bytedance.sdk.openadsdk.preload.geckox.p211d;

import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5294j;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/b.class */
public class C5345b extends AbstractC5294j<UpdatePackage, UpdatePackage> {
    /* renamed from: a */
    public String mo32500a(AbstractC5279b<UpdatePackage> abstractC5279b, UpdatePackage updatePackage) {
        UpdatePackage.Package patch = updatePackage.getPatch();
        if (patch == null) {
            C5381b.m32429a("gecko-debug-tag", "start full update, channel:", updatePackage.getChannel());
            return "full";
        }
        List<String> urlList = patch.getUrlList();
        if (urlList == null || urlList.isEmpty()) {
            C5381b.m32429a("gecko-debug-tag", "start full update, channel:", updatePackage.getChannel());
            return "full";
        }
        C5381b.m32429a("gecko-debug-tag", "start full update, channel:", updatePackage.getChannel());
        return "patch";
    }

    /* renamed from: a */
    public String mo32499a(AbstractC5279b<UpdatePackage> abstractC5279b, UpdatePackage updatePackage, Throwable th, String str) {
        if ("patch".equals(str)) {
            C5381b.m32429a("gecko-debug-tag", "start full update, channel:", updatePackage.getChannel());
            return "full";
        }
        throw new RuntimeException("full update failed, caused by:" + th.getMessage(), th);
    }
}
