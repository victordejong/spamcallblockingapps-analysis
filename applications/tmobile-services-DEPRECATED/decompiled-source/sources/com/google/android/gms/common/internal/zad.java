package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zad.class */
final class zad extends DialogRedirect {

    /* renamed from: f */
    private final /* synthetic */ Intent f7541f;

    /* renamed from: g */
    private final /* synthetic */ Activity f7542g;

    /* renamed from: h */
    private final /* synthetic */ int f7543h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zad(Intent intent, Activity activity, int i) {
        this.f7541f = intent;
        this.f7542g = activity;
        this.f7543h = i;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    /* renamed from: c */
    public final void mo14435c() {
        Intent intent = this.f7541f;
        if (intent != null) {
            this.f7542g.startActivityForResult(intent, this.f7543h);
        }
    }
}
