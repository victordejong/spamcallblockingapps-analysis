package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C10985b;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.extractor.h.af */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/af.class */
public final class C11085af {

    /* renamed from: a */
    private final List<Format> f36124a;

    /* renamed from: b */
    private final AbstractC11150x[] f36125b;

    public C11085af(List<Format> list) {
        this.f36124a = list;
        this.f36125b = new AbstractC11150x[list.size()];
    }

    /* renamed from: a */
    public final void m21521a(long j, C11628u c11628u) {
        if (c11628u.m19812a() < 9) {
            return;
        }
        int m19792j = c11628u.m19792j();
        int m19792j2 = c11628u.m19792j();
        int m19804c = c11628u.m19804c();
        if (m19792j != 434 || m19792j2 != 1195456820 || m19804c != 3) {
            return;
        }
        C10985b.m21766b(j, c11628u, this.f36125b);
    }

    /* renamed from: a */
    public final void m21520a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        for (int i = 0; i < this.f36125b.length; i++) {
            c11083d.m21528a();
            AbstractC11150x mo20905a = abstractC11130j.mo20905a(c11083d.m21527b(), 3);
            Format format = this.f36124a.get(i);
            String str = format.sampleMimeType;
            C11593a.m20021a("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: ".concat(String.valueOf(str)));
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34782a = c11083d.m21526c();
            c10828a.f34792k = str;
            c10828a.f34785d = format.selectionFlags;
            c10828a.f34784c = format.language;
            c10828a.f34780C = format.accessibilityChannel;
            c10828a.f34794m = format.initializationData;
            mo20905a.mo20831a(c10828a.m22321a());
            this.f36125b[i] = mo20905a;
        }
    }
}
