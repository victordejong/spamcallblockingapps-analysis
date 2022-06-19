package com.google.android.gms.common;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.d0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/d0.class */
final class C6089d0 extends C6095e0 {

    /* renamed from: e */
    private final Callable<String> f19388e;

    public /* synthetic */ C6089d0(Callable callable, C6087c0 c6087c0) {
        super(false, null, null);
        this.f19388e = callable;
    }

    @Override // com.google.android.gms.common.C6095e0
    /* renamed from: a */
    final String mo17198a() {
        try {
            return this.f19388e.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
