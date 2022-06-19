package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15017ah;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.google.android.play.core.assetpacks.cr */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cr.class */
public final class C14971cr implements AbstractC15041be<Executor> {

    /* renamed from: a */
    private final /* synthetic */ int f54644a = 0;

    public C14971cr() {
    }

    public C14971cr(byte[] bArr) {
    }

    public C14971cr(char[] cArr) {
    }

    public C14971cr(short[] sArr) {
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.concurrent.Executor, com.google.android.play.core.assetpacks.af] */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.android.play.core.assetpacks.ap, java.util.concurrent.Executor] */
    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ Executor mo9335a() {
        int i = this.f54644a;
        if (i == 0) {
            ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(ThreadFactoryC14963cj.f54630a);
            C15017ah.m9600a(newSingleThreadExecutor);
            return newSingleThreadExecutor;
        } else if (i != 1) {
            return i != 2 ? new C14915ap() : new C14905af();
        } else {
            ExecutorService newSingleThreadExecutor2 = Executors.newSingleThreadExecutor(ThreadFactoryC14963cj.f54631b);
            C15017ah.m9600a(newSingleThreadExecutor2);
            return newSingleThreadExecutor2;
        }
    }
}
