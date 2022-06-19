package com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p217b;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.p209a.C5327a;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5419d;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5430l;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import java.io.File;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.b.b.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/b/b/f.class */
public class C5355f extends AbstractC5283d<Pair<AbstractC5326a, UpdatePackage>, Pair<File, UpdatePackage>> {
    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<Pair<File, UpdatePackage>> abstractC5279b, Pair<AbstractC5326a, UpdatePackage> pair) throws Throwable {
        C5381b.m32429a("gecko-debug-tag", "start unzip merged zip file, channel:", ((UpdatePackage) pair.second).getChannel());
        AbstractC5326a abstractC5326a = (AbstractC5326a) pair.first;
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        abstractC5326a.mo32527b(0L);
        File parentFile = abstractC5326a.mo32521f().getParentFile();
        try {
            C5430l.m32341a(new C5327a(abstractC5326a), parentFile.getAbsolutePath(), updatePackage.getChannel());
            abstractC5326a.mo32533a();
            File file = new File(parentFile, "res");
            C5419d.m32358a(file);
            if (new File(parentFile, updatePackage.getChannel()).renameTo(file)) {
                return abstractC5279b.mo32631a((AbstractC5279b<Pair<File, UpdatePackage>>) new Pair<>(abstractC5326a.mo32521f(), updatePackage));
            }
            throw new RuntimeException("rename unzip merged zip file failed:" + parentFile.getAbsolutePath());
        } catch (Exception e) {
            throw new RuntimeException("unzip merged zip file failed, channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getPatch().getId() + e.getMessage(), e);
        }
    }
}
