package p193e.p194a.p1273u4.p1274s;

import com.google.android.gms.vision.MultiProcessor$Factory;
import com.google.android.gms.vision.Tracker;
import com.google.android.gms.vision.barcode.Barcode;
import p193e.p194a.p1273u4.p1274s.C20644d;
import s1.z.c.l;
/* renamed from: e.a.u4.s.e */
/* loaded from: classes12-dex2jar.jar:e/a/u4/s/e.class */
public final class C20646e implements MultiProcessor$Factory<Barcode> {

    /* renamed from: a */
    public final C20644d.AbstractC20645a f58171a;

    public C20646e(C20644d.AbstractC20645a abstractC20645a) {
        l.e(abstractC20645a, "barcodeUpdateListener");
        this.f58171a = abstractC20645a;
    }

    @Override // com.google.android.gms.vision.MultiProcessor$Factory
    public Tracker<Barcode> create(Barcode barcode) {
        l.e(barcode, "barcode");
        return new C20644d(this.f58171a);
    }
}
