package p269w;

import java.util.ArrayList;
/* renamed from: w.m */
/* loaded from: classes-dex2jar.jar:w/m.class */
public class C4707m {

    /* renamed from: c */
    public static int f14543c;

    /* renamed from: a */
    public AbstractC4711p f14544a;

    /* renamed from: b */
    public ArrayList<AbstractC4711p> f14545b = new ArrayList<>();

    public C4707m(AbstractC4711p abstractC4711p, int i) {
        this.f14544a = null;
        f14543c++;
        this.f14544a = abstractC4711p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: a */
    public final long m568a(C4700f c4700f, long j) {
        char c;
        AbstractC4711p abstractC4711p = c4700f.f14529d;
        if (abstractC4711p instanceof C4705k) {
            return j;
        }
        int size = c4700f.f14536k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC4698d abstractC4698d = c4700f.f14536k.get(i);
            char c3 = c;
            if (abstractC4698d instanceof C4700f) {
                C4700f c4700f2 = (C4700f) abstractC4698d;
                c3 = c4700f2.f14529d == abstractC4711p ? c : Math.min((long) c, m568a(c4700f2, c4700f2.f14531f + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (c4700f == abstractC4711p.f14562i) {
            long mo552j = abstractC4711p.mo552j();
            C4700f c4700f3 = abstractC4711p.f14561h;
            long j2 = j - mo552j;
            c4 = Math.min(Math.min((long) c, m568a(c4700f3, j2)), j2 - abstractC4711p.f14561h.f14531f);
        }
        return c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: b */
    public final long m567b(C4700f c4700f, long j) {
        char c;
        AbstractC4711p abstractC4711p = c4700f.f14529d;
        if (abstractC4711p instanceof C4705k) {
            return j;
        }
        int size = c4700f.f14536k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC4698d abstractC4698d = c4700f.f14536k.get(i);
            char c3 = c;
            if (abstractC4698d instanceof C4700f) {
                C4700f c4700f2 = (C4700f) abstractC4698d;
                c3 = c4700f2.f14529d == abstractC4711p ? c : Math.max((long) c, m567b(c4700f2, c4700f2.f14531f + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (c4700f == abstractC4711p.f14561h) {
            long mo552j = abstractC4711p.mo552j();
            C4700f c4700f3 = abstractC4711p.f14562i;
            long j2 = j + mo552j;
            c4 = Math.max(Math.max((long) c, m567b(c4700f3, j2)), j2 - abstractC4711p.f14562i.f14531f);
        }
        return c4;
    }
}
