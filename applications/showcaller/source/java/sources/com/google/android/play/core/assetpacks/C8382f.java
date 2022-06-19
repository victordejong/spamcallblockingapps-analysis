package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC8472b1;
import com.google.android.play.core.internal.AbstractRunnableC8470b;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8504n;
import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.assetpacks.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/f.class */
final class C8382f extends AbstractRunnableC8470b {

    /* renamed from: e */
    final /* synthetic */ int f37708e;

    /* renamed from: f */
    final /* synthetic */ C8581m f37709f;

    /* renamed from: g */
    final /* synthetic */ C8418o f37710g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8382f(C8418o c8418o, C8581m c8581m, int i, C8581m c8581m2) {
        super(c8581m);
        this.f37710g = c8418o;
        this.f37708e = i;
        this.f37709f = c8581m2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC8470b
    /* renamed from: a */
    protected final void mo3507a() {
        C8466a c8466a;
        C8504n c8504n;
        String str;
        Bundle m3711i;
        Bundle m3710j;
        try {
            c8504n = this.f37710g.f37870e;
            AbstractC8472b1 abstractC8472b1 = (AbstractC8472b1) c8504n.m3503c();
            str = this.f37710g.f37868c;
            m3711i = C8418o.m3711i(this.f37708e);
            m3710j = C8418o.m3710j();
            abstractC8472b1.mo3416D1(str, m3711i, m3710j, new BinderC8398j(this.f37710g, this.f37709f, (int[]) null));
        } catch (RemoteException e) {
            c8466a = C8418o.f37866a;
            c8466a.m3565c(e, "notifySessionFailed", new Object[0]);
        }
    }
}
