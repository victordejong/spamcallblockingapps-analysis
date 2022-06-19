package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.splitcompat.C15105a;
import com.google.android.play.core.splitcompat.C15108d;
import com.google.android.play.core.splitcompat.C15121q;
import com.google.android.play.core.splitinstall.AbstractC15169s;
import com.google.android.play.core.splitinstall.AbstractC15171u;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.internal.t */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/t.class */
public final class C15084t implements AbstractC15171u {

    /* renamed from: a */
    final Context f54802a;

    /* renamed from: b */
    final C15086v f54803b;

    /* renamed from: c */
    private final C15108d f54804c;

    /* renamed from: d */
    private final Executor f54805d;

    /* renamed from: e */
    private final C15121q f54806e;

    public C15084t(Context context, Executor executor, C15086v c15086v, C15108d c15108d, C15121q c15121q) {
        this.f54802a = context;
        this.f54804c = c15108d;
        this.f54803b = c15086v;
        this.f54805d = executor;
        this.f54806e = c15121q;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x01e8 A[Catch: Exception -> 0x01ee, TRY_ENTER, TryCatch #10 {Exception -> 0x01ee, blocks: (B:2:0x0000, B:72:0x01e8, B:4:0x0028, B:10:0x0042, B:12:0x004a, B:14:0x0052, B:16:0x0090, B:19:0x00a1, B:22:0x00aa, B:24:0x00b7, B:25:0x00c4, B:35:0x00f7, B:39:0x0119, B:41:0x011f, B:43:0x0121, B:45:0x012c, B:47:0x0136, B:49:0x0145, B:54:0x016c, B:58:0x018a, B:59:0x0195, B:61:0x01a1, B:69:0x01c3), top: B:90:0x0000 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Integer m9489a(java.util.List<android.content.Intent> r6) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.C15084t.m9489a(java.util.List):java.lang.Integer");
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15171u
    /* renamed from: a */
    public final void mo9343a(List<Intent> list, AbstractC15169s abstractC15169s) {
        if (C15105a.m9461a()) {
            this.f54805d.execute(new RunnableC15083s(this, list, abstractC15169s));
            return;
        }
        throw new IllegalStateException("Ingestion should only be called in SplitCompat mode.");
    }
}
