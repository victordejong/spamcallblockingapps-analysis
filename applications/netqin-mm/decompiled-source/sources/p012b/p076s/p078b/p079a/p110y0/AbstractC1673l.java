package p012b.p076s.p078b.p079a.p110y0;

import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import p012b.p076s.p078b.p079a.AbstractC1238i0;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1679c;
/* renamed from: b.s.b.a.y0.l */
/* loaded from: classes-dex2jar.jar:b/s/b/a/y0/l.class */
public abstract class AbstractC1673l {

    /* renamed from: a */
    public AbstractC1674a f6854a;

    /* renamed from: b */
    public AbstractC1679c f6855b;

    /* renamed from: b.s.b.a.y0.l$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/y0/l$a.class */
    public interface AbstractC1674a {
        /* renamed from: a */
        void mo32400a();
    }

    /* renamed from: a */
    public abstract C1675m mo32402a(AbstractC1238i0[] i0VarArr, TrackGroupArray trackGroupArray, AbstractC1634r.C1635a aVar, AbstractC1252n0 n0Var) throws ExoPlaybackException;

    /* renamed from: a */
    public final AbstractC1679c m32405a() {
        AbstractC1679c cVar = this.f6855b;
        C1160a.m34522a(cVar);
        return cVar;
    }

    /* renamed from: a */
    public final void m32404a(AbstractC1674a aVar, AbstractC1679c cVar) {
        this.f6854a = aVar;
        this.f6855b = cVar;
    }

    /* renamed from: a */
    public abstract void mo32403a(Object obj);

    /* renamed from: b */
    public final void m32401b() {
        AbstractC1674a aVar = this.f6854a;
        if (aVar != null) {
            aVar.mo32400a();
        }
    }
}
