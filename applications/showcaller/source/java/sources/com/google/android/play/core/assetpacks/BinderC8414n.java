package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8504n;
import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.assetpacks.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/n.class */
final class BinderC8414n extends BinderC8398j<Void> {

    /* renamed from: f */
    final int f37858f;

    /* renamed from: g */
    final String f37859g;

    /* renamed from: h */
    final int f37860h;

    /* renamed from: i */
    final /* synthetic */ C8418o f37861i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC8414n(C8418o c8418o, C8581m<Void> c8581m, int i, String str, int i2) {
        super(c8418o, c8581m);
        this.f37861i = c8418o;
        this.f37858f = i;
        this.f37859g = str;
        this.f37860h = i2;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC8398j, com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: p5 */
    public final void mo3526p5(Bundle bundle) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37861i.f37870e;
        c8504n.m3504b();
        int i = bundle.getInt("error_code");
        c8466a = C8418o.f37866a;
        c8466a.m3566b("onError(%d), retrying notifyModuleCompleted...", Integer.valueOf(i));
        int i2 = this.f37860h;
        if (i2 > 0) {
            this.f37861i.m3696x(this.f37858f, this.f37859g, i2 - 1);
        }
    }
}
