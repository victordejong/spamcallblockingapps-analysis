package com.bytedance.sdk.openadsdk.preload.geckox.p211d;

import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5277a;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/a.class */
public class C5336a extends AbstractC5277a<UpdatePackage, UpdatePackage> {
    /* renamed from: a */
    public String mo32512a(AbstractC5279b<UpdatePackage> abstractC5279b, UpdatePackage updatePackage) {
        int packageType = updatePackage.getPackageType();
        if (packageType != 0) {
            if (packageType != 1) {
                throw new RuntimeException("unknow file type: ".concat(String.valueOf(packageType)));
            }
            return "branch_single_file";
        }
        return "branch_zip";
    }
}
