package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.e.d;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.utils.ag;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/e.class */
public class e extends b {

    /* renamed from: a  reason: collision with root package name */
    private g f9043a;

    public e(Context context, i iVar, String str, int i) {
        super(context, iVar, str, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.b
    public d a(int i, int i2, int i3, int i4, long j, long j2, View view, View view2, String str) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        this.x = 1;
        this.y = 0;
        this.z = 0;
        int[] a2 = ag.a(view);
        if (a2 == null || a2.length != 2) {
            i9 = i3;
            i10 = i4;
            i6 = 0;
            i5 = 0;
            i7 = i2;
            i8 = i;
        } else {
            i6 = a2[0];
            i5 = a2[1];
            i8 = ((int) ag.a(this.f8800c, i)) + i6;
            i7 = ((int) ag.a(this.f8800c, i2)) + i5;
            i9 = ((int) ag.a(this.f8800c, i3)) + i6;
            i10 = ((int) ag.a(this.f8800c, i4)) + i5;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        g gVar = this.f9043a;
        if (gVar != null) {
            j = gVar.e;
            j2 = this.f9043a.f;
            iArr[0] = ((int) ag.a(this.f8800c, this.f9043a.g)) + i6;
            iArr[1] = ((int) ag.a(this.f8800c, this.f9043a.h)) + i5;
            iArr2[0] = (int) ag.a(this.f8800c, this.f9043a.i);
            iArr2[1] = (int) ag.a(this.f8800c, this.f9043a.j);
        }
        return new d.a().d(i8).c(i7).b(i9).a(i10).b(j).a(j2).b(a2).a(iArr).c(ag.c(view)).d(iArr2).e(this.x).f(this.y).g(this.z).a(str).a();
    }

    public void a(g gVar) {
        this.f9043a = gVar;
    }
}
