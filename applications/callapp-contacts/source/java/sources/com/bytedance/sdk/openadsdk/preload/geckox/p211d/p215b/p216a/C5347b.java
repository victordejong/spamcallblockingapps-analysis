package com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p216a;

import android.net.Uri;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.C5320b;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.C5330a;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.p209a.C5328b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p208b.C5324a;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import java.io.File;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.b.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/b/a/b.class */
public class C5347b extends AbstractC5283d<Pair<Uri, UpdatePackage>, Pair<AbstractC5326a, UpdatePackage>> {

    /* renamed from: d */
    private C5320b f18836d;

    /* renamed from: e */
    private File f18837e;

    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<Pair<AbstractC5326a, UpdatePackage>> abstractC5279b, Pair<Uri, UpdatePackage> pair) throws Throwable {
        C5381b.m32429a("gecko-debug-tag", "start download full zip file, channel:", ((UpdatePackage) pair.second).getChannel());
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        String uri = ((Uri) pair.first).toString();
        long length = updatePackage.getFullPackage().getLength();
        File file = this.f18837e;
        File file2 = new File(file, updatePackage.getAccessKey() + File.separator + updatePackage.getChannel() + File.separator + updatePackage.getVersion() + "--updating");
        file2.mkdirs();
        AbstractC5326a m32535a = C5330a.m32535a(this.f18836d.m32584a(), new File(file2, "res.zip"), length);
        try {
            this.f18836d.m32577h().mo32423a(uri, length, new C5328b(m32535a));
            try {
                return abstractC5279b.mo32631a((AbstractC5279b<Pair<AbstractC5326a, UpdatePackage>>) new Pair<>(m32535a, updatePackage));
            } finally {
                m32535a.mo32522e();
            }
        } catch (Throwable th) {
            m32535a.mo32522e();
            throw new C5324a("download full zip file failed, url:" + uri + ", channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getFullPackage().getId() + ", caused by:" + th.getMessage(), th);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a */
    public void mo32475a(Object... objArr) {
        super.mo32475a(objArr);
        this.f18836d = (C5320b) objArr[0];
        this.f18837e = (File) objArr[1];
    }
}
