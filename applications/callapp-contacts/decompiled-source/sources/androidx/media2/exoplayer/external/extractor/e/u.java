package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/u.class */
public final class u implements ah {

    /* renamed from: a  reason: collision with root package name */
    private final m f3262a;

    /* renamed from: b  reason: collision with root package name */
    private final o f3263b = new o(new byte[10]);

    /* renamed from: c  reason: collision with root package name */
    private int f3264c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f3265d;
    private z e;
    private boolean f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;
    private boolean k;
    private long l;

    public u(m mVar) {
        this.f3262a = mVar;
    }

    private void a(int i) {
        this.f3264c = i;
        this.f3265d = 0;
    }

    private boolean a(p pVar, byte[] bArr, int i) {
        int min = Math.min(pVar.b(), i - this.f3265d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            pVar.d(min);
        } else {
            pVar.a(bArr, this.f3265d, min);
        }
        int i2 = this.f3265d + min;
        this.f3265d = i2;
        return i2 == i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.ah
    public final void a() {
        this.f3264c = 0;
        this.f3265d = 0;
        this.h = false;
        this.f3262a.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0112 -> B:42:0x011c). Please submit an issue!!! */
    @Override // androidx.media2.exoplayer.external.extractor.e.ah
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.media2.exoplayer.external.util.p r9, int r10) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 902
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.e.u.a(androidx.media2.exoplayer.external.util.p, int):void");
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.ah
    public final void a(z zVar, i iVar, ah.d dVar) {
        this.e = zVar;
        this.f3262a.a(iVar, dVar);
    }
}
