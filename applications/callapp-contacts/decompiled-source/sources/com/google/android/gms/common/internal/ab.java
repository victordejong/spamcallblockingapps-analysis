package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.h;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ab.class */
final class ab extends ac {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f22834a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h f22835b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(Intent intent, h hVar, int i) {
        this.f22834a = intent;
        this.f22835b = hVar;
    }

    @Override // com.google.android.gms.common.internal.ac
    public final void a() {
        Intent intent = this.f22834a;
        if (intent != null) {
            this.f22835b.startActivityForResult(intent, 2);
        }
    }
}
