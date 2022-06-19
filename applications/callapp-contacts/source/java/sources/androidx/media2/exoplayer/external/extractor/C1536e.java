package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.extractor.flv.C1595b;
import androidx.media2.exoplayer.external.extractor.mp4.C1621e;
import androidx.media2.exoplayer.external.extractor.mp4.C1626h;
import androidx.media2.exoplayer.external.extractor.p064a.C1487a;
import androidx.media2.exoplayer.external.extractor.p065b.C1495d;
import androidx.media2.exoplayer.external.extractor.p066c.C1506c;
import androidx.media2.exoplayer.external.extractor.p067d.C1518c;
import androidx.media2.exoplayer.external.extractor.p068e.C1537a;
import androidx.media2.exoplayer.external.extractor.p068e.C1544af;
import androidx.media2.exoplayer.external.extractor.p068e.C1557d;
import androidx.media2.exoplayer.external.extractor.p068e.C1560g;
import androidx.media2.exoplayer.external.extractor.p068e.C1584x;
import androidx.media2.exoplayer.external.extractor.p069f.C1589a;
import java.lang.reflect.Constructor;
/* renamed from: androidx.media2.exoplayer.external.extractor.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e.class */
public final class C1536e implements AbstractC1602j {

    /* renamed from: a */
    private static final Constructor<? extends AbstractC1599g> f5921a;

    /* renamed from: b */
    private boolean f5922b;

    /* renamed from: c */
    private int f5923c;

    /* renamed from: d */
    private int f5924d;

    /* renamed from: e */
    private int f5925e;

    /* renamed from: f */
    private int f5926f;

    /* renamed from: g */
    private int f5927g;

    /* renamed from: h */
    private int f5928h;

    /* renamed from: i */
    private int f5929i = 1;

    /* renamed from: j */
    private int f5930j;

    static {
        Constructor<? extends AbstractC1599g> constructor;
        try {
            constructor = Class.forName("androidx.media2.exoplayer.external.ext.flac.FlacExtractor").asSubclass(AbstractC1599g.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f5921a = constructor;
    }

    /* renamed from: a */
    public final C1536e m42730a() {
        synchronized (this) {
            this.f5923c = 1;
        }
        return this;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1602j
    /* renamed from: b */
    public final AbstractC1599g[] mo42521b() {
        AbstractC1599g[] abstractC1599gArr;
        synchronized (this) {
            Constructor<? extends AbstractC1599g> constructor = f5921a;
            abstractC1599gArr = new AbstractC1599g[constructor == null ? 13 : 14];
            abstractC1599gArr[0] = new C1495d(this.f5925e);
            abstractC1599gArr[1] = new C1621e(this.f5927g);
            abstractC1599gArr[2] = new C1626h(this.f5926f);
            abstractC1599gArr[3] = new C1506c(this.f5928h | (this.f5922b ? 1 : 0));
            abstractC1599gArr[4] = new C1560g(this.f5923c | (this.f5922b ? 1 : 0));
            abstractC1599gArr[5] = new C1537a();
            abstractC1599gArr[6] = new C1544af(this.f5929i, this.f5930j);
            abstractC1599gArr[7] = new C1595b();
            abstractC1599gArr[8] = new C1518c();
            abstractC1599gArr[9] = new C1584x();
            abstractC1599gArr[10] = new C1589a();
            abstractC1599gArr[11] = new C1487a((this.f5922b ? 1 : 0) | this.f5924d);
            abstractC1599gArr[12] = new C1557d();
            if (constructor != null) {
                try {
                    abstractC1599gArr[13] = constructor.newInstance(new Object[0]);
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            }
        }
        return abstractC1599gArr;
    }
}
