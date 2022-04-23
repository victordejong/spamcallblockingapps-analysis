package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.splitcompat.a;
import com.google.android.play.core.splitcompat.d;
import com.google.android.play.core.splitcompat.q;
import com.google.android.play.core.splitinstall.s;
import com.google.android.play.core.splitinstall.u;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/t.class */
public final class t implements u {

    /* renamed from: a  reason: collision with root package name */
    final Context f31390a;

    /* renamed from: b  reason: collision with root package name */
    final v f31391b;

    /* renamed from: c  reason: collision with root package name */
    private final d f31392c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f31393d;
    private final q e;

    public t(Context context, Executor executor, v vVar, d dVar, q qVar) {
        this.f31390a = context;
        this.f31392c = dVar;
        this.f31391b = vVar;
        this.f31393d = executor;
        this.e = qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e8 A[Catch: Exception -> 0x01ee, TRY_ENTER, TryCatch #10 {Exception -> 0x01ee, blocks: (B:2:0x0000, B:72:0x01e8, B:4:0x0028, B:10:0x0042, B:12:0x004a, B:14:0x0052, B:16:0x0090, B:19:0x00a1, B:22:0x00aa, B:24:0x00b7, B:25:0x00c4, B:35:0x00f7, B:39:0x0119, B:41:0x011f, B:43:0x0121, B:45:0x012c, B:47:0x0136, B:49:0x0145, B:54:0x016c, B:58:0x018a, B:59:0x0195, B:61:0x01a1, B:69:0x01c3), top: B:90:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Integer a(java.util.List<android.content.Intent> r6) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.t.a(java.util.List):java.lang.Integer");
    }

    @Override // com.google.android.play.core.splitinstall.u
    public final void a(List<Intent> list, s sVar) {
        if (a.a()) {
            this.f31393d.execute(new s(this, list, sVar));
            return;
        }
        throw new IllegalStateException("Ingestion should only be called in SplitCompat mode.");
    }
}
