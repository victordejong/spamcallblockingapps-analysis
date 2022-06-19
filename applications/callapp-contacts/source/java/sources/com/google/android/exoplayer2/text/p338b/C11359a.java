package com.google.android.exoplayer2.text.p338b;

import com.google.android.exoplayer2.text.AbstractC11370c;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.p338b.C11360b;
import com.google.android.exoplayer2.util.C11628u;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.b.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/a.class */
public final class C11359a extends AbstractC11370c {

    /* renamed from: a */
    private final C11360b f37444a;

    public C11359a(List<byte[]> list) {
        super("DvbDecoder");
        C11628u c11628u = new C11628u(list.get(0));
        this.f37444a = new C11360b(c11628u.m19802d(), c11628u.m19802d());
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11370c
    /* renamed from: a */
    public final AbstractC11379e mo20622a(byte[] bArr, int i, boolean z) {
        if (z) {
            C11360b.C11368h c11368h = this.f37444a.f37448a;
            c11368h.f37494c.clear();
            c11368h.f37495d.clear();
            c11368h.f37496e.clear();
            c11368h.f37497f.clear();
            c11368h.f37498g.clear();
            c11368h.f37499h = null;
            c11368h.f37500i = null;
        }
        return new C11369c(this.f37444a.m20736a(bArr, i));
    }
}
