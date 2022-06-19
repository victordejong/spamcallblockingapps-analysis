package com.google.android.gms.common;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.z */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/z.class */
final class C12124z extends C11807aa {

    /* renamed from: d */
    private final Callable<String> f39647d;

    public /* synthetic */ C12124z(Callable callable, C12123y c12123y) {
        super(false, null, null);
        this.f39647d = callable;
    }

    @Override // com.google.android.gms.common.C11807aa
    /* renamed from: a */
    final String mo18997a() {
        try {
            return this.f39647d.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
