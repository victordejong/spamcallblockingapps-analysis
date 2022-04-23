package p081h.p119d.p120a.p124s.p131j.p133t;

import android.content.Context;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
import p081h.p119d.p120a.p124s.p125h.C5816f;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.C5902c;
import p081h.p119d.p120a.p124s.p131j.C5904d;
import p081h.p119d.p120a.p124s.p131j.C5915k;
/* renamed from: h.d.a.s.j.t.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/a.class */
public class C5934a implements AbstractC5940d<C5904d> {

    /* renamed from: a */
    public final C5915k<C5904d, C5904d> f14863a;

    /* renamed from: h.d.a.s.j.t.a$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/a$a.class */
    public static class C5935a implements AbstractC5919m<C5904d, InputStream> {

        /* renamed from: a */
        public final C5915k<C5904d, C5904d> f14864a = new C5915k<>(500);

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public AbstractC5918l<C5904d, InputStream> mo24128a(Context context, C5902c cVar) {
            return new C5934a(this.f14864a);
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public void mo24129a() {
        }
    }

    public C5934a(C5915k<C5904d, C5904d> kVar) {
        this.f14863a = kVar;
    }

    /* renamed from: a */
    public AbstractC5813c<InputStream> mo24060a(C5904d dVar, int i, int i2) {
        C5915k<C5904d, C5904d> kVar = this.f14863a;
        C5904d dVar2 = dVar;
        if (kVar != null) {
            dVar2 = kVar.m24144a(dVar, 0, 0);
            if (dVar2 == null) {
                this.f14863a.m24143a(dVar, 0, 0, dVar);
                dVar2 = dVar;
            }
        }
        return new C5816f(dVar2);
    }
}
