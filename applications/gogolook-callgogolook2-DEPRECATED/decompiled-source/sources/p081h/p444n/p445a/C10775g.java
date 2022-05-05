package p081h.p444n.p445a;

import android.content.Context;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p081h.p444n.p445a.AbstractC10815z;
import p081h.p444n.p445a.C10798u;
import p645m.C15181l;
/* renamed from: h.n.a.g */
/* loaded from: classes2-dex2jar.jar:h/n/a/g.class */
public class C10775g extends AbstractC10815z {

    /* renamed from: a */
    public final Context f24595a;

    public C10775g(Context context) {
        this.f24595a = context;
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public AbstractC10815z.C10816a mo10561a(C10811x xVar, int i) throws IOException {
        return new AbstractC10815z.C10816a(C15181l.m325a(m10660c(xVar)), C10798u.EnumC10804e.DISK);
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public boolean mo10562a(C10811x xVar) {
        return "content".equals(xVar.f24705d.getScheme());
    }

    /* renamed from: c */
    public InputStream m10660c(C10811x xVar) throws FileNotFoundException {
        return this.f24595a.getContentResolver().openInputStream(xVar.f24705d);
    }
}
