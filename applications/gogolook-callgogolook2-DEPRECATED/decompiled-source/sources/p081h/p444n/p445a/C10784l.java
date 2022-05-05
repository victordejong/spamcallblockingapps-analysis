package p081h.p444n.p445a;

import android.content.Context;
import android.net.Uri;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import p081h.p444n.p445a.AbstractC10815z;
import p081h.p444n.p445a.C10798u;
import p645m.C15181l;
/* renamed from: h.n.a.l */
/* loaded from: classes2-dex2jar.jar:h/n/a/l.class */
public class C10784l extends C10775g {
    public C10784l(Context context) {
        super(context);
    }

    /* renamed from: a */
    public static int m10633a(Uri uri) throws IOException {
        return new ExifInterface(uri.getPath()).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
    }

    @Override // p081h.p444n.p445a.C10775g, p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public AbstractC10815z.C10816a mo10561a(C10811x xVar, int i) throws IOException {
        return new AbstractC10815z.C10816a(null, C15181l.m325a(m10660c(xVar)), C10798u.EnumC10804e.DISK, m10633a(xVar.f24705d));
    }

    @Override // p081h.p444n.p445a.C10775g, p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public boolean mo10562a(C10811x xVar) {
        return "file".equals(xVar.f24705d.getScheme());
    }
}
