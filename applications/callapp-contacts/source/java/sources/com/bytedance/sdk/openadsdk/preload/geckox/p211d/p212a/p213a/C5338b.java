package com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p213a;

import android.net.Uri;
import android.text.TextUtils;
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
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.a.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b.class */
public class C5338b extends AbstractC5283d<Pair<Uri, UpdatePackage>, Pair<AbstractC5326a, UpdatePackage>> {

    /* renamed from: d */
    private C5320b f18831d;

    /* renamed from: e */
    private File f18832e;

    /* renamed from: a */
    public static String m32509a(UpdatePackage updatePackage, String str) {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("url empty, channel:" + updatePackage.getChannel());
        }
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf == -1) {
            throw new RuntimeException("url path illegal, url:".concat(String.valueOf(str)));
        }
        String substring = str.substring(lastIndexOf + 1);
        if (TextUtils.isEmpty(substring)) {
            throw new RuntimeException("url path illegal, url:".concat(String.valueOf(str)));
        }
        return substring;
    }

    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<Pair<AbstractC5326a, UpdatePackage>> abstractC5279b, Pair<Uri, UpdatePackage> pair) throws Throwable {
        C5381b.m32429a("gecko-debug-tag", "start download full single file channel:", ((UpdatePackage) pair.second).getChannel());
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        String uri = ((Uri) pair.first).toString();
        long length = updatePackage.getFullPackage().getLength();
        File file = this.f18832e;
        File file2 = new File(file, updatePackage.getAccessKey() + File.separator + updatePackage.getChannel() + File.separator + updatePackage.getVersion() + "--updating");
        file2.mkdirs();
        StringBuilder sb = new StringBuilder("res");
        sb.append(File.separator);
        sb.append(m32509a(updatePackage, uri));
        AbstractC5326a m32535a = C5330a.m32535a(this.f18831d.m32584a(), new File(file2, sb.toString()), length);
        try {
            this.f18831d.m32577h().mo32423a(uri, length, new C5328b(m32535a));
            try {
                try {
                    Object mo32631a = abstractC5279b.mo32631a((AbstractC5279b<Pair<AbstractC5326a, UpdatePackage>>) new Pair<>(m32535a, updatePackage));
                    try {
                        m32535a.mo32522e();
                    } catch (Exception e) {
                        C5381b.m32430a("gecko-debug-tag", "DownloadFullSingleFile-release:", e);
                    }
                    return mo32631a;
                } catch (Exception e2) {
                    throw e2;
                }
            } catch (Throwable th) {
                try {
                    m32535a.mo32522e();
                } catch (Exception e3) {
                    C5381b.m32430a("gecko-debug-tag", "DownloadFullSingleFile-release:", e3);
                }
                throw th;
            }
        } catch (Throwable th2) {
            m32535a.mo32522e();
            throw new C5324a("download full single file failed! url:" + uri + ", channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getFullPackage().getId() + ", caused by:" + th2.getMessage(), th2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a */
    public void mo32475a(Object... objArr) {
        super.mo32475a(objArr);
        this.f18831d = (C5320b) objArr[0];
        this.f18832e = (File) objArr[1];
    }
}
