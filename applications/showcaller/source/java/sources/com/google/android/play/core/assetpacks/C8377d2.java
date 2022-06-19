package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.AbstractC8570b;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.d2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/d2.class */
final /* synthetic */ class C8377d2 implements AbstractC8570b {

    /* renamed from: a */
    private final C8446v f37699a;

    private C8377d2(C8446v c8446v) {
        this.f37699a = c8446v;
    }

    /* renamed from: a */
    public static AbstractC8570b m3761a(C8446v c8446v) {
        return new C8377d2(c8446v);
    }

    @Override // com.google.android.play.core.tasks.AbstractC8570b
    public final void onSuccess(Object obj) {
        this.f37699a.m3661a((List) obj);
    }
}
