package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.ah;
import com.google.android.play.core.internal.be;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cr.class */
public final class cr implements be<Executor> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f31259a = 0;

    public cr() {
    }

    public cr(byte[] bArr) {
    }

    public cr(char[] cArr) {
    }

    public cr(short[] sArr) {
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.concurrent.Executor, com.google.android.play.core.assetpacks.af] */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.android.play.core.assetpacks.ap, java.util.concurrent.Executor] */
    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ Executor a() {
        int i = this.f31259a;
        if (i == 0) {
            ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(cj.f31245a);
            ah.a(newSingleThreadExecutor);
            return newSingleThreadExecutor;
        } else if (i != 1) {
            return i != 2 ? new ap() : new af();
        } else {
            ExecutorService newSingleThreadExecutor2 = Executors.newSingleThreadExecutor(cj.f31246b);
            ah.a(newSingleThreadExecutor2);
            return newSingleThreadExecutor2;
        }
    }
}
