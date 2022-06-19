package com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p214b;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.p209a.C5327a;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5424h;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import java.io.File;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.a.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/a/b/a.class */
public class C5340a extends AbstractC5283d<Pair<AbstractC5326a, UpdatePackage>, Pair<File, UpdatePackage>> {
    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<Pair<File, UpdatePackage>> abstractC5279b, Pair<AbstractC5326a, UpdatePackage> pair) throws Throwable {
        C5381b.m32429a("gecko-debug-tag", "start check merged single file, channel:", ((UpdatePackage) pair.second).getChannel());
        AbstractC5326a abstractC5326a = (AbstractC5326a) pair.first;
        abstractC5326a.mo32527b(0L);
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        try {
            C5424h.m32348a(new C5327a(abstractC5326a), updatePackage.getFullPackage().getMd5());
            return abstractC5279b.mo32631a((AbstractC5279b<Pair<File, UpdatePackage>>) new Pair<>(abstractC5326a.mo32521f(), updatePackage));
        } catch (Throwable th) {
            throw new RuntimeException("check merged single file failed, channel：" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getPatch().getId() + ", caused by:" + th.getMessage(), th);
        }
    }
}
