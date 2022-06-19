package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.assetpacks.n */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/n.class */
final class BinderC14987n extends BinderC14983k<Void> {

    /* renamed from: c */
    final /* synthetic */ C14989p f54683c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC14987n(C14989p c14989p, C15192p<Void> c15192p) {
        super(c14989p, c15192p);
        this.f54683c = c14989p;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC14983k, com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: a */
    public final void mo9531a(Bundle bundle, Bundle bundle2) {
        AtomicBoolean atomicBoolean;
        C15072h c15072h;
        super.mo9531a(bundle, bundle2);
        atomicBoolean = this.f54683c.f54694g;
        if (!atomicBoolean.compareAndSet(true, false)) {
            c15072h = C14989p.f54688a;
            c15072h.m9507d("Expected keepingAlive to be true, but was false.", new Object[0]);
        }
        if (bundle.getBoolean("keep_alive")) {
            this.f54683c.mo9696a();
        }
    }
}
