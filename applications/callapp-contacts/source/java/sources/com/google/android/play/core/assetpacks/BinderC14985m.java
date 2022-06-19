package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.tasks.C15192p;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.m */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/m.class */
final class BinderC14985m extends BinderC14983k<List<String>> {

    /* renamed from: c */
    final /* synthetic */ C14989p f54680c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC14985m(C14989p c14989p, C15192p<List<String>> c15192p) {
        super(c14989p, c15192p);
        this.f54680c = c14989p;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC14983k, com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: a */
    public final void mo9530a(List<Bundle> list) {
        super.mo9530a(list);
        this.f54678a.m9323a((C15192p<T>) C14989p.m9689a(this.f54680c, list));
    }
}
