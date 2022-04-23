package com.google.android.gms.common;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/z.class */
final class z extends aa {

    /* renamed from: d  reason: collision with root package name */
    private final Callable<String> f22957d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ z(Callable callable, y yVar) {
        super(false, null, null);
        this.f22957d = callable;
    }

    @Override // com.google.android.gms.common.aa
    final String a() {
        try {
            return this.f22957d.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
