package com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p217b;

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
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.b.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/b/b/c.class */
public class C5352c extends AbstractC5283d<Pair<Uri, UpdatePackage>, Pair<AbstractC5326a, UpdatePackage>> {

    /* renamed from: d */
    private C5320b f18838d;

    /* renamed from: e */
    private File f18839e;

    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<Pair<AbstractC5326a, UpdatePackage>> abstractC5279b, Pair<Uri, UpdatePackage> pair) throws Throwable {
        C5381b.m32429a("gecko-debug-tag", "start download patch zip file, channel:", ((UpdatePackage) pair.second).getChannel());
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        String uri = ((Uri) pair.first).toString();
        long length = updatePackage.getPatch().getLength();
        File file = this.f18839e;
        File file2 = new File(file, updatePackage.getAccessKey() + File.separator + updatePackage.getChannel() + File.separator + updatePackage.getVersion() + "--updating");
        file2.mkdirs();
        AbstractC5326a m32535a = C5330a.m32535a(this.f18838d.m32584a(), new File(file2, "patch.tmp"), length);
        try {
            this.f18838d.m32577h().mo32423a(uri, length, new C5328b(m32535a));
            try {
                return abstractC5279b.mo32631a((AbstractC5279b<Pair<AbstractC5326a, UpdatePackage>>) new Pair<>(m32535a, updatePackage));
            } finally {
                m32535a.mo32522e();
            }
        } catch (Throwable th) {
            m32535a.mo32522e();
            throw new C5324a("download patch zip failed, url:" + uri + ", channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getPatch().getId() + ", caused by:" + th.getMessage(), th);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a */
    public void mo32475a(Object... objArr) {
        super.mo32475a(objArr);
        this.f18838d = (C5320b) objArr[0];
        this.f18839e = (File) objArr[1];
    }
}
