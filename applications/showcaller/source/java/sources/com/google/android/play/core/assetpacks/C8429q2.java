package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC8515s0;
import com.google.android.play.core.internal.C8480d0;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.google.android.play.core.assetpacks.q2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/q2.class */
public final class C8429q2 implements AbstractC8515s0<Executor> {

    /* renamed from: a */
    private final /* synthetic */ int f37897a = 0;

    public C8429q2() {
    }

    public C8429q2(byte[] bArr) {
    }

    public C8429q2(char[] cArr) {
    }

    public C8429q2(short[] sArr) {
    }

    /* renamed from: b */
    public static Executor m3689b() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(ThreadFactoryC8393h2.f37780a);
        C8480d0.m3541k(newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }

    /* renamed from: c */
    public static Executor m3688c() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(ThreadFactoryC8393h2.f37781b);
        C8480d0.m3541k(newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }

    /* renamed from: d */
    public static C8379e0 m3687d() {
        return new C8379e0();
    }

    /* renamed from: e */
    public static C8415n0 m3686e() {
        return new C8415n0();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.concurrent.Executor, com.google.android.play.core.assetpacks.e0] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.concurrent.Executor, com.google.android.play.core.assetpacks.n0] */
    @Override // com.google.android.play.core.internal.AbstractC8515s0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Executor mo3471a() {
        int i = this.f37897a;
        return i != 0 ? i != 1 ? i != 2 ? m3686e() : m3687d() : m3688c() : m3689b();
    }
}
