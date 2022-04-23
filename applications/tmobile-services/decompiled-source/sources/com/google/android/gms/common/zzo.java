package com.google.android.gms.common;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzo.class */
final class zzo extends zzm {

    /* renamed from: e */
    private final Callable<String> f7688e;

    private zzo(Callable<String> callable) {
        super(false, null, null);
        this.f7688e = callable;
    }

    @Override // com.google.android.gms.common.zzm
    /* renamed from: a */
    final String mo14262a() {
        try {
            return this.f7688e.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
