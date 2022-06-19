package p193e.p1411b.p1412a.p1424z;

import android.content.Context;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Set;
import java.util.zip.ZipInputStream;
import p193e.p1411b.p1412a.C21906c;
import p193e.p1411b.p1412a.C21913e;
import p193e.p1411b.p1412a.C21914f;
import p193e.p1411b.p1412a.C21942p;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.z.c */
/* loaded from: classes-dex2jar.jar:e/b/a/z/c.class */
public class C22015c {

    /* renamed from: a */
    public final Context f61208a;

    /* renamed from: b */
    public final String f61209b;

    /* renamed from: c */
    public final C22014b f61210c;

    public C22015c(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f61208a = applicationContext;
        this.f61209b = str;
        this.f61210c = new C22014b(applicationContext, str);
    }

    /* renamed from: a */
    public final C21942p m8830a() throws IOException {
        EnumC22013a enumC22013a;
        C21942p<C21913e> c21942p;
        Set<String> set = C21906c.f60801a;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f61209b).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        if (httpURLConnection.getErrorStream() == null && httpURLConnection.getResponseCode() == 200) {
            String contentType = httpURLConnection.getContentType();
            boolean z = true;
            int hashCode = contentType.hashCode();
            if (hashCode != -1248325150) {
                if (hashCode == -43840953 && contentType.equals("application/json")) {
                    z = true;
                }
            } else if (contentType.equals("application/zip")) {
                z = false;
            }
            if (z) {
                enumC22013a = EnumC22013a.JSON;
                c21942p = C21914f.m8902b(new FileInputStream(new File(this.f61210c.m8831b(httpURLConnection.getInputStream(), enumC22013a).getAbsolutePath())), this.f61209b);
            } else {
                enumC22013a = EnumC22013a.ZIP;
                c21942p = C21914f.m8899e(new ZipInputStream(new FileInputStream(this.f61210c.m8831b(httpURLConnection.getInputStream(), enumC22013a))), this.f61209b);
            }
            if (c21942p.f60927a != null) {
                C22014b c22014b = this.f61210c;
                File file = new File(c22014b.f61206a.getCacheDir(), C22014b.m8832a(c22014b.f61207b, enumC22013a, true));
                File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
                boolean renameTo = file.renameTo(file2);
                String str = "Copying temp file to real file (" + file2 + ")";
                if (!renameTo) {
                    StringBuilder m8728C = C22128a.m8728C("Unable to rename cache file ");
                    m8728C.append(file.getAbsolutePath());
                    m8728C.append(" to ");
                    m8728C.append(file2.getAbsolutePath());
                    m8728C.append(StringConstant.DOT);
                    C21906c.m8915b(m8728C.toString());
                }
            }
            C21913e c21913e = c21942p.f60927a;
            return c21942p;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                StringBuilder m8728C2 = C22128a.m8728C("Unable to fetch ");
                m8728C2.append(this.f61209b);
                m8728C2.append(". Failed with ");
                m8728C2.append(httpURLConnection.getResponseCode());
                m8728C2.append(StringConstant.NEW_LINE);
                m8728C2.append((Object) sb);
                return new C21942p((Throwable) new IllegalArgumentException(m8728C2.toString()));
            }
            sb.append(readLine);
            sb.append('\n');
        }
    }
}
