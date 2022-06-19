package androidx.room;

import java.io.File;
import p020b.p070r.p071a.AbstractC1773c;
/* renamed from: androidx.room.m */
/* loaded from: classes-dex2jar.jar:androidx/room/m.class */
class C1026m implements AbstractC1773c.AbstractC1777c {

    /* renamed from: a */
    private final String f4524a;

    /* renamed from: b */
    private final File f4525b;

    /* renamed from: c */
    private final AbstractC1773c.AbstractC1777c f4526c;

    public C1026m(String str, File file, AbstractC1773c.AbstractC1777c abstractC1777c) {
        this.f4524a = str;
        this.f4525b = file;
        this.f4526c = abstractC1777c;
    }

    @Override // p020b.p070r.p071a.AbstractC1773c.AbstractC1777c
    /* renamed from: a */
    public AbstractC1773c mo28902a(AbstractC1773c.C1775b c1775b) {
        return new C1025l(c1775b.f6610a, this.f4524a, this.f4525b, c1775b.f6612c.f6609a, this.f4526c.mo28902a(c1775b));
    }
}
