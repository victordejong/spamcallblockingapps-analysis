package p081h.p444n.p445a;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.IOException;
import p081h.p444n.p445a.AbstractC10815z;
import p081h.p444n.p445a.C10798u;
import p645m.C15181l;
/* renamed from: h.n.a.b */
/* loaded from: classes2-dex2jar.jar:h/n/a/b.class */
public class C10754b extends AbstractC10815z {

    /* renamed from: d */
    public static final int f24528d = 22;

    /* renamed from: a */
    public final Context f24529a;

    /* renamed from: b */
    public final Object f24530b = new Object();

    /* renamed from: c */
    public AssetManager f24531c;

    public C10754b(Context context) {
        this.f24529a = context;
    }

    /* renamed from: c */
    public static String m10725c(C10811x xVar) {
        return xVar.f24705d.toString().substring(f24528d);
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public AbstractC10815z.C10816a mo10561a(C10811x xVar, int i) throws IOException {
        if (this.f24531c == null) {
            synchronized (this.f24530b) {
                if (this.f24531c == null) {
                    this.f24531c = this.f24529a.getAssets();
                }
            }
        }
        return new AbstractC10815z.C10816a(C15181l.m325a(this.f24531c.open(m10725c(xVar))), C10798u.EnumC10804e.DISK);
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public boolean mo10562a(C10811x xVar) {
        Uri uri = xVar.f24705d;
        boolean z = false;
        if ("file".equals(uri.getScheme())) {
            z = false;
            if (!uri.getPathSegments().isEmpty()) {
                z = false;
                if ("android_asset".equals(uri.getPathSegments().get(0))) {
                    z = true;
                }
            }
        }
        return z;
    }
}
