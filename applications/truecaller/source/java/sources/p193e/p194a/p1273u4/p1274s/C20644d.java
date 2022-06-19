package p193e.p194a.p1273u4.p1274s;

import com.google.android.gms.vision.Tracker;
import com.google.android.gms.vision.barcode.Barcode;
import s1.z.c.l;
/* renamed from: e.a.u4.s.d */
/* loaded from: classes12-dex2jar.jar:e/a/u4/s/d.class */
public final class C20644d extends Tracker<Barcode> {

    /* renamed from: a */
    public final AbstractC20645a f58170a;

    /* renamed from: e.a.u4.s.d$a */
    /* loaded from: classes12-dex2jar.jar:e/a/u4/s/d$a.class */
    public interface AbstractC20645a {
        /* renamed from: A9 */
        void mo10886A9(Barcode barcode);
    }

    public C20644d(AbstractC20645a abstractC20645a) {
        l.e(abstractC20645a, "barcodeUpdateListener");
        this.f58170a = abstractC20645a;
    }

    @Override // com.google.android.gms.vision.Tracker
    /* renamed from: b */
    public void mo10887b(int i, Barcode barcode) {
        Barcode barcode2 = barcode;
        l.e(barcode2, "item");
        this.f58170a.mo10886A9(barcode2);
    }
}
