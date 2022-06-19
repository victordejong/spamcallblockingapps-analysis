package com.google.android.play.core.assetpacks;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC8472b1;
import com.google.android.play.core.internal.AbstractRunnableC8470b;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8504n;
import com.google.android.play.core.tasks.C8581m;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.u2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/u2.class */
final class C8445u2 extends AbstractRunnableC8470b {

    /* renamed from: e */
    final /* synthetic */ Map f37947e;

    /* renamed from: f */
    final /* synthetic */ C8581m f37948f;

    /* renamed from: g */
    final /* synthetic */ C8418o f37949g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8445u2(C8418o c8418o, C8581m c8581m, Map map, C8581m c8581m2) {
        super(c8581m);
        this.f37949g = c8418o;
        this.f37947e = map;
        this.f37948f = c8581m2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC8470b
    /* renamed from: a */
    protected final void mo3507a() {
        C8466a c8466a;
        C8504n c8504n;
        String str;
        try {
            c8504n = this.f37949g.f37870e;
            AbstractC8472b1 abstractC8472b1 = (AbstractC8472b1) c8504n.m3503c();
            str = this.f37949g.f37868c;
            abstractC8472b1.mo3413G5(str, C8418o.m3707m(this.f37947e), new BinderC8406l(this.f37949g, this.f37948f));
        } catch (RemoteException e) {
            c8466a = C8418o.f37866a;
            c8466a.m3565c(e, "syncPacks", new Object[0]);
            this.f37948f.m3312d(new RuntimeException(e));
        }
    }
}
