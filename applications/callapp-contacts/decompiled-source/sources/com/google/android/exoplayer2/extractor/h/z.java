package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.b;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.u;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private final List<Format> f21283a;

    /* renamed from: b  reason: collision with root package name */
    private final x[] f21284b;

    public z(List<Format> list) {
        this.f21283a = list;
        this.f21284b = new x[list.size()];
    }

    public final void a(long j, u uVar) {
        b.a(j, uVar, this.f21284b);
    }

    public final void a(j jVar, ad.d dVar) {
        for (int i = 0; i < this.f21284b.length; i++) {
            dVar.a();
            x a2 = jVar.a(dVar.b(), 3);
            Format format = this.f21283a.get(i);
            String str = format.sampleMimeType;
            a.a("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: ".concat(String.valueOf(str)));
            String c2 = format.id != null ? format.id : dVar.c();
            Format.a aVar = new Format.a();
            aVar.f20603a = c2;
            aVar.k = str;
            aVar.f20606d = format.selectionFlags;
            aVar.f20605c = format.language;
            aVar.C = format.accessibilityChannel;
            aVar.m = format.initializationData;
            a2.a(aVar.a());
            this.f21284b[i] = a2;
        }
    }
}
