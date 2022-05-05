package p081h.p082a.p083a.p084l.p086c;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import p081h.p082a.p083a.p084l.C5358a;
/* renamed from: h.a.a.l.c.a */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/a.class */
public abstract class AbstractC5382a<K, A> {

    /* renamed from: c */
    public final List<? extends C5358a<K>> f13500c;
    @Nullable

    /* renamed from: e */
    public C5358a<K> f13502e;

    /* renamed from: a */
    public final List<AbstractC5383a> f13498a = new ArrayList();

    /* renamed from: b */
    public boolean f13499b = false;

    /* renamed from: d */
    public float f13501d = 0.0f;

    /* renamed from: h.a.a.l.c.a$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/l/c/a$a.class */
    public interface AbstractC5383a {
        /* renamed from: a */
        void mo25321a();
    }

    public AbstractC5382a(List<? extends C5358a<K>> list) {
        this.f13500c = list;
    }

    /* renamed from: a */
    public final C5358a<K> m25530a() {
        if (!this.f13500c.isEmpty()) {
            C5358a<K> aVar = this.f13502e;
            if (aVar != null && aVar.m25568a(this.f13501d)) {
                return this.f13502e;
            }
            C5358a<K> aVar2 = (C5358a) this.f13500c.get(0);
            C5358a<K> aVar3 = aVar2;
            if (this.f13501d < aVar2.m25566b()) {
                this.f13502e = aVar2;
                return aVar2;
            }
            for (int i = 0; !aVar3.m25568a(this.f13501d) && i < this.f13500c.size(); i++) {
                aVar3 = (C5358a) this.f13500c.get(i);
            }
            this.f13502e = aVar3;
            return aVar3;
        }
        throw new IllegalStateException("There are no keyframes");
    }

    /* renamed from: a */
    public abstract A mo25515a(C5358a<K> aVar, float f);

    /* renamed from: a */
    public void mo25518a(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        float f2;
        if (f < m25526e()) {
            f2 = 0.0f;
        } else {
            f2 = f;
            if (f > m25528c()) {
                f2 = 1.0f;
            }
        }
        if (f2 != this.f13501d) {
            this.f13501d = f2;
            for (int i = 0; i < this.f13498a.size(); i++) {
                this.f13498a.get(i).mo25321a();
            }
        }
    }

    /* renamed from: a */
    public void mo25517a(AbstractC5383a aVar) {
        this.f13498a.add(aVar);
    }

    /* renamed from: b */
    public final float m25529b() {
        if (this.f13499b) {
            return 0.0f;
        }
        C5358a<K> a = m25530a();
        if (a.m25565c()) {
            return 0.0f;
        }
        return a.f13379d.getInterpolation((this.f13501d - a.m25566b()) / (a.m25569a() - a.m25566b()));
    }

    @FloatRange(from = 0.0d, m37520to = 1.0d)
    /* renamed from: c */
    public final float m25528c() {
        float f;
        if (this.f13500c.isEmpty()) {
            f = 1.0f;
        } else {
            List<? extends C5358a<K>> list = this.f13500c;
            f = ((C5358a) list.get(list.size() - 1)).m25569a();
        }
        return f;
    }

    /* renamed from: d */
    public float m25527d() {
        return this.f13501d;
    }

    @FloatRange(from = 0.0d, m37520to = 1.0d)
    /* renamed from: e */
    public final float m25526e() {
        return this.f13500c.isEmpty() ? 0.0f : ((C5358a) this.f13500c.get(0)).m25566b();
    }

    /* renamed from: f */
    public A mo25516f() {
        return mo25515a(m25530a(), m25529b());
    }

    /* renamed from: g */
    public void m25525g() {
        this.f13499b = true;
    }
}
