package p459j.p460a.p564s;

import android.content.Context;
import android.content.Intent;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.developmode.DevelopModeDialogActivity;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.receiver.DeepLinkActivity;
import java.util.ArrayList;
import java.util.Locale;
import p081h.p160h.p161a.p165k.C6224b;
import p081h.p160h.p172b.p173a.C6298e;
import p081h.p160h.p174c.AbstractC6305b;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p554q.p558f.C13376a;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.s.c0 */
/* loaded from: classes2-dex2jar.jar:j/a/s/c0.class */
public class C13425c0 extends AbstractC6305b {

    /* renamed from: i */
    public static C13425c0 f30173i;

    public C13425c0(Context context) {
        super(context);
        m23324a(R$drawable.notification_icon);
        m23323a("event_viewer", "Show Event Viewer");
        m23323a("debug_mode", "Debug Mode");
        m23323a("debug_ui", "Debug UI");
        m23323a("show_ad_log", "Show Ad Log");
        m23323a("debug_core", "Debug Core Module");
    }

    /* renamed from: i */
    public static C13425c0 m4045i() {
        if (f30173i == null) {
            f30173i = new C13425c0(MyApplication.m29013o());
        }
        return f30173i;
    }

    @Override // p081h.p160h.p174c.AbstractC6305b
    /* renamed from: a */
    public void mo4049a(String str) {
        super.mo4049a(str);
        if (str.equalsIgnoreCase("event_viewer")) {
            if (!C13604z.m3839j()) {
                C13604z.m3840i();
            }
            if (C13604z.m3841h().m3846d()) {
                C13604z.m3841h().m3856a();
            } else {
                C13604z.m3841h().m3842g();
            }
        } else {
            if (str.equalsIgnoreCase("debug_mode")) {
                Context context = this.f15622b;
                C14217x3.m2156c(context, DevelopModeDialogActivity.m28589a(context, false));
            } else if (str.equalsIgnoreCase("debug_ui")) {
                Intent intent = new Intent(this.f15622b, DeepLinkActivity.class);
                intent.putExtra("debugui", true);
                intent.setFlags(268435456);
                this.f15622b.startActivity(intent);
            } else if (str.equalsIgnoreCase("show_ad_log")) {
                if (C6224b.m23523d()) {
                    C6224b.m23525c();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (AdUnit adUnit : AdUnit.values()) {
                    arrayList.add(adUnit.m28821a());
                }
                arrayList.add("MoPub_SDK");
                C6224b.m23535a(MyApplication.m29013o(), C6298e.m23356a(2010), arrayList);
            } else if (str.equalsIgnoreCase("debug_core")) {
                try {
                    C13376a.m4113a(this.f15622b, C13565v.f30468f);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // p081h.p160h.p174c.AbstractC6305b
    /* renamed from: c */
    public String mo4048c() {
        return (((C12378a.f27903h.equalsIgnoreCase("https://api.whoscall.com") ? "Product Server" : "Test Server") + " | ") + C14017g4.m2810n().toUpperCase(Locale.US)) + "\n" + MyApplication.m29013o().getString(R$string.build_version);
    }

    @Override // p081h.p160h.p174c.AbstractC6305b
    /* renamed from: d */
    public String mo4047d() {
        return "Whoscall Debug is Running";
    }

    @Override // p081h.p160h.p174c.AbstractC6305b
    /* renamed from: e */
    public void mo4046e() {
        m23324a(R$drawable.notification_icon);
        super.mo4046e();
    }
}
