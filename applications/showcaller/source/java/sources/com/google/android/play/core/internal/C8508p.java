package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.play.core.splitcompat.C8536a;
import com.google.android.play.core.splitcompat.C8539d;
import com.google.android.play.core.splitcompat.C8552q;
import com.google.android.play.core.splitinstall.AbstractC8557d;
import com.google.android.play.core.splitinstall.AbstractC8559f;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.internal.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/p.class */
public final class C8508p implements AbstractC8559f {

    /* renamed from: a */
    private final Context f38064a;

    /* renamed from: b */
    private final C8539d f38065b;

    /* renamed from: c */
    private final C8512r f38066c;

    /* renamed from: d */
    private final Executor f38067d;

    /* renamed from: e */
    private final C8552q f38068e;

    public C8508p(Context context, Executor executor, C8512r c8512r, C8539d c8539d, C8552q c8552q) {
        this.f38064a = context;
        this.f38065b = c8539d;
        this.f38066c = c8512r;
        this.f38067d = executor;
        this.f38068e = c8552q;
    }

    /* renamed from: c */
    public static /* synthetic */ void m3485c(C8508p c8508p, AbstractC8557d abstractC8557d) {
        try {
            if (!C8536a.m3397a(C8552q.m3355c(c8508p.f38064a))) {
                Log.e("SplitCompat", "Emulating splits failed.");
                abstractC8557d.mo3333c(-12);
                return;
            }
            Log.i("SplitCompat", "Splits installed.");
            abstractC8557d.mo3335a();
        } catch (Exception e) {
            Log.e("SplitCompat", "Error emulating splits.", e);
            abstractC8557d.mo3333c(-12);
        }
    }

    /* renamed from: d */
    public static /* synthetic */ void m3484d(C8508p c8508p, List list, AbstractC8557d abstractC8557d) {
        Integer m3483e = c8508p.m3483e(list);
        if (m3483e == null) {
            return;
        }
        if (m3483e.intValue() == 0) {
            abstractC8557d.mo3334b();
        } else {
            abstractC8557d.mo3333c(m3483e.intValue());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x01e0 A[Catch: Exception -> 0x01e6, TRY_ENTER, TryCatch #9 {Exception -> 0x01e6, blocks: (B:2:0x0000, B:75:0x01e0, B:4:0x0018, B:10:0x0032, B:12:0x0042, B:14:0x004a, B:16:0x0082, B:19:0x0093, B:22:0x009c, B:24:0x00a9, B:25:0x00b6, B:35:0x00e9, B:39:0x010b, B:41:0x0111, B:43:0x0114, B:45:0x011b, B:47:0x0126, B:49:0x0130, B:51:0x013f, B:52:0x0152, B:56:0x015f, B:57:0x016f, B:61:0x0182, B:62:0x018d, B:64:0x0199, B:72:0x01bb), top: B:85:0x0000 }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Integer m3483e(java.util.List<android.content.Intent> r6) {
        /*
            Method dump skipped, instructions count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.C8508p.m3483e(java.util.List):java.lang.Integer");
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8559f
    /* renamed from: a */
    public final void mo3342a(List<Intent> list, AbstractC8557d abstractC8557d) {
        if (C8536a.m3396b()) {
            this.f38067d.execute(new RunnableC8506o(this, list, abstractC8557d));
            return;
        }
        throw new IllegalStateException("Ingestion should only be called in SplitCompat mode.");
    }
}
