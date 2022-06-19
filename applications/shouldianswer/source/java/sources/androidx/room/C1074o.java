package androidx.room;

import androidx.p042i.p043a.AbstractC0779c;
import java.io.File;
/* renamed from: androidx.room.o */
/* loaded from: classes-dex2jar.jar:androidx/room/o.class */
class C1074o implements AbstractC0779c.AbstractC0783c {

    /* renamed from: a */
    private final String f3377a;

    /* renamed from: b */
    private final File f3378b;

    /* renamed from: c */
    private final AbstractC0779c.AbstractC0783c f3379c;

    public C1074o(String str, File file, AbstractC0779c.AbstractC0783c abstractC0783c) {
        this.f3377a = str;
        this.f3378b = file;
        this.f3379c = abstractC0783c;
    }

    @Override // androidx.p042i.p043a.AbstractC0779c.AbstractC0783c
    /* renamed from: a */
    public AbstractC0779c mo4397a(AbstractC0779c.C0781b c0781b) {
        return new C1073n(c0781b.f2547a, this.f3377a, this.f3378b, c0781b.f2549c.f2546a, this.f3379c.mo4397a(c0781b));
    }
}
