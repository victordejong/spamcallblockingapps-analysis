package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/z.class */
final class z extends ac {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f22911a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Activity f22912b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f22913c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(Intent intent, Activity activity, int i) {
        this.f22911a = intent;
        this.f22912b = activity;
        this.f22913c = i;
    }

    @Override // com.google.android.gms.common.internal.ac
    public final void a() {
        Intent intent = this.f22911a;
        if (intent != null) {
            this.f22912b.startActivityForResult(intent, this.f22913c);
        }
    }
}
