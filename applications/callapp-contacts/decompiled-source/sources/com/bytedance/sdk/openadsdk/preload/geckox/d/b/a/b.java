package com.bytedance.sdk.openadsdk.preload.geckox.d.b.a;

import android.net.Uri;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.b.d;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/b/a/b.class */
public class b extends d<Pair<Uri, UpdatePackage>, Pair<a, UpdatePackage>> {

    /* renamed from: d  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.preload.geckox.b f10184d;
    private File e;

    /* renamed from: a */
    public Object a_(com.bytedance.sdk.openadsdk.preload.b.b<Pair<a, UpdatePackage>> bVar, Pair<Uri, UpdatePackage> pair) throws Throwable {
        com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "start download full zip file, channel:", ((UpdatePackage) pair.second).getChannel());
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        String uri = ((Uri) pair.first).toString();
        long length = updatePackage.getFullPackage().getLength();
        File file = this.e;
        File file2 = new File(file, updatePackage.getAccessKey() + File.separator + updatePackage.getChannel() + File.separator + updatePackage.getVersion() + "--updating");
        file2.mkdirs();
        a a2 = com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.a.a(this.f10184d.a(), new File(file2, "res.zip"), length);
        try {
            this.f10184d.h().a(uri, length, new com.bytedance.sdk.openadsdk.preload.geckox.buffer.a.b(a2));
            try {
                return bVar.a((com.bytedance.sdk.openadsdk.preload.b.b<Pair<a, UpdatePackage>>) new Pair<>(a2, updatePackage));
            } finally {
                a2.e();
            }
        } catch (Throwable th) {
            a2.e();
            throw new com.bytedance.sdk.openadsdk.preload.geckox.b.a("download full zip file failed, url:" + uri + ", channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getFullPackage().getId() + ", caused by:" + th.getMessage(), th);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.d
    public void a(Object... objArr) {
        super.a(objArr);
        this.f10184d = (com.bytedance.sdk.openadsdk.preload.geckox.b) objArr[0];
        this.e = (File) objArr[1];
    }
}
