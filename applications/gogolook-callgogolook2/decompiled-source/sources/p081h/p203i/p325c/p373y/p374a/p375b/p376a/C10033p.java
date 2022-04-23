package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import javax.net.ssl.HttpsURLConnection;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p259j.p271l.C8075e2;
import p081h.p203i.p204a.p224e.p259j.p271l.EnumC8223l4;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p081h.p203i.p325c.p373y.p374a.p377c.C10051e;
@WorkerThread
/* renamed from: h.i.c.y.a.b.a.p */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/p.class */
public final class C10033p {

    /* renamed from: a */
    public static final C6999k f22703a = new C6999k("BaseModelInfoRetriever", "");

    @Nullable
    /* renamed from: a */
    public static C10018e m13561a(@NonNull C10051e eVar, @NonNull C10023g0 g0Var) throws C10009a {
        HttpsURLConnection a = C10024h.m13573a(String.format("https://mlkit.googleapis.com/_i/v1/1p/m?n=%s", eVar.m13523c()), g0Var);
        if (a == null) {
            return null;
        }
        String headerField = a.getHeaderField("Content-Location");
        String headerField2 = a.getHeaderField("ETag");
        C6999k kVar = f22703a;
        String valueOf = String.valueOf(headerField);
        kVar.m21339a("BaseModelInfoRetriever", valueOf.length() != 0 ? "Received download URL: ".concat(valueOf) : new String("Received download URL: "));
        if (headerField == null) {
            return null;
        }
        if (headerField2 == null) {
            g0Var.m13576a(EnumC8223l4.MODEL_INFO_DOWNLOAD_NO_HASH, false, EnumC10040w.BASE, C8075e2.EnumC8077b.MODEL_INFO_RETRIEVAL_FAILED);
            throw new C10009a("No hash value for the base model", 13);
        } else if (eVar.m13526a(headerField2)) {
            eVar.m13524b(headerField2);
            return new C10018e(eVar.m13522d(), Uri.parse(headerField), headerField2, EnumC10040w.BASE);
        } else {
            throw new C10009a("Downloaded model hash doesn't match the expected. ", 13);
        }
    }
}
