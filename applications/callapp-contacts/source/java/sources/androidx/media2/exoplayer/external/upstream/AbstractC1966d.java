package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.upstream.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/d.class */
public abstract class AbstractC1966d implements AbstractC1968f {

    /* renamed from: a */
    private final boolean f7938a;

    /* renamed from: b */
    private final ArrayList<AbstractC1990w> f7939b = new ArrayList<>(1);

    /* renamed from: c */
    private int f7940c;

    /* renamed from: d */
    private C1971h f7941d;

    public AbstractC1966d(boolean z) {
        this.f7938a = z;
    }

    /* renamed from: a */
    public final void m41743a(int i) {
        C1996ac.m41659a(this.f7941d);
        for (int i2 = 0; i2 < this.f7940c; i2++) {
            this.f7939b.get(i2).mo41694a(this.f7938a, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final void mo41697a(AbstractC1990w abstractC1990w) {
        if (!this.f7939b.contains(abstractC1990w)) {
            this.f7939b.add(abstractC1990w);
            this.f7940c++;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: b */
    public Map mo41696b() {
        return Collections.emptyMap();
    }

    /* renamed from: b */
    public final void m41742b(C1971h c1971h) {
        this.f7941d = c1971h;
        for (int i = 0; i < this.f7940c; i++) {
            this.f7939b.get(i).mo41695a(this.f7938a);
        }
    }

    /* renamed from: d */
    public final void m41741d() {
        for (int i = 0; i < this.f7940c; i++) {
            this.f7939b.get(i);
        }
    }

    /* renamed from: e */
    public final void m41740e() {
        C1996ac.m41659a(this.f7941d);
        for (int i = 0; i < this.f7940c; i++) {
            this.f7939b.get(i).mo41693b(this.f7938a);
        }
        this.f7941d = null;
    }
}
