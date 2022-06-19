package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: com.google.android.gms.measurement.internal.k6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k6.class */
public final class C7771k6 implements AbstractC7874t9 {

    /* renamed from: a */
    final /* synthetic */ C7893v6 f35388a;

    public C7771k6(C7893v6 c7893v6) {
        this.f35388a = c7893v6;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7874t9
    /* renamed from: b */
    public final void mo6004b(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.f35388a.m5917X("auto", "_err", bundle);
            return;
        }
        C7893v6 c7893v6 = this.f35388a;
        C7858s4.m6012s();
        c7893v6.m5913b0("auto", "_err", c7893v6.f35460a.mo6007x().mo16807a(), bundle, false, true, false, str);
    }
}
