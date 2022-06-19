package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.decoder.AbstractC10936f;
/* renamed from: com.google.android.exoplayer2.text.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/d.class */
final class C11374d extends AbstractC11405i {

    /* renamed from: d */
    private final AbstractC10936f.AbstractC10937a<AbstractC11405i> f37517d;

    public C11374d(AbstractC10936f.AbstractC10937a<AbstractC11405i> abstractC10937a) {
        this.f37517d = abstractC10937a;
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10936f
    /* renamed from: f */
    public final void mo19678f() {
        this.f37517d.releaseOutputBuffer(this);
    }
}
