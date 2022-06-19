package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC8472b1;
import com.google.android.play.core.internal.AbstractRunnableC8470b;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8504n;
import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.assetpacks.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/i.class */
public final class C8394i extends AbstractRunnableC8470b {

    /* renamed from: e */
    final /* synthetic */ C8581m f37783e;

    /* renamed from: f */
    final /* synthetic */ C8418o f37784f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8394i(C8418o c8418o, C8581m c8581m, C8581m c8581m2) {
        super(c8581m);
        this.f37784f = c8418o;
        this.f37783e = c8581m2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC8470b
    /* renamed from: a */
    protected final void mo3507a() {
        C8466a c8466a;
        C8504n c8504n;
        String str;
        Bundle m3710j;
        try {
            c8504n = this.f37784f.f37871f;
            AbstractC8472b1 abstractC8472b1 = (AbstractC8472b1) c8504n.m3503c();
            str = this.f37784f.f37868c;
            m3710j = C8418o.m3710j();
            abstractC8472b1.mo3415F2(str, m3710j, new BinderC8410m(this.f37784f, this.f37783e));
        } catch (RemoteException e) {
            c8466a = C8418o.f37866a;
            c8466a.m3565c(e, "keepAlive", new Object[0]);
        }
    }
}
