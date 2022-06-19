package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.AbstractC14181d;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.api.internal.ca */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ca.class */
final class C11888ca implements AbstractC14181d {

    /* renamed from: a */
    final /* synthetic */ C14186i f39329a;

    /* renamed from: b */
    final /* synthetic */ C11916v f39330b;

    public C11888ca(C11916v c11916v, C14186i c14186i) {
        this.f39330b = c11916v;
        this.f39329a = c14186i;
    }

    @Override // com.google.android.gms.tasks.AbstractC14181d
    public final void onComplete(AbstractC14185h abstractC14185h) {
        this.f39330b.f39407b.remove(this.f39329a);
    }
}
