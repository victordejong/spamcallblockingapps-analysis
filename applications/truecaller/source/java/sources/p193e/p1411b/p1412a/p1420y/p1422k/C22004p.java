package p193e.p1411b.p1412a.p1420y.p1422k;

import android.graphics.Paint;
import e.b.a.w.b.r;
import e.b.a.y.j.a;
import e.b.a.y.j.b;
import e.b.a.y.j.d;
import java.util.List;
import p193e.p1411b.p1412a.C21922k;
import p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21953c;
/* renamed from: e.b.a.y.k.p */
/* loaded from: classes-dex2jar.jar:e/b/a/y/k/p.class */
public class C22004p implements AbstractC21987b {

    /* renamed from: a */
    public final String f61138a;

    /* renamed from: b */
    public final b f61139b;

    /* renamed from: c */
    public final List<b> f61140c;

    /* renamed from: d */
    public final a f61141d;

    /* renamed from: e */
    public final d f61142e;

    /* renamed from: f */
    public final b f61143f;

    /* renamed from: g */
    public final EnumC22005a f61144g;

    /* renamed from: h */
    public final EnumC22006b f61145h;

    /* renamed from: i */
    public final float f61146i;

    /* renamed from: j */
    public final boolean f61147j;

    /* renamed from: e.b.a.y.k.p$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/y/k/p$a.class */
    public enum EnumC22005a {
        BUTT,
        ROUND,
        UNKNOWN;

        /* renamed from: a */
        public Paint.Cap m8837a() {
            int ordinal = ordinal();
            return ordinal != 0 ? ordinal != 1 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }
    }

    /* renamed from: e.b.a.y.k.p$b */
    /* loaded from: classes-dex2jar.jar:e/b/a/y/k/p$b.class */
    public enum EnumC22006b {
        MITER,
        ROUND,
        BEVEL;

        /* renamed from: a */
        public Paint.Join m8836a() {
            int ordinal = ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    return Paint.Join.ROUND;
                }
                if (ordinal == 2) {
                    return Paint.Join.BEVEL;
                }
                return null;
            }
            return Paint.Join.MITER;
        }
    }

    public C22004p(String str, b bVar, List<b> list, a aVar, d dVar, b bVar2, EnumC22005a enumC22005a, EnumC22006b enumC22006b, float f, boolean z) {
        this.f61138a = str;
        this.f61139b = bVar;
        this.f61140c = list;
        this.f61141d = aVar;
        this.f61142e = dVar;
        this.f61143f = bVar2;
        this.f61144g = enumC22005a;
        this.f61145h = enumC22006b;
        this.f61146i = f;
        this.f61147j = z;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b
    /* renamed from: a */
    public AbstractC21953c mo8835a(C21922k c21922k, e.b.a.y.l.b bVar) {
        return new r(c21922k, bVar, this);
    }
}
