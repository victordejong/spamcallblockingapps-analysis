package com.bytedance.sdk.openadsdk.preload.geckox.d;

import com.bytedance.sdk.openadsdk.preload.b.b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/a.class */
public class a extends com.bytedance.sdk.openadsdk.preload.b.a<UpdatePackage, UpdatePackage> {
    /* JADX INFO: Access modifiers changed from: protected */
    public String a(b<UpdatePackage> bVar, UpdatePackage updatePackage) {
        int packageType = updatePackage.getPackageType();
        if (packageType == 0) {
            return "branch_zip";
        }
        if (packageType == 1) {
            return "branch_single_file";
        }
        throw new RuntimeException("unknow file type: ".concat(String.valueOf(packageType)));
    }
}
