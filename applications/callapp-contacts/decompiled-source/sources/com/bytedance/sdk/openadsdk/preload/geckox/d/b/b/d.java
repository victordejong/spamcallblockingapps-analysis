package com.bytedance.sdk.openadsdk.preload.geckox.d.b.b;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.b;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.BsPatch;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/b/b/d.class */
public class d extends com.bytedance.sdk.openadsdk.preload.b.d<Pair<a, UpdatePackage>, Pair<a, UpdatePackage>> {

    /* renamed from: d  reason: collision with root package name */
    private b f10186d;

    /* renamed from: a */
    public Object a_(com.bytedance.sdk.openadsdk.preload.b.b<Pair<a, UpdatePackage>> bVar, Pair<a, UpdatePackage> pair) throws Throwable {
        com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "start merge patch zip file, channel:", ((UpdatePackage) pair.second).getChannel());
        a aVar = (a) pair.first;
        File f = aVar.f();
        aVar.a();
        aVar.e();
        File parentFile = f.getParentFile().getParentFile();
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        File file = new File(parentFile, updatePackage.getLocalVersion() + File.separator + "res.zip");
        File file2 = new File(f.getParentFile(), "res.zip");
        com.bytedance.sdk.openadsdk.preload.geckox.utils.d.a(file2);
        try {
            try {
                BsPatch.a(file, f, file2.getParentFile(), file2.getName());
                com.bytedance.sdk.openadsdk.preload.geckox.utils.d.a(f);
                a a2 = com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.a.a(this.f10186d.a(), file2, file2.length());
                try {
                    return bVar.a((com.bytedance.sdk.openadsdk.preload.b.b<Pair<a, UpdatePackage>>) new Pair<>(a2, updatePackage));
                } finally {
                    a2.e();
                }
            } catch (Exception e) {
                throw new RuntimeException("merged patch zip file failed, channel：" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getPatch().getId() + ", caused by:" + e.getMessage(), e);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.preload.geckox.utils.d.a(f);
            throw th;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.d
    public void a(Object... objArr) {
        super.a(objArr);
        this.f10186d = (b) objArr[0];
    }
}
