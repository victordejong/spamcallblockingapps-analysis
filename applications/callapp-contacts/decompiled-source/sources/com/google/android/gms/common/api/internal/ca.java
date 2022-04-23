package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.d;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ca.class */
final class ca implements d {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i f22720a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ v f22721b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(v vVar, i iVar) {
        this.f22721b = vVar;
        this.f22720a = iVar;
    }

    @Override // com.google.android.gms.tasks.d
    public final void onComplete(h hVar) {
        this.f22721b.f22770b.remove(this.f22720a);
    }
}
