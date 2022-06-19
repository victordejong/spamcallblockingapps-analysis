package p000;

import androidx.media2.exoplayer.external.source.TrackGroupArray;
import hp;
/* renamed from: bs */
/* loaded from: classes-dex2jar.jar:bs.class */
public abstract class AbstractC0256bs {

    /* renamed from: a */
    public AbstractC0257a f2000a;

    /* renamed from: b */
    public gs f2001b;

    /* renamed from: bs$a */
    /* loaded from: classes-dex2jar.jar:bs$a.class */
    public interface AbstractC0257a {
        void onTrackSelectionsInvalidated();
    }

    /* renamed from: a */
    public final gs m5595a() {
        gs gsVar = this.f2001b;
        it.e(gsVar);
        return gsVar;
    }

    /* renamed from: b */
    public final void m5594b(AbstractC0257a abstractC0257a, gs gsVar) {
        this.f2000a = abstractC0257a;
        this.f2001b = gsVar;
    }

    /* renamed from: c */
    public final void m5593c() {
        AbstractC0257a abstractC0257a = this.f2000a;
        if (abstractC0257a != null) {
            abstractC0257a.onTrackSelectionsInvalidated();
        }
    }

    /* renamed from: d */
    public abstract void m5592d(Object obj);

    /* renamed from: e */
    public abstract C1259cs m5591e(kh[] khVarArr, TrackGroupArray trackGroupArray, hp.a aVar, ph phVar);
}
