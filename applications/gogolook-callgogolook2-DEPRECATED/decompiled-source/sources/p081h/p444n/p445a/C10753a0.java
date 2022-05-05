package p081h.p444n.p445a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import p081h.p444n.p445a.AbstractC10815z;
import p081h.p444n.p445a.C10798u;
/* renamed from: h.n.a.a0 */
/* loaded from: classes2-dex2jar.jar:h/n/a/a0.class */
public class C10753a0 extends AbstractC10815z {

    /* renamed from: a */
    public final Context f24527a;

    public C10753a0(Context context) {
        this.f24527a = context;
    }

    /* renamed from: a */
    public static Bitmap m10726a(Resources resources, int i, C10811x xVar) {
        BitmapFactory.Options b = AbstractC10815z.m10558b(xVar);
        if (AbstractC10815z.m10563a(b)) {
            BitmapFactory.decodeResource(resources, i, b);
            AbstractC10815z.m10564a(xVar.f24709h, xVar.f24710i, b, xVar);
        }
        return BitmapFactory.decodeResource(resources, i, b);
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public AbstractC10815z.C10816a mo10561a(C10811x xVar, int i) throws IOException {
        Resources a = C10770e0.m10679a(this.f24527a, xVar);
        return new AbstractC10815z.C10816a(m10726a(a, C10770e0.m10677a(a, xVar), xVar), C10798u.EnumC10804e.DISK);
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public boolean mo10562a(C10811x xVar) {
        if (xVar.f24706e != 0) {
            return true;
        }
        return "android.resource".equals(xVar.f24705d.getScheme());
    }
}
