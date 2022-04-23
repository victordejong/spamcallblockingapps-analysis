package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.extractor.b.d;
import androidx.media2.exoplayer.external.extractor.c.c;
import androidx.media2.exoplayer.external.extractor.e.a;
import androidx.media2.exoplayer.external.extractor.e.af;
import androidx.media2.exoplayer.external.extractor.e.g;
import androidx.media2.exoplayer.external.extractor.e.x;
import androidx.media2.exoplayer.external.extractor.flv.b;
import androidx.media2.exoplayer.external.extractor.mp4.h;
import java.lang.reflect.Constructor;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e.class */
public final class e implements j {

    /* renamed from: a  reason: collision with root package name */
    private static final Constructor<? extends g> f3137a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3138b;

    /* renamed from: c  reason: collision with root package name */
    private int f3139c;

    /* renamed from: d  reason: collision with root package name */
    private int f3140d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i = 1;
    private int j;

    static {
        Constructor<? extends g> constructor;
        try {
            constructor = Class.forName("androidx.media2.exoplayer.external.ext.flac.FlacExtractor").asSubclass(g.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f3137a = constructor;
    }

    public final e a() {
        synchronized (this) {
            this.f3139c = 1;
        }
        return this;
    }

    @Override // androidx.media2.exoplayer.external.extractor.j
    public final g[] b() {
        g[] gVarArr;
        synchronized (this) {
            Constructor<? extends g> constructor = f3137a;
            gVarArr = new g[constructor == null ? 13 : 14];
            gVarArr[0] = new d(this.e);
            int i = 1;
            gVarArr[1] = new androidx.media2.exoplayer.external.extractor.mp4.e(this.g);
            gVarArr[2] = new h(this.f);
            gVarArr[3] = new c(this.h | (this.f3138b ? 1 : 0));
            gVarArr[4] = new g(this.f3139c | (this.f3138b ? 1 : 0));
            gVarArr[5] = new a();
            gVarArr[6] = new af(this.i, this.j);
            gVarArr[7] = new b();
            gVarArr[8] = new androidx.media2.exoplayer.external.extractor.d.c();
            gVarArr[9] = new x();
            gVarArr[10] = new androidx.media2.exoplayer.external.extractor.f.a();
            int i2 = this.f3140d;
            if (!this.f3138b) {
                i = 0;
            }
            gVarArr[11] = new androidx.media2.exoplayer.external.extractor.a.a(i | i2);
            gVarArr[12] = new androidx.media2.exoplayer.external.extractor.e.d();
            if (constructor != null) {
                try {
                    gVarArr[13] = (g) constructor.newInstance(new Object[0]);
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            }
        }
        return gVarArr;
    }
}
