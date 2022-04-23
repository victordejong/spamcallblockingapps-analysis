package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/t.class */
public final class t implements ad {

    /* renamed from: a  reason: collision with root package name */
    private final j f21261a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.t f21262b = new com.google.android.exoplayer2.util.t(new byte[10]);

    /* renamed from: c  reason: collision with root package name */
    private int f21263c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f21264d;
    private ad e;
    private boolean f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;
    private boolean k;
    private long l;

    public t(j jVar) {
        this.f21261a = jVar;
    }

    private void a(int i) {
        this.f21263c = i;
        this.f21264d = 0;
    }

    private boolean a(u uVar, byte[] bArr, int i) {
        int min = Math.min(uVar.a(), i - this.f21264d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            uVar.e(min);
        } else {
            uVar.a(bArr, this.f21264d, min);
        }
        int i2 = this.f21264d + min;
        this.f21264d = i2;
        return i2 == i;
    }

    @Override // com.google.android.exoplayer2.extractor.h.ad
    public final void a() {
        this.f21263c = 0;
        this.f21264d = 0;
        this.h = false;
        this.f21261a.a();
    }

    @Override // com.google.android.exoplayer2.extractor.h.ad
    public final void a(ad adVar, j jVar, ad.d dVar) {
        this.e = adVar;
        this.f21261a.a(jVar, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x010f -> B:42:0x0119). Please submit an issue!!! */
    @Override // com.google.android.exoplayer2.extractor.h.ad
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.exoplayer2.util.u r9, int r10) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.t.a(com.google.android.exoplayer2.util.u, int):void");
    }
}
