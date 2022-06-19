package p193e.p1577m.p1578a.p1596c.p1602g1;

import java.lang.reflect.Constructor;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1603a0.C24299d;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0.C24310d;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24324d;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24328f;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.C24342c;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24354a;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24357b0;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24360c;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24368e;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24391u;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24400a;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1609x.C24428a;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1610y.C24433c;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.C24435b;
/* renamed from: e.m.a.c.g1.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/f.class */
public final class C24399f implements AbstractC24410j {

    /* renamed from: a */
    public static final Constructor<? extends AbstractC24408h> f68054a;

    static {
        Constructor<? extends AbstractC24408h> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(AbstractC24408h.class).getConstructor(new Class[0]);
            }
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f68054a = constructor;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24410j
    /* renamed from: a */
    public AbstractC24408h[] mo5156a() {
        AbstractC24408h[] abstractC24408hArr;
        synchronized (this) {
            abstractC24408hArr = new AbstractC24408h[14];
            abstractC24408hArr[0] = new C24299d(0);
            abstractC24408hArr[1] = new C24324d(0);
            abstractC24408hArr[2] = new C24328f(0);
            abstractC24408hArr[3] = new C24310d(0);
            abstractC24408hArr[4] = new C24368e(0);
            abstractC24408hArr[5] = new C24354a();
            abstractC24408hArr[6] = new C24357b0(1, 0);
            abstractC24408hArr[7] = new C24435b();
            abstractC24408hArr[8] = new C24342c();
            abstractC24408hArr[9] = new C24391u();
            abstractC24408hArr[10] = new C24400a();
            abstractC24408hArr[11] = new C24428a(0);
            abstractC24408hArr[12] = new C24360c();
            Constructor<? extends AbstractC24408h> constructor = f68054a;
            if (constructor != null) {
                try {
                    abstractC24408hArr[13] = constructor.newInstance(new Object[0]);
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            } else {
                abstractC24408hArr[13] = new C24433c();
            }
        }
        return abstractC24408hArr;
    }
}
