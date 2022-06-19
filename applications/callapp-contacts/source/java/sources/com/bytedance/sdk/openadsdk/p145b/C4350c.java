package com.bytedance.sdk.openadsdk.p145b;

import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.File;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/b/c.class */
public class C4350c extends AbstractC4347b {

    /* renamed from: a */
    private int f16003a;

    /* renamed from: b */
    private int f16004b;

    public C4350c(int i, int i2) {
        this.f16003a = 15;
        this.f16004b = 3;
        if (i > 0) {
            this.f16003a = i;
            this.f16004b = i2;
            return;
        }
        throw new IllegalArgumentException("Max count must be positive number!");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.p145b.AbstractC4347b
    /* renamed from: a */
    protected void mo34552a(List<File> list) {
        int i;
        char c;
        char b = m35742b(list);
        int size = list.size();
        if (!mo35740a(b, size)) {
            for (File file : list) {
                long length = file.length();
                if (file.delete()) {
                    i = size - 1;
                    c = b - length;
                    C5478q.m32109c("TotalCountLruDiskFile", "Cache file " + file + " is deleted because it exceeds cache limit");
                } else {
                    C5478q.m32109c("TotalCountLruDiskFile", "Error deleting file " + file + " for trimming cache");
                    i = size;
                    c = b;
                }
                b = c;
                size = i;
                if (mo35739a(file, c, i)) {
                    return;
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p145b.AbstractC4347b
    /* renamed from: a */
    public boolean mo35740a(long j, int i) {
        return i <= this.f16003a;
    }

    @Override // com.bytedance.sdk.openadsdk.p145b.AbstractC4347b
    /* renamed from: a */
    public boolean mo35739a(File file, long j, int i) {
        return i <= this.f16004b;
    }
}
