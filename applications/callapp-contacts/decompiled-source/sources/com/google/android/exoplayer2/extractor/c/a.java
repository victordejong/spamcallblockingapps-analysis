package com.google.android.exoplayer2.extractor.c;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.f.g;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/c/a.class */
public final class a implements h {

    /* renamed from: b  reason: collision with root package name */
    private j f20941b;

    /* renamed from: c  reason: collision with root package name */
    private int f20942c;

    /* renamed from: d  reason: collision with root package name */
    private int f20943d;
    private int e;
    private MotionPhotoMetadata g;
    private i h;
    private c i;
    private g j;

    /* renamed from: a  reason: collision with root package name */
    private final u f20940a = new u(6);
    private long f = -1;

    private void a() {
        a(new Metadata.Entry[0]);
        ((j) com.google.android.exoplayer2.util.a.b(this.f20941b)).a();
        this.f20941b.a(new v.b(-9223372036854775807L));
        this.f20942c = 6;
    }

    private void a(Metadata.Entry... entryArr) {
        x a2 = ((j) com.google.android.exoplayer2.util.a.b(this.f20941b)).a(1024, 4);
        Format.a aVar = new Format.a();
        aVar.i = new Metadata(entryArr);
        a2.a(aVar.a());
    }

    private int b(i iVar) throws IOException {
        this.f20940a.a(2);
        iVar.d(this.f20940a.f22335a, 0, 2);
        return this.f20940a.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0273  */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r19v11 */
    /* JADX WARN: Type inference failed for: r19v3, types: [long] */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1, types: [long] */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.exoplayer2.extractor.i r14, com.google.android.exoplayer2.extractor.u r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 791
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.c.a.a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        if (j == 0) {
            this.f20942c = 0;
            this.j = null;
        } else if (this.f20942c == 5) {
            ((g) com.google.android.exoplayer2.util.a.b(this.j)).a(j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.f20941b = jVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        if (b(iVar) != 65496) {
            return false;
        }
        int b2 = b(iVar);
        this.f20943d = b2;
        if (b2 == 65504) {
            this.f20940a.a(2);
            iVar.d(this.f20940a.f22335a, 0, 2);
            iVar.c(this.f20940a.d() - 2);
            this.f20943d = b(iVar);
        }
        if (this.f20943d != 65505) {
            return false;
        }
        iVar.c(2);
        this.f20940a.a(6);
        iVar.d(this.f20940a.f22335a, 0, 6);
        return this.f20940a.h() == 1165519206 && this.f20940a.d() == 0;
    }
}
