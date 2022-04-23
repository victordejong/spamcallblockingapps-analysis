package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhr.class */
public final class zzhr implements zzkv {

    /* renamed from: a */
    private final /* synthetic */ zzgy f9446a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhr(zzgy zzgyVar) {
        this.f9446a = zzgyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzkv
    /* renamed from: a */
    public final void mo11004a(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.f9446a.m11273X("auto", "_err", bundle);
        } else {
            this.f9446a.m11272Y("auto", "_err", bundle, str);
            throw null;
        }
    }
}
