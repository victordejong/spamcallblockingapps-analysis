package com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p214b;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.C5320b;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.C5330a;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p213a.C5338b;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.BsPatch;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5419d;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import java.io.File;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.a.b.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/a/b/d.class */
public class C5343d extends AbstractC5283d<Pair<AbstractC5326a, UpdatePackage>, Pair<AbstractC5326a, UpdatePackage>> {

    /* renamed from: d */
    private C5320b f18835d;

    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<Pair<AbstractC5326a, UpdatePackage>> abstractC5279b, Pair<AbstractC5326a, UpdatePackage> pair) throws Throwable {
        C5381b.m32429a("gecko-debug-tag", "start merge patch single file, channel:", ((UpdatePackage) pair.second).getChannel());
        AbstractC5326a abstractC5326a = (AbstractC5326a) pair.first;
        File mo32521f = abstractC5326a.mo32521f();
        abstractC5326a.mo32533a();
        abstractC5326a.mo32522e();
        File parentFile = mo32521f.getParentFile().getParentFile();
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        File file = new File(parentFile, updatePackage.getLocalVersion() + File.separator + "res");
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            throw new RuntimeException("can not found old full single file,:" + file.getAbsolutePath());
        }
        File file2 = listFiles[0];
        File parentFile2 = mo32521f.getParentFile();
        File file3 = new File(parentFile2, "res" + File.separator + C5338b.m32509a(updatePackage, updatePackage.getFullPackage().getUrlList().get(0)));
        C5419d.m32358a(file3);
        try {
            try {
                BsPatch.m32372a(file2, mo32521f, file3.getParentFile(), file3.getName());
                C5419d.m32358a(mo32521f);
                AbstractC5326a m32535a = C5330a.m32535a(this.f18835d.m32584a(), file3, file3.length());
                try {
                    return abstractC5279b.mo32631a((AbstractC5279b<Pair<AbstractC5326a, UpdatePackage>>) new Pair<>(m32535a, updatePackage));
                } finally {
                    m32535a.mo32522e();
                }
            } catch (Exception e) {
                throw new RuntimeException("merge patch single file failed, channel???" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getPatch().getId() + ", caused by:" + e.getMessage(), e);
            }
        } catch (Throwable th) {
            C5419d.m32358a(mo32521f);
            throw th;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a */
    public void mo32475a(Object... objArr) {
        super.mo32475a(objArr);
        this.f18835d = (C5320b) objArr[0];
    }
}
