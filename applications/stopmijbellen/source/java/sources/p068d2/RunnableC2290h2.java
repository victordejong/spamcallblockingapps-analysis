package p068d2;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* renamed from: d2.h2 */
/* loaded from: classes-dex2jar.jar:d2/h2.class */
public class RunnableC2290h2 implements Runnable {

    /* renamed from: a */
    public HttpURLConnection f8210a;

    /* renamed from: b */
    public InputStream f8211b;

    /* renamed from: c */
    public C2410t0 f8212c;

    /* renamed from: d */
    public AbstractC2291a f8213d;

    /* renamed from: e */
    public String f8214e;

    /* renamed from: h */
    public Map<String, List<String>> f8217h;

    /* renamed from: m */
    public boolean f8222m;

    /* renamed from: n */
    public int f8223n;

    /* renamed from: o */
    public int f8224o;

    /* renamed from: f */
    public int f8215f = 0;

    /* renamed from: g */
    public boolean f8216g = false;

    /* renamed from: i */
    public String f8218i = "";

    /* renamed from: j */
    public String f8219j = "";

    /* renamed from: k */
    public String f8220k = "";

    /* renamed from: l */
    public String f8221l = "";

    /* renamed from: d2.h2$a */
    /* loaded from: classes-dex2jar.jar:d2/h2$a.class */
    public interface AbstractC2291a {
        /* renamed from: a */
        void mo3619a(RunnableC2290h2 runnableC2290h2, C2410t0 c2410t0, Map<String, List<String>> map);
    }

    public RunnableC2290h2(C2410t0 c2410t0, AbstractC2291a abstractC2291a) {
        this.f8212c = c2410t0;
        this.f8213d = abstractC2291a;
    }

    /* renamed from: b */
    public final boolean m3684b() throws IOException {
        C2267f4 c2267f4 = this.f8212c.f8537b;
        String m3697o = c2267f4.m3697o("content_type");
        String m3697o2 = c2267f4.m3697o(AppLovinEventTypes.USER_VIEWED_CONTENT);
        String m3697o3 = c2267f4.m3697o("user_agent");
        int m3752a = C2227e4.m3752a(c2267f4, "read_timeout", 60000);
        int m3752a2 = C2227e4.m3752a(c2267f4, "connect_timeout", 60000);
        boolean m3741l = C2227e4.m3741l(c2267f4, "no_redirect");
        this.f8220k = c2267f4.m3697o(ImagesContract.URL);
        this.f8218i = c2267f4.m3697o("filepath");
        StringBuilder sb = new StringBuilder();
        sb.append(C2408t.m3591d().m3732b().f8417d);
        String str = this.f8218i;
        sb.append(str.substring(str.lastIndexOf("/") + 1));
        this.f8219j = sb.toString();
        this.f8214e = c2267f4.m3697o("encoding");
        int m3752a3 = C2227e4.m3752a(c2267f4, "max_size", 0);
        this.f8215f = m3752a3;
        this.f8216g = m3752a3 != 0;
        this.f8223n = 0;
        this.f8211b = null;
        this.f8210a = null;
        this.f8217h = null;
        if (!this.f8220k.startsWith("file://")) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f8220k).openConnection();
            this.f8210a = httpURLConnection;
            httpURLConnection.setReadTimeout(m3752a);
            this.f8210a.setConnectTimeout(m3752a2);
            this.f8210a.setInstanceFollowRedirects(!m3741l);
            this.f8210a.setRequestProperty("Accept-Charset", "UTF-8");
            if (m3697o3 != null && !m3697o3.equals("")) {
                this.f8210a.setRequestProperty("User-Agent", m3697o3);
            }
            if (!m3697o.equals("")) {
                this.f8210a.setRequestProperty("Content-Type", m3697o);
            }
            if (this.f8212c.f8536a.equals("WebServices.post")) {
                this.f8210a.setDoOutput(true);
                this.f8210a.setFixedLengthStreamingMode(m3697o2.getBytes("UTF-8").length);
                new PrintStream(this.f8210a.getOutputStream()).print(m3697o2);
            }
        } else if (this.f8220k.startsWith("file:///android_asset/")) {
            Context context = C2408t.f8531a;
            if (context != null) {
                this.f8211b = context.getAssets().open(this.f8220k.substring(22));
            }
        } else {
            this.f8211b = new FileInputStream(this.f8220k.substring(7));
        }
        boolean z = true;
        if (this.f8210a == null) {
            z = this.f8211b != null;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x026a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3683c() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.RunnableC2290h2.m3683c():boolean");
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        this.f8222m = false;
        try {
            if (m3684b()) {
                m3683c();
                this.f8222m = true;
                if (this.f8212c.f8536a.equals("WebServices.post") && this.f8224o != 200) {
                    this.f8222m = false;
                }
            }
        } catch (MalformedURLException e) {
            StringBuilder m8752j = C0082b.m8752j("MalformedURLException: ");
            m8752j.append(e.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
            this.f8222m = true;
        } catch (IOException e2) {
            StringBuilder m8752j2 = C0082b.m8752j("Download of ");
            m8752j2.append(this.f8220k);
            m8752j2.append(" failed: ");
            m8752j2.append(e2.toString());
            C0082b.m8750l(0, 1, m8752j2.toString(), true);
            int i = this.f8224o;
            int i2 = i;
            if (i == 0) {
                i2 = 504;
            }
            this.f8224o = i2;
        } catch (IllegalStateException e3) {
            StringBuilder m8752j3 = C0082b.m8752j("okhttp error: ");
            m8752j3.append(e3.toString());
            C2408t.m3591d().m3718p().m3686e(0, 0, m8752j3.toString(), false);
            e3.printStackTrace();
            z = false;
        } catch (Exception e4) {
            StringBuilder m8752j4 = C0082b.m8752j("Exception: ");
            m8752j4.append(e4.toString());
            C2408t.m3591d().m3718p().m3686e(0, 0, m8752j4.toString(), false);
            e4.printStackTrace();
        } catch (OutOfMemoryError e5) {
            StringBuilder m8752j5 = C0082b.m8752j("Out of memory error - disabling AdColony. (");
            m8752j5.append(this.f8223n);
            m8752j5.append("/");
            m8752j5.append(this.f8215f);
            m8752j5.append("): " + this.f8220k);
            C2408t.m3591d().m3718p().m3686e(0, 0, m8752j5.toString(), false);
            C2408t.m3591d().f8065C = true;
        }
        z = true;
        if (z) {
            if (this.f8212c.f8536a.equals("WebServices.download")) {
                String str = this.f8219j;
                String str2 = this.f8218i;
                try {
                    String substring = str2.substring(0, str2.lastIndexOf("/") + 1);
                    if (!str2.equals("") && !substring.equals(C2408t.m3591d().m3732b().f8417d) && !new File(str).renameTo(new File(str2))) {
                        C2408t.m3591d().m3718p().m3686e(0, 1, "Moving of " + str + " failed.", true);
                    }
                } catch (Exception e6) {
                    StringBuilder m8752j6 = C0082b.m8752j("Exception: ");
                    m8752j6.append(e6.toString());
                    C2408t.m3591d().m3718p().m3686e(0, 0, m8752j6.toString(), false);
                    e6.printStackTrace();
                }
            }
            this.f8213d.mo3619a(this, this.f8212c, this.f8217h);
        }
    }
}
