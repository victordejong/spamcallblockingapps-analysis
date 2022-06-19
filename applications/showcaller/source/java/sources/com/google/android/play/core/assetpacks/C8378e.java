package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC8472b1;
import com.google.android.play.core.internal.AbstractRunnableC8470b;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8504n;
import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.assetpacks.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/e.class */
public final class C8378e extends AbstractRunnableC8470b {

    /* renamed from: e */
    final /* synthetic */ int f37700e;

    /* renamed from: f */
    final /* synthetic */ String f37701f;

    /* renamed from: g */
    final /* synthetic */ C8581m f37702g;

    /* renamed from: h */
    final /* synthetic */ int f37703h;

    /* renamed from: i */
    final /* synthetic */ C8418o f37704i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8378e(C8418o c8418o, C8581m c8581m, int i, String str, C8581m c8581m2, int i2) {
        super(c8581m);
        this.f37704i = c8418o;
        this.f37700e = i;
        this.f37701f = str;
        this.f37702g = c8581m2;
        this.f37703h = i2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC8470b
    /* renamed from: a */
    protected final void mo3507a() {
        C8466a c8466a;
        C8504n c8504n;
        String str;
        Bundle m3712h;
        Bundle m3710j;
        try {
            c8504n = this.f37704i.f37870e;
            AbstractC8472b1 abstractC8472b1 = (AbstractC8472b1) c8504n.m3503c();
            str = this.f37704i.f37868c;
            m3712h = C8418o.m3712h(this.f37700e, this.f37701f);
            m3710j = C8418o.m3710j();
            abstractC8472b1.mo3411Z0(str, m3712h, m3710j, new BinderC8414n(this.f37704i, this.f37702g, this.f37700e, this.f37701f, this.f37703h));
        } catch (RemoteException e) {
            c8466a = C8418o.f37866a;
            c8466a.m3565c(e, "notifyModuleCompleted", new Object[0]);
        }
    }
}
