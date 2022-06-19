package com.google.android.play.core.missingsplits;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import com.google.android.play.core.internal.C8466a;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.play.core.missingsplits.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/missingsplits/d.class */
public final class C8533d implements AbstractC8530a {

    /* renamed from: a */
    private static final C8466a f38098a = new C8466a("MissingSplitsManagerImpl");

    /* renamed from: b */
    private final Context f38099b;

    /* renamed from: c */
    private final Runtime f38100c;

    /* renamed from: d */
    private final C8532c f38101d;

    /* renamed from: e */
    private final AtomicReference<Boolean> f38102e;

    public C8533d(Context context, Runtime runtime, C8532c c8532c, AtomicReference<Boolean> atomicReference) {
        this.f38099b = context;
        this.f38100c = runtime;
        this.f38101d = c8532c;
        this.f38102e = atomicReference;
    }

    @TargetApi(21)
    /* renamed from: b */
    private final List<ActivityManager.AppTask> m3399b() {
        List<ActivityManager.AppTask> appTasks = ((ActivityManager) this.f38099b.getSystemService("activity")).getAppTasks();
        return appTasks != null ? appTasks : Collections.emptyList();
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x0197, code lost:
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0252 A[LOOP:3: B:85:0x0248->B:87:0x0252, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0266  */
    /* JADX WARN: Type inference failed for: r0v153, types: [java.util.Set] */
    @Override // com.google.android.play.core.missingsplits.AbstractC8530a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo3400a() {
        /*
            Method dump skipped, instructions count: 714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.missingsplits.C8533d.mo3400a():boolean");
    }
}
