package com.google.android.exoplayer2.text.b;

import com.google.android.exoplayer2.text.b.b;
import com.google.android.exoplayer2.text.c;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.u;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/a.class */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private final b f21737a;

    public a(List<byte[]> list) {
        super("DvbDecoder");
        u uVar = new u(list.get(0));
        this.f21737a = new b(uVar.d(), uVar.d());
    }

    @Override // com.google.android.exoplayer2.text.c
    public final e a(byte[] bArr, int i, boolean z) {
        if (z) {
            b.h hVar = this.f21737a.f21745a;
            hVar.f21774c.clear();
            hVar.f21775d.clear();
            hVar.e.clear();
            hVar.f.clear();
            hVar.g.clear();
            hVar.h = null;
            hVar.i = null;
        }
        return new c(this.f21737a.a(bArr, i));
    }
}
