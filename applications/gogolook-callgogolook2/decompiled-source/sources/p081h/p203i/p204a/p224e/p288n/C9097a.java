package p081h.p203i.p204a.p224e.p288n;

import android.net.Uri;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p259j.p277r.C8803d;
import p081h.p203i.p204a.p224e.p259j.p277r.C8804e;
/* renamed from: h.i.a.e.n.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/n/a.class */
public final class C9097a {

    /* renamed from: a */
    public static final C6805a.C6817g<C8804e> f20784a = new C6805a.C6817g<>();

    /* renamed from: b */
    public static final C6805a.AbstractC6806a<C8804e, Object> f20785b = new C9106j();

    static {
        new C6805a("Phenotype.API", f20785b, f20784a);
        new C8803d();
    }

    /* renamed from: a */
    public static Uri m16084a(String str) {
        String valueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
