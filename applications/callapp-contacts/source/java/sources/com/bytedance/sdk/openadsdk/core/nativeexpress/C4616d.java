package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.p151b.C4494a;
import com.bytedance.sdk.openadsdk.core.p154e.C4548d;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
/* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/d.class */
public class C4616d extends C4494a {

    /* renamed from: a */
    private C4553g f16922a;

    public C4616d(Context context, C4557i c4557i, String str, int i) {
        super(context, c4557i, str, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    @Override // com.bytedance.sdk.openadsdk.core.p151b.C4495b
    /* renamed from: a */
    public C4548d mo34729a(int i, int i2, int i3, int i4, long j, long j2, View view, View view2, String str) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        this.f16355x = 1;
        this.f16356y = 0;
        this.f16357z = 0;
        int[] m32230a = C5443ag.m32230a(view);
        if (m32230a == null || m32230a.length != 2) {
            i10 = i3;
            i8 = i4;
            i6 = 0;
            i7 = i2;
            i9 = i;
            i5 = 0;
        } else {
            i6 = m32230a[0];
            i5 = m32230a[1];
            int m32232a = ((int) C5443ag.m32232a(this.f16334c, i)) + i6;
            int m32232a2 = ((int) C5443ag.m32232a(this.f16334c, i2)) + i5;
            int m32232a3 = ((int) C5443ag.m32232a(this.f16334c, i3)) + i6;
            i8 = ((int) C5443ag.m32232a(this.f16334c, i4)) + i5;
            i9 = m32232a;
            i7 = m32232a2;
            i10 = m32232a3;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        C4553g c4553g = this.f16922a;
        ?? r10 = j;
        ?? r12 = j2;
        if (c4553g != null) {
            r10 = c4553g.f16509e;
            r12 = this.f16922a.f16510f;
            iArr[0] = ((int) C5443ag.m32232a(this.f16334c, this.f16922a.f16511g)) + i6;
            iArr[1] = ((int) C5443ag.m32232a(this.f16334c, this.f16922a.f16512h)) + i5;
            iArr2[0] = (int) C5443ag.m32232a(this.f16334c, this.f16922a.f16513i);
            iArr2[1] = (int) C5443ag.m32232a(this.f16334c, this.f16922a.f16514j);
        }
        return new C4548d.C4550a().m35301d(i9).m35304c(i7).m35308b(i10).m35313a(i8).m35307b((long) r10).m35312a((long) r12).m35305b(m32230a).m35309a(iArr).m35302c(C5443ag.m32216c(view)).m35299d(iArr2).m35298e(this.f16355x).m35296f(this.f16356y).m35294g(this.f16357z).m35310a(str).m35314a();
    }

    /* renamed from: a */
    public void m34730a(C4553g c4553g) {
        this.f16922a = c4553g;
    }
}
