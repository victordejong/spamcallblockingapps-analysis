package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.internal.ads.zzaop;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.annotation.ParametersAreNonnullByDefault;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
@ParametersAreNonnullByDefault
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.l0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/l0.class */
public final class C7306l0 implements AbstractC7330n0 {

    /* renamed from: d */
    public static final Object f17368d = new Object();

    /* renamed from: e */
    public static AbstractC7330n0 f17369e;

    /* renamed from: a */
    public final Context f17370a;

    /* renamed from: b */
    public final ExecutorService f17371b;

    /* renamed from: c */
    public final zzaop f17372c;

    public C7306l0(Context context) {
        this(context, zzaop.m31853c());
    }

    public C7306l0(Context context, zzaop zzaopVar) {
        new WeakHashMap();
        this.f17371b = Executors.newCachedThreadPool();
        this.f17370a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f17372c = zzaopVar;
    }

    /* renamed from: a */
    public static AbstractC7330n0 m20822a(Context context) {
        synchronized (f17368d) {
            if (f17369e == null) {
                if (((Boolean) C7430v3.m20636e().m20975a(C7223e7.f17323a)).booleanValue()) {
                    f17369e = new C7306l0(context);
                } else {
                    f17369e = new C7342o0();
                }
            }
        }
        return f17369e;
    }

    /* renamed from: a */
    public final Uri.Builder m20821a(String str, String str2, String str3, int i) {
        boolean z;
        String str4;
        try {
            z = C7097c.m21085b(this.f17370a).m21095a();
        } catch (Throwable th) {
            C7452x1.m20571b("Error fetching instant app info", th);
            z = false;
        }
        try {
            str4 = this.f17370a.getPackageName();
        } catch (Throwable th2) {
            C7452x1.m20568d("Cannot obtain package name, proceeding.");
            str4 = "unknown";
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        if (!str6.startsWith(str5)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 1 + String.valueOf(str6).length());
            sb.append(str5);
            sb.append(" ");
            sb.append(str6);
            str6 = sb.toString();
        }
        return appendQueryParameter.appendQueryParameter("device", str6).appendQueryParameter("js", this.f17372c.f6743a).appendQueryParameter(AppsFlyerProperties.APP_ID, str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", C7223e7.m20935a())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "215809645").appendQueryParameter("rc", "dev").appendQueryParameter("session_id", C7430v3.m20635f()).appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(C7430v3.m20636e().m20975a(C7223e7.f17328f)));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7330n0
    /* renamed from: a */
    public final void mo20781a(Throwable th, String str) {
        m20820a(th, str, 1.0f);
    }

    /* renamed from: a */
    public final void m20820a(Throwable th, String str, float f) {
        if (C7343o1.m20770a(th) != null) {
            String name = th.getClass().getName();
            StringWriter stringWriter = new StringWriter();
            C7368q2.m20736a(th, new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            int i = 0;
            int i2 = 1;
            boolean z = Math.random() < ((double) f);
            if (f > 0.0f) {
                i2 = (int) (1.0f / f);
            }
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(m20821a(name, stringWriter2, str, i2).toString());
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    this.f17371b.submit(new RunnableC7318m0(this, new C7179b2(), (String) obj));
                }
            }
        }
    }
}
