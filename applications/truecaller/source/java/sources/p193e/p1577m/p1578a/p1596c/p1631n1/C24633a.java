package p193e.p1577m.p1578a.p1596c.p1631n1;

import com.google.android.exoplayer2.source.TrackGroup;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24695f;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f;
/* renamed from: e.m.a.c.n1.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/n1/a.class */
public class C24633a extends AbstractC24638b {

    /* renamed from: f */
    public final AbstractC24635b f69007f;

    /* renamed from: g */
    public final AbstractC24776f f69008g;

    /* renamed from: e.m.a.c.n1.a$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/n1/a$b.class */
    public interface AbstractC24635b {
    }

    /* renamed from: e.m.a.c.n1.a$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/n1/a$c.class */
    public static final class C24636c implements AbstractC24635b {

        /* renamed from: a */
        public final AbstractC24695f f69009a;

        public C24636c(AbstractC24695f abstractC24695f, float f, long j) {
            this.f69009a = abstractC24695f;
        }
    }

    /* renamed from: e.m.a.c.n1.a$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/n1/a$d.class */
    public static class C24637d implements AbstractC24645f.AbstractC24647b {

        /* renamed from: a */
        public final AbstractC24776f f69010a = AbstractC24776f.f69443a;
    }

    public C24633a(TrackGroup trackGroup, int[] iArr, AbstractC24635b abstractC24635b, long j, long j2, long j3, float f, long j4, AbstractC24776f abstractC24776f, C24634a c24634a) {
        super(trackGroup, iArr);
        this.f69007f = abstractC24635b;
        this.f69008g = abstractC24776f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: j */
    public static void m4804j(long[][][] jArr, int i, long[][] jArr2, int[] iArr) {
        ?? r10 = 0;
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2][i][1] = jArr2[i2][iArr[i2]];
            r10 += jArr[i2][i][1];
        }
        for (long[][] jArr3 : jArr) {
            jArr3[i][0] = r10 == true ? 1 : 0;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24638b, p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: b */
    public void mo4801b() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: c */
    public int mo4800c() {
        return 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24638b, p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: i */
    public void mo4794i(float f) {
    }
}
