package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.decoder.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/d.class */
final class d extends i {

    /* renamed from: d  reason: collision with root package name */
    private final f.a<i> f21787d;

    public d(f.a<i> aVar) {
        this.f21787d = aVar;
    }

    @Override // com.google.android.exoplayer2.decoder.f
    public final void f() {
        this.f21787d.releaseOutputBuffer(this);
    }
}
