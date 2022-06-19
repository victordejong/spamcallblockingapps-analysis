package com.bytedance.sdk.openadsdk.core.p151b;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
/* renamed from: com.bytedance.sdk.openadsdk.core.b.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/e.class */
public abstract class AbstractC4499e extends C4494a {
    public AbstractC4499e(Context context, C4557i c4557i, String str, int i) {
        super(context, c4557i, str, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p151b.C4494a, com.bytedance.sdk.openadsdk.core.p151b.C4495b, com.bytedance.sdk.openadsdk.core.p151b.AbstractView$OnClickListenerC4497c
    /* renamed from: a */
    public void mo35468a(View view, int i, int i2, int i3, int i4) {
        mo35467a_(view, i, i2, i3, i4);
        super.mo35468a(view, i, i2, i3, i4);
    }

    /* renamed from: a_ */
    protected abstract void mo35467a_(View view, int i, int i2, int i3, int i4);
}
