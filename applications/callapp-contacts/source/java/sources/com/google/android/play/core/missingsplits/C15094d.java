package com.google.android.play.core.missingsplits;

import android.app.ActivityManager;
import android.content.Context;
import com.google.android.play.core.internal.C15072h;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.play.core.missingsplits.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/missingsplits/d.class */
public final class C15094d implements AbstractC15091a {

    /* renamed from: a */
    private static final C15072h f54819a = new C15072h("MissingSplitsManagerImpl");

    /* renamed from: b */
    private final Context f54820b;

    /* renamed from: c */
    private final Runtime f54821c;

    /* renamed from: d */
    private final C15093c f54822d;

    /* renamed from: e */
    private final AtomicReference<Boolean> f54823e;

    public C15094d(Context context, Runtime runtime, C15093c c15093c, AtomicReference<Boolean> atomicReference) {
        this.f54820b = context;
        this.f54821c = runtime;
        this.f54822d = c15093c;
        this.f54823e = atomicReference;
    }

    /* renamed from: b */
    private final List<ActivityManager.AppTask> m9469b() {
        List<ActivityManager.AppTask> appTasks = ((ActivityManager) this.f54820b.getSystemService("activity")).getAppTasks();
        return appTasks != null ? appTasks : Collections.emptyList();
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:0x0190, code lost:
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0265 A[LOOP:3: B:86:0x025b->B:88:0x0265, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x027a  */
    /* JADX WARN: Type inference failed for: r0v152, types: [java.util.Set] */
    @Override // com.google.android.play.core.missingsplits.AbstractC15091a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo9470a() {
        /*
            Method dump skipped, instructions count: 735
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.missingsplits.C15094d.mo9470a():boolean");
    }
}
