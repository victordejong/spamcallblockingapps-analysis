package androidx.work.impl;

import androidx.lifecycle.C0803m;
import androidx.work.AbstractC1408l;
import androidx.work.impl.utils.futures.C1382a;
/* renamed from: androidx.work.impl.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/c.class */
public class C1265c implements AbstractC1408l {

    /* renamed from: c */
    private final C0803m<AbstractC1408l.AbstractC1410b> f5374c = new C0803m<>();

    /* renamed from: d */
    private final C1382a<AbstractC1408l.AbstractC1410b.C1413c> f5375d = C1382a.m30184u();

    public C1265c() {
        m30449a(AbstractC1408l.f5746b);
    }

    /* renamed from: a */
    public void m30449a(AbstractC1408l.AbstractC1410b abstractC1410b) {
        this.f5374c.mo32373l(abstractC1410b);
        if (abstractC1410b instanceof AbstractC1408l.AbstractC1410b.C1413c) {
            this.f5375d.mo30187q((AbstractC1408l.AbstractC1410b.C1413c) abstractC1410b);
        } else if (!(abstractC1410b instanceof AbstractC1408l.AbstractC1410b.C1411a)) {
        } else {
            this.f5375d.mo30186r(((AbstractC1408l.AbstractC1410b.C1411a) abstractC1410b).m30150a());
        }
    }
}
