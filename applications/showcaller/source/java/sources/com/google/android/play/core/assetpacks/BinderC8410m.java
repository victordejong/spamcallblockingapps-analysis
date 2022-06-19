package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.tasks.C8581m;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.assetpacks.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/m.class */
final class BinderC8410m extends BinderC8398j<Void> {

    /* renamed from: f */
    final /* synthetic */ C8418o f37845f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC8410m(C8418o c8418o, C8581m<Void> c8581m) {
        super(c8418o, c8581m);
        this.f37845f = c8418o;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC8398j, com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: E4 */
    public final void mo3533E4(Bundle bundle, Bundle bundle2) {
        AtomicBoolean atomicBoolean;
        C8466a c8466a;
        super.mo3533E4(bundle, bundle2);
        atomicBoolean = this.f37845f.f37872g;
        if (!atomicBoolean.compareAndSet(true, false)) {
            c8466a = C8418o.f37866a;
            c8466a.m3563e("Expected keepingAlive to be true, but was false.", new Object[0]);
        }
        if (bundle.getBoolean("keep_alive")) {
            this.f37845f.mo3685a();
        }
    }
}
