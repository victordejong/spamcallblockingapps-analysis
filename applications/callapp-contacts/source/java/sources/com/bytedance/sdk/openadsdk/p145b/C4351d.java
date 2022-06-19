package com.bytedance.sdk.openadsdk.p145b;

import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.File;
import java.io.IOException;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.b.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/b/d.class */
public class C4351d extends AbstractC4347b {

    /* renamed from: a */
    protected long f16005a = 83886080;

    @Override // com.bytedance.sdk.openadsdk.p145b.AbstractC4347b
    /* renamed from: a */
    public File mo35738a(String str, File file) throws IOException {
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.p145b.AbstractC4347b
    /* renamed from: a */
    public void mo34552a(List<File> list) {
        char c;
        char b = m35742b(list);
        C5478q.m32109c("TotalSizeLruDiskUsage", "当前缓存文件的总size：" + ((b / 1024) / 1024) + "MB");
        int size = list.size();
        boolean mo35740a = mo35740a(b, size);
        if (mo35740a) {
            C5478q.m32109c("TotalSizeLruDiskUsage", "不满足删除条件，不执行删除操作(true)".concat(String.valueOf(mo35740a)));
        } else {
            C5478q.m32109c("TotalSizeLruDiskUsage", "满足删除条件，开始执行删除操作(false)".concat(String.valueOf(mo35740a)));
        }
        for (File file : list) {
            if (!mo35740a) {
                C5478q.m32109c("TotalSizeLruDiskUsage", "满足删除条件开始删除文件......................");
                long length = file.length();
                if (file.delete()) {
                    size--;
                    c = b - length;
                    C5478q.m32109c("TotalSizeLruDiskUsage", "删除 一个 Cache file 当前总大小totalSize：" + ((c / 1024) / 1024) + "MB");
                } else {
                    C5478q.m32106e("TotalSizeLruDiskUsage", "Error deleting file " + file + " for trimming cache");
                    c = b;
                }
                boolean mo35739a = mo35739a(file, c, size);
                b = c;
                if (mo35739a) {
                    C5478q.m32109c("TotalSizeLruDiskUsage", "当前总大小totalSize：" + ((c / 1024) / 1024) + "MB，最大值存储上限maxSize=" + ((this.f16005a / 1024) / 1024) + "MB，当前文件的总大小totalSize已小于等于maxSize一半，停止删除操作：minStopDeleteCondition=" + mo35739a);
                    return;
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p145b.AbstractC4347b
    /* renamed from: a */
    protected boolean mo35740a(long j, int i) {
        return j < this.f16005a;
    }

    @Override // com.bytedance.sdk.openadsdk.p145b.AbstractC4347b
    /* renamed from: a */
    protected boolean mo35739a(File file, long j, int i) {
        return j < this.f16005a / 2;
    }
}
