package p131c.p431l.p432a.p468n;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.netqin.p525cm.main.p529ui.NqApplication;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p352w.C6070g;
import p131c.p161d.p282e.p352w.C6072i;
/* renamed from: c.l.a.n.o */
/* loaded from: classes-dex2jar.jar:c/l/a/n/o.class */
public class C6856o {

    /* renamed from: c.l.a.n.o$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/n/o$a.class */
    public static final class C6857a implements OnCompleteListener<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ C6070g f21048a;

        public C6857a(C6070g gVar) {
            this.f21048a = gVar;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        /* renamed from: a */
        public void mo8619a(Task<Boolean> task) {
            if (task.mo8601e()) {
                boolean a = this.f21048a.m22142a("OpenAdsMethod");
                C6854m.m19556b("OpenAdsMethod", Boolean.valueOf(a));
                StringBuilder sb = new StringBuilder();
                sb.append("SPLASHAD_TYPE");
                String str = "true";
                sb.append(a ? "true" : "false");
                C6850i.m19579a("RemoteConfigmanager", sb.toString());
                boolean a2 = this.f21048a.m22142a("ShowOpenAds");
                C6854m.m19556b("ShowOpenAds", Boolean.valueOf(a2));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showSplashAd");
                if (!a2) {
                    str = "false";
                }
                sb2.append(str);
                C6850i.m19579a("RemoteConfigmanager", sb2.toString());
                String b = this.f21048a.m22138b("AdmobOpenAds");
                C6854m.m19556b("AdmobOpenAds", b);
                C6850i.m19579a("RemoteConfigmanager", "admobOpenAds" + b);
            }
        }
    }

    /* renamed from: a */
    public static void m19552a() {
        if (!C5128c.m24477a(NqApplication.m3303b()).isEmpty()) {
            try {
                Class.forName("c.d.e.w.g");
                C6070g g = C6070g.m22132g();
                C6072i.C6074b bVar = new C6072i.C6074b();
                bVar.m22126b(3600L);
                g.m22147a(bVar.m22129a());
                g.m22153a(2131755010);
                g.m22136c().mo8615a(new C6857a(g));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
