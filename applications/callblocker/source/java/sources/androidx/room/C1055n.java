package androidx.room;

import androidx.p042i.p043a.AbstractC0750c;
import java.io.File;
/* renamed from: androidx.room.n */
/* loaded from: classes-dex2jar.jar:androidx/room/n.class */
class C1055n implements AbstractC0750c.AbstractC0754c {

    /* renamed from: a */
    private final String f3587a;

    /* renamed from: b */
    private final File f3588b;

    /* renamed from: c */
    private final AbstractC0750c.AbstractC0754c f3589c;

    public C1055n(String str, File file, AbstractC0750c.AbstractC0754c abstractC0754c) {
        this.f3587a = str;
        this.f3588b = file;
        this.f3589c = abstractC0754c;
    }

    @Override // androidx.p042i.p043a.AbstractC0750c.AbstractC0754c
    /* renamed from: a */
    public AbstractC0750c mo17900a(AbstractC0750c.C0752b c0752b) {
        return new C1054m(c0752b.f2654a, this.f3587a, this.f3588b, c0752b.f2656c.f2653a, this.f3589c.mo17900a(c0752b));
    }
}
