package com.bytedance.sdk.openadsdk.preload.geckox.d.a.b;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.b;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.BsPatch;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/a/b/d.class */
public class d extends com.bytedance.sdk.openadsdk.preload.b.d<Pair<a, UpdatePackage>, Pair<a, UpdatePackage>> {

    /* renamed from: d  reason: collision with root package name */
    private b f10183d;

    /* renamed from: a */
    public Object a_(com.bytedance.sdk.openadsdk.preload.b.b<Pair<a, UpdatePackage>> bVar, Pair<a, UpdatePackage> pair) throws Throwable {
        com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "start merge patch single file, channel:", ((UpdatePackage) pair.second).getChannel());
        a aVar = (a) pair.first;
        File f = aVar.f();
        aVar.a();
        aVar.e();
        File parentFile = f.getParentFile().getParentFile();
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        File file = new File(parentFile, updatePackage.getLocalVersion() + File.separator + "res");
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            throw new RuntimeException("can not found old full single file,:" + file.getAbsolutePath());
        }
        File file2 = listFiles[0];
        File parentFile2 = f.getParentFile();
        File file3 = new File(parentFile2, "res" + File.separator + com.bytedance.sdk.openadsdk.preload.geckox.d.a.a.b.a(updatePackage, updatePackage.getFullPackage().getUrlList().get(0)));
        com.bytedance.sdk.openadsdk.preload.geckox.utils.d.a(file3);
        try {
            try {
                BsPatch.a(file2, f, file3.getParentFile(), file3.getName());
                com.bytedance.sdk.openadsdk.preload.geckox.utils.d.a(f);
                a a2 = com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.a.a(this.f10183d.a(), file3, file3.length());
                try {
                    return bVar.a((com.bytedance.sdk.openadsdk.preload.b.b<Pair<a, UpdatePackage>>) new Pair<>(a2, updatePackage));
                } finally {
                    a2.e();
                }
            } catch (Exception e) {
                throw new RuntimeException("merge patch single file failed, channel：" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getPatch().getId() + ", caused by:" + e.getMessage(), e);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.preload.geckox.utils.d.a(f);
            throw th;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.d
    public void a(Object... objArr) {
        super.a(objArr);
        this.f10183d = (b) objArr[0];
    }
}
