package com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p214b;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5419d;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import java.io.File;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.a.b.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/a/b/e.class */
public class C5344e extends AbstractC5283d<Pair<File, UpdatePackage>, Pair<String, Long>> {
    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<Pair<String, Long>> abstractC5279b, Pair<File, UpdatePackage> pair) throws Throwable {
        C5381b.m32429a("gecko-debug-tag", "start active merged single file,channel:", ((UpdatePackage) pair.second).getChannel());
        File parentFile = ((File) pair.first).getParentFile().getParentFile();
        long version = ((UpdatePackage) pair.second).getVersion();
        File file = new File(parentFile.getParentFile(), String.valueOf(version));
        C5419d.m32358a(file);
        if (parentFile.renameTo(file)) {
            return abstractC5279b.mo32631a((AbstractC5279b<Pair<String, Long>>) new Pair<>(((UpdatePackage) pair.second).getChannel(), Long.valueOf(version)));
        }
        throw new RuntimeException("active merged single file failed:" + parentFile.getAbsolutePath());
    }
}
