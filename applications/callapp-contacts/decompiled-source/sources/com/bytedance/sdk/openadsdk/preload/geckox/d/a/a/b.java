package com.bytedance.sdk.openadsdk.preload.geckox.d.a.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.b.d;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b.class */
public class b extends d<Pair<Uri, UpdatePackage>, Pair<a, UpdatePackage>> {

    /* renamed from: d  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.preload.geckox.b f10181d;
    private File e;

    public static String a(UpdatePackage updatePackage, String str) {
        if (!TextUtils.isEmpty(str)) {
            int lastIndexOf = str.lastIndexOf("/");
            if (lastIndexOf != -1) {
                String substring = str.substring(lastIndexOf + 1);
                if (!TextUtils.isEmpty(substring)) {
                    return substring;
                }
                throw new RuntimeException("url path illegal, url:".concat(String.valueOf(str)));
            }
            throw new RuntimeException("url path illegal, url:".concat(String.valueOf(str)));
        }
        throw new RuntimeException("url empty, channel:" + updatePackage.getChannel());
    }

    /* renamed from: a */
    public Object a_(com.bytedance.sdk.openadsdk.preload.b.b<Pair<a, UpdatePackage>> bVar, Pair<Uri, UpdatePackage> pair) throws Throwable {
        com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "start download full single file channel:", ((UpdatePackage) pair.second).getChannel());
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        String uri = ((Uri) pair.first).toString();
        long length = updatePackage.getFullPackage().getLength();
        File file = this.e;
        File file2 = new File(file, updatePackage.getAccessKey() + File.separator + updatePackage.getChannel() + File.separator + updatePackage.getVersion() + "--updating");
        file2.mkdirs();
        StringBuilder sb = new StringBuilder("res");
        sb.append(File.separator);
        sb.append(a(updatePackage, uri));
        a a2 = com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.a.a(this.f10181d.a(), new File(file2, sb.toString()), length);
        try {
            this.f10181d.h().a(uri, length, new com.bytedance.sdk.openadsdk.preload.geckox.buffer.a.b(a2));
            try {
                try {
                    Object a3 = bVar.a((com.bytedance.sdk.openadsdk.preload.b.b<Pair<a, UpdatePackage>>) new Pair<>(a2, updatePackage));
                    try {
                        a2.e();
                    } catch (Exception e) {
                        com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "DownloadFullSingleFile-release:", e);
                    }
                    return a3;
                } catch (Exception e2) {
                    throw e2;
                }
            } catch (Throwable th) {
                try {
                    a2.e();
                } catch (Exception e3) {
                    com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "DownloadFullSingleFile-release:", e3);
                }
                throw th;
            }
        } catch (Throwable th2) {
            a2.e();
            throw new com.bytedance.sdk.openadsdk.preload.geckox.b.a("download full single file failed! url:" + uri + ", channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getFullPackage().getId() + ", caused by:" + th2.getMessage(), th2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.d
    public void a(Object... objArr) {
        super.a(objArr);
        this.f10181d = (com.bytedance.sdk.openadsdk.preload.geckox.b) objArr[0];
        this.e = (File) objArr[1];
    }
}
