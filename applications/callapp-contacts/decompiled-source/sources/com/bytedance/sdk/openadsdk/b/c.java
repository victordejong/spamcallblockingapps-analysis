package com.bytedance.sdk.openadsdk.b;

import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/b/c.class */
public class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private int f8543a;

    /* renamed from: b  reason: collision with root package name */
    private int f8544b;

    public c(int i, int i2) {
        this.f8543a = 15;
        this.f8544b = 3;
        if (i > 0) {
            this.f8543a = i;
            this.f8544b = i2;
            return;
        }
        throw new IllegalArgumentException("Max count must be positive number!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.bytedance.sdk.openadsdk.b.c] */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.bytedance.sdk.openadsdk.b.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void a(java.util.List<java.io.File> r7) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            long r0 = r0.b(r1)
            r8 = r0
            r0 = r7
            int r0 = r0.size()
            r10 = r0
            r0 = r6
            r1 = r8
            r2 = r10
            boolean r0 = r0.a(r1, r2)
            if (r0 != 0) goto L_0x00b6
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L_0x001f:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00b6
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.io.File r0 = (java.io.File) r0
            r11 = r0
            r0 = r11
            long r0 = r0.length()
            r12 = r0
            r0 = r11
            boolean r0 = r0.delete()
            if (r0 == 0) goto L_0x0076
            r0 = r10
            r1 = 1
            int r0 = r0 - r1
            r14 = r0
            r0 = r8
            r1 = r12
            long r0 = r0 - r1
            r12 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Cache file "
            r1.<init>(r2)
            r15 = r0
            r0 = r15
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            java.lang.String r1 = " is deleted because it exceeds cache limit"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "TotalCountLruDiskFile"
            r1 = r15
            java.lang.String r1 = r1.toString()
            com.bytedance.sdk.openadsdk.utils.q.c(r0, r1)
            goto L_0x00a2
        L_0x0076:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Error deleting file "
            r1.<init>(r2)
            r15 = r0
            r0 = r15
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            java.lang.String r1 = " for trimming cache"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "TotalCountLruDiskFile"
            r1 = r15
            java.lang.String r1 = r1.toString()
            com.bytedance.sdk.openadsdk.utils.q.c(r0, r1)
            r0 = r10
            r14 = r0
            r0 = r8
            r12 = r0
        L_0x00a2:
            r0 = r12
            r8 = r0
            r0 = r14
            r10 = r0
            r0 = r6
            r1 = r11
            r2 = r12
            r3 = r14
            boolean r0 = r0.a(r1, r2, r3)
            if (r0 == 0) goto L_0x001f
        L_0x00b6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.b.c.a(java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.b.b
    public boolean a(long j, int i) {
        return i <= this.f8543a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.b.b
    public boolean a(File file, long j, int i) {
        return i <= this.f8544b;
    }
}
