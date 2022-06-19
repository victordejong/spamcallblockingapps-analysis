package com.google.android.gms.common;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/y.class */
final class C2729y extends C2727w {

    /* renamed from: b */
    private final Callable<String> f7546b;

    /* JADX INFO: Access modifiers changed from: private */
    public C2729y(Callable<String> callable) {
        super(false, null, null);
        this.f7546b = callable;
    }

    @Override // com.google.android.gms.common.C2727w
    /* renamed from: b */
    final String mo13798b() {
        try {
            return this.f7546b.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
