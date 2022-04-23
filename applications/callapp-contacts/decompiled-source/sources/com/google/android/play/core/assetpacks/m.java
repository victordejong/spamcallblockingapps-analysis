package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.tasks.p;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/m.class */
final class m extends k<List<String>> {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ p f31290c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(p pVar, p<List<String>> pVar2) {
        super(pVar, pVar2);
        this.f31290c = pVar;
    }

    @Override // com.google.android.play.core.assetpacks.k, com.google.android.play.core.internal.bz
    public final void a(List<Bundle> list) {
        super.a(list);
        this.f31288a.a((p<T>) p.a(this.f31290c, list));
    }
}
