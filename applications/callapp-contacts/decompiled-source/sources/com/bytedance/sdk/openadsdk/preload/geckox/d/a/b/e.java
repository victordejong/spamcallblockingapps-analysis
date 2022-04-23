package com.bytedance.sdk.openadsdk.preload.geckox.d.a.b;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.b.b;
import com.bytedance.sdk.openadsdk.preload.b.d;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/a/b/e.class */
public class e extends d<Pair<File, UpdatePackage>, Pair<String, Long>> {
    /* renamed from: a */
    public Object a_(b<Pair<String, Long>> bVar, Pair<File, UpdatePackage> pair) throws Throwable {
        com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "start active merged single file,channel:", ((UpdatePackage) pair.second).getChannel());
        File parentFile = ((File) pair.first).getParentFile().getParentFile();
        long version = ((UpdatePackage) pair.second).getVersion();
        File file = new File(parentFile.getParentFile(), String.valueOf(version));
        com.bytedance.sdk.openadsdk.preload.geckox.utils.d.a(file);
        if (parentFile.renameTo(file)) {
            return bVar.a((b<Pair<String, Long>>) new Pair<>(((UpdatePackage) pair.second).getChannel(), Long.valueOf(version)));
        }
        throw new RuntimeException("active merged single file failed:" + parentFile.getAbsolutePath());
    }
}
