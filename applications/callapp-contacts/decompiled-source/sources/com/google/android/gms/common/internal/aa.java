package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/aa.class */
final class aa extends ac {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f22831a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Fragment f22832b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f22833c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(Intent intent, Fragment fragment, int i) {
        this.f22831a = intent;
        this.f22832b = fragment;
        this.f22833c = i;
    }

    @Override // com.google.android.gms.common.internal.ac
    public final void a() {
        Intent intent = this.f22831a;
        if (intent != null) {
            this.f22832b.startActivityForResult(intent, this.f22833c);
        }
    }
}
