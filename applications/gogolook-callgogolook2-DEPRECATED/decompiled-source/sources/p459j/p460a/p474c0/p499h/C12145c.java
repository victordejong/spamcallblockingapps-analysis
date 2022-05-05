package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import java.util.Locale;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p187n.AbstractC6391b;
import p081h.p160h.p179e.p180a.p187n.C6384a;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p582w0.C14081m3;
import p660rx.Single;
import p660rx.SingleSubscriber;
@Deprecated
/* renamed from: j.a.c0.h.c */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/c.class */
public class C12145c {

    /* renamed from: a */
    public static String f27279a;

    /* renamed from: b */
    public static long f27280b;

    /* renamed from: j.a.c0.h.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/c$a.class */
    public static final class C12146a implements Single.OnSubscribe<Object> {

        /* renamed from: a */
        public final /* synthetic */ String f27281a;

        /* renamed from: b */
        public final /* synthetic */ Context f27282b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC6391b f27283c;

        public C12146a(String str, Context context, AbstractC6391b bVar) {
            this.f27281a = str;
            this.f27282b = context;
            this.f27283c = bVar;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Object> singleSubscriber) {
            C6384a.m22869a(this.f27281a, C12145c.m7024a(this.f27282b), this.f27283c);
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: a */
    public static NumInfo m7023a(String str) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (!C6334a.m23211s().m23215o() || a == null) {
            return null;
        }
        return C6384a.m22871a(str, m7024a(a));
    }

    /* renamed from: a */
    public static String m7024a(Context context) {
        if (f27279a == null || System.currentTimeMillis() - f27280b > 120000) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            f27279a = (telephonyManager == null || telephonyManager.getNetworkCountryIso().length() <= 0) ? Locale.getDefault().getCountry() : telephonyManager.getNetworkCountryIso();
            f27280b = System.currentTimeMillis();
        }
        return f27279a;
    }

    /* renamed from: a */
    public static void m7022a(String str, AbstractC6391b bVar) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (C6334a.m23211s().m23215o() && a != null) {
            C14081m3.m2610a(new C12146a(str, a, bVar));
        }
    }

    /* renamed from: a */
    public static boolean m7025a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) AbstractC11516a.m9413n().mo9412a().getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }
}
