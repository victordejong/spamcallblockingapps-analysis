package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC8472b1;
import com.google.android.play.core.internal.AbstractRunnableC8470b;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8504n;
import com.google.android.play.core.tasks.C8581m;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.t2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/t2.class */
final class C8441t2 extends AbstractRunnableC8470b {

    /* renamed from: e */
    final /* synthetic */ List f37937e;

    /* renamed from: f */
    final /* synthetic */ C8581m f37938f;

    /* renamed from: g */
    final /* synthetic */ C8418o f37939g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8441t2(C8418o c8418o, C8581m c8581m, List list, C8581m c8581m2) {
        super(c8581m);
        this.f37939g = c8418o;
        this.f37937e = list;
        this.f37938f = c8581m2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC8470b
    /* renamed from: a */
    protected final void mo3507a() {
        C8466a c8466a;
        C8504n c8504n;
        String str;
        Bundle m3710j;
        ArrayList m3709k = C8418o.m3709k(this.f37937e);
        try {
            c8504n = this.f37939g.f37870e;
            AbstractC8472b1 abstractC8472b1 = (AbstractC8472b1) c8504n.m3503c();
            str = this.f37939g.f37868c;
            m3710j = C8418o.m3710j();
            abstractC8472b1.mo3410b1(str, m3709k, m3710j, new BinderC8398j(this.f37939g, this.f37938f, (byte[]) null));
        } catch (RemoteException e) {
            c8466a = C8418o.f37866a;
            c8466a.m3565c(e, "cancelDownloads(%s)", this.f37937e);
        }
    }
}
