package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C2662s;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.eh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/eh.class */
final class RunnableC4273eh implements Runnable {

    /* renamed from: a */
    private final AbstractC4274ei f18739a;

    /* renamed from: b */
    private final int f18740b;

    /* renamed from: c */
    private final Throwable f18741c;

    /* renamed from: d */
    private final byte[] f18742d;

    /* renamed from: e */
    private final String f18743e;

    /* renamed from: f */
    private final Map<String, List<String>> f18744f;

    /* JADX INFO: Access modifiers changed from: private */
    public RunnableC4273eh(String str, AbstractC4274ei abstractC4274ei, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        C2662s.m13981a(abstractC4274ei);
        this.f18739a = abstractC4274ei;
        this.f18740b = i;
        this.f18741c = th;
        this.f18742d = bArr;
        this.f18743e = str;
        this.f18744f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18739a.mo4182a(this.f18743e, this.f18740b, this.f18741c, this.f18742d, this.f18744f);
    }
}
