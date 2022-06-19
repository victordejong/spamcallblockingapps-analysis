package com.google.android.exoplayer2.text.p253m;

import com.google.android.exoplayer2.text.AbstractC5318c;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.util.C5536v;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.m.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/a.class */
public final class C5342a extends AbstractC5318c {

    /* renamed from: o */
    private final C5343b f17028o;

    public C5342a(List<byte[]> list) {
        super("DvbDecoder");
        C5536v c5536v = new C5536v(list.get(0));
        this.f17028o = new C5343b(c5536v.m18687F(), c5536v.m18687F());
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5318c
    /* renamed from: z */
    protected AbstractC5320e mo19377z(byte[] bArr, int i, boolean z) {
        if (z) {
            this.f17028o.m19555r();
        }
        return new C5352c(this.f17028o.m19571b(bArr, i));
    }
}
