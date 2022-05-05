package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Locale;
import javax.net.ssl.HttpsURLConnection;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p235d.p249s.C7080l;
import p081h.p203i.p204a.p224e.p259j.p271l.C8075e2;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p204a.p224e.p259j.p271l.EnumC8223l4;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p081h.p203i.p325c.p373y.p374a.p377c.C10051e;
@WorkerThread
/* renamed from: h.i.c.y.a.b.a.h */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/h.class */
public final class C10024h {

    /* renamed from: a */
    public static final C6999k f22682a = new C6999k("RmModelInfoRetriever", "");

    @Nullable
    @WorkerThread
    /* renamed from: a */
    public static C10018e m13574a(@NonNull C8386u6 u6Var, @NonNull C10051e eVar, @NonNull C10023g0 g0Var) throws C10009a {
        C10018e a = eVar.m13521e() ? C10033p.m13561a(eVar, g0Var) : C10015c0.m13624a(u6Var, u6Var.m18148c(), eVar, g0Var);
        if (a != null) {
            g0Var.m13576a(EnumC8223l4.NO_ERROR, false, a.m13611c(), C8075e2.EnumC8077b.MODEL_INFO_RETRIEVAL_SUCCEEDED);
        }
        return a;
    }

    @Nullable
    /* renamed from: a */
    public static HttpsURLConnection m13573a(@Nullable String str, @NonNull C10023g0 g0Var) throws C10009a {
        String str2;
        if (str == null) {
            return null;
        }
        try {
            C10030m mVar = new C10030m(str);
            C6999k kVar = f22682a;
            String valueOf = String.valueOf(str);
            kVar.m21339a("RmModelInfoRetriever", valueOf.length() != 0 ? "Checking model URL: ".concat(valueOf) : new String("Checking model URL: "));
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) mVar.m13562a();
            httpsURLConnection.setConnectTimeout(2000);
            httpsURLConnection.connect();
            int responseCode = httpsURLConnection.getResponseCode();
            if (responseCode == 200 || responseCode == 304) {
                return httpsURLConnection;
            }
            g0Var.m13580a(responseCode == 408 ? EnumC8223l4.TIME_OUT_FETCHING_MODEL_METADATA : EnumC8223l4.MODEL_INFO_DOWNLOAD_UNSUCCESSFUL_HTTP_STATUS, httpsURLConnection.getResponseCode());
            InputStream errorStream = httpsURLConnection.getErrorStream();
            throw new C10009a(String.format(Locale.getDefault(), "Failed to connect to Firebase ML console server with HTTP status code: %d and error message: %s", Integer.valueOf(httpsURLConnection.getResponseCode()), errorStream == null ? "" : new String(C7080l.m21137a(errorStream))), 13);
        } catch (SocketTimeoutException e) {
            g0Var.m13581a(EnumC8223l4.TIME_OUT_FETCHING_MODEL_METADATA);
            throw new C10009a("Failed to get model URL due to time out", 13, e);
        } catch (IOException e2) {
            EnumC8223l4 l4Var = EnumC8223l4.MODEL_INFO_DOWNLOAD_CONNECTION_FAILED;
            if (e2 instanceof UnknownHostException) {
                l4Var = EnumC8223l4.NO_NETWORK_CONNECTION;
                str2 = "Failed to retrieve model info due to no internet connection.";
            } else {
                str2 = "Failed to get model URL";
            }
            g0Var.m13581a(l4Var);
            throw new C10009a(str2, 13, e2);
        }
    }
}
