package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.b;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.u;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    private final List<Format> f21170a;

    /* renamed from: b  reason: collision with root package name */
    private final x[] f21171b;

    public af(List<Format> list) {
        this.f21170a = list;
        this.f21171b = new x[list.size()];
    }

    public final void a(long j, u uVar) {
        if (uVar.a() >= 9) {
            int j2 = uVar.j();
            int j3 = uVar.j();
            int c2 = uVar.c();
            if (j2 == 434 && j3 == 1195456820 && c2 == 3) {
                b.b(j, uVar, this.f21171b);
            }
        }
    }

    public final void a(j jVar, ad.d dVar) {
        for (int i = 0; i < this.f21171b.length; i++) {
            dVar.a();
            x a2 = jVar.a(dVar.b(), 3);
            Format format = this.f21170a.get(i);
            String str = format.sampleMimeType;
            a.a("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: ".concat(String.valueOf(str)));
            Format.a aVar = new Format.a();
            aVar.f20603a = dVar.c();
            aVar.k = str;
            aVar.f20606d = format.selectionFlags;
            aVar.f20605c = format.language;
            aVar.C = format.accessibilityChannel;
            aVar.m = format.initializationData;
            a2.a(aVar.a());
            this.f21171b[i] = a2;
        }
    }
}
