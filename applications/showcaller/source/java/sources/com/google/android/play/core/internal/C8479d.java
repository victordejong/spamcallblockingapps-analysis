package com.google.android.play.core.internal;

import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.internal.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/d.class */
public final class C8479d extends AbstractRunnableC8470b {

    /* renamed from: e */
    final /* synthetic */ AbstractRunnableC8470b f38031e;

    /* renamed from: f */
    final /* synthetic */ C8504n f38032f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8479d(C8504n c8504n, C8581m c8581m, AbstractRunnableC8470b abstractRunnableC8470b) {
        super(c8581m);
        this.f38032f = c8504n;
        this.f38031e = abstractRunnableC8470b;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC8470b
    /* renamed from: a */
    public final void mo3507a() {
        C8504n.m3502d(this.f38032f, this.f38031e);
    }
}
