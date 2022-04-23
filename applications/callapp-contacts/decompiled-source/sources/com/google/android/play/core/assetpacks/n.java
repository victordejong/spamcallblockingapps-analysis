package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.tasks.p;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/n.class */
final class n extends k<Void> {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ p f31293c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(p pVar, p<Void> pVar2) {
        super(pVar, pVar2);
        this.f31293c = pVar;
    }

    @Override // com.google.android.play.core.assetpacks.k, com.google.android.play.core.internal.bz
    public final void a(Bundle bundle, Bundle bundle2) {
        AtomicBoolean atomicBoolean;
        super.a(bundle, bundle2);
        atomicBoolean = this.f31293c.g;
        if (!atomicBoolean.compareAndSet(true, false)) {
            p.f31296a.d("Expected keepingAlive to be true, but was false.", new Object[0]);
        }
        if (bundle.getBoolean("keep_alive")) {
            this.f31293c.a();
        }
    }
}
