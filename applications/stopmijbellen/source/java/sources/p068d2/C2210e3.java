package p068d2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Vibrator;
import android.support.p012v4.media.AbstractC0081a;
import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import com.adcolony.sdk.AdColonyAdViewActivity;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import p007a6.C0028d;
/* renamed from: d2.e3 */
/* loaded from: classes-dex2jar.jar:d2/e3.class */
public class C2210e3 {

    /* renamed from: d2.e3$a */
    /* loaded from: classes-dex2jar.jar:d2/e3$a.class */
    public class C2211a implements AbstractC2458y0 {
        public C2211a() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2210e3 c2210e3 = C2210e3.this;
            Objects.requireNonNull(c2210e3);
            C2267f4 c2267f4 = c2410t0.f8537b;
            C2329k0 m3722l = C2408t.m3591d().m3722l();
            String m3697o = c2267f4.m3697o("ad_session_id");
            C2387q c2387q = m3722l.f8330c.get(m3697o);
            C2319j c2319j = m3722l.f8333f.get(m3697o);
            if ((c2387q == null || c2387q.f8436a == null || c2387q.f8438c == null) && (c2319j == null || c2319j.getListener() == null)) {
                return;
            }
            if (c2319j == null) {
                new C2410t0("AdUnit.make_in_app_purchase", c2387q.f8438c.f8301k).m3586b();
            }
            c2210e3.m3757b(m3697o);
            c2210e3.m3756c(m3697o);
        }
    }

    /* renamed from: d2.e3$b */
    /* loaded from: classes-dex2jar.jar:d2/e3$b.class */
    public class C2212b implements AbstractC2458y0 {
        public C2212b() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            Objects.requireNonNull(C2210e3.this);
            String m3697o = c2410t0.f8537b.m3697o("ad_session_id");
            Context context = C2408t.f8531a;
            Context context2 = context instanceof Activity ? (Activity) context : null;
            boolean z = context2 instanceof AdColonyAdViewActivity;
            if (!(context2 instanceof ActivityC2429w)) {
                return;
            }
            if (z) {
                ((AdColonyAdViewActivity) context2).m7241f();
                return;
            }
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, m3697o);
            new C2410t0("AdSession.on_request_close", ((ActivityC2429w) context2).f8598c, c2267f4).m3586b();
        }
    }

    /* renamed from: d2.e3$c */
    /* loaded from: classes-dex2jar.jar:d2/e3$c.class */
    public class C2213c implements AbstractC2458y0 {
        public C2213c() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2210e3 c2210e3 = C2210e3.this;
            Objects.requireNonNull(c2210e3);
            C2267f4 c2267f4 = c2410t0.f8537b;
            Context context = C2408t.f8531a;
            if (context == null || !C2408t.m3589f()) {
                return;
            }
            String m3697o = c2267f4.m3697o("ad_session_id");
            C2230f1 m3591d = C2408t.m3591d();
            C2319j c2319j = m3591d.m3722l().f8333f.get(m3697o);
            if (c2319j == null) {
                return;
            }
            if ((!c2319j.getTrustedDemandSource() && !c2319j.f8282n) || m3591d.f8099n == c2319j) {
                return;
            }
            c2319j.setExpandMessage(c2410t0);
            c2319j.setExpandedWidth(C2227e4.m3735r(c2267f4, "width"));
            c2319j.setExpandedHeight(C2227e4.m3735r(c2267f4, "height"));
            c2319j.setOrientation(C2227e4.m3752a(c2267f4, "orientation", -1));
            c2319j.setNoCloseButton(C2227e4.m3741l(c2267f4, "use_custom_close"));
            m3591d.f8099n = c2319j;
            m3591d.f8097l = c2319j.getContainer();
            Intent intent = new Intent(context, AdColonyAdViewActivity.class);
            c2210e3.m3756c(m3697o);
            c2210e3.m3757b(m3697o);
            C2315i3.m3664g(intent);
        }
    }

    /* renamed from: d2.e3$d */
    /* loaded from: classes-dex2jar.jar:d2/e3$d.class */
    public class C2214d implements AbstractC2458y0 {
        public C2214d() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            Objects.requireNonNull(C2210e3.this);
            C2319j c2319j = C2408t.m3591d().m3722l().f8333f.get(c2410t0.f8537b.m3697o("ad_session_id"));
            if (c2319j == null) {
                return;
            }
            c2319j.setNoCloseButton(C2227e4.m3741l(c2410t0.f8537b, "use_custom_close"));
        }
    }

    /* renamed from: d2.e3$e */
    /* loaded from: classes-dex2jar.jar:d2/e3$e.class */
    public class C2215e implements AbstractC2458y0 {
        public C2215e() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            Objects.requireNonNull(C2210e3.this);
            C2267f4 c2267f4 = c2410t0.f8537b;
            String m3697o = c2267f4.m3697o("ad_session_id");
            int m3735r = C2227e4.m3735r(c2267f4, "orientation");
            C2329k0 m3722l = C2408t.m3591d().m3722l();
            C2319j c2319j = m3722l.f8333f.get(m3697o);
            C2387q c2387q = m3722l.f8330c.get(m3697o);
            Context context = C2408t.f8531a;
            if (c2319j != null) {
                c2319j.setOrientation(m3735r);
            } else if (c2387q != null) {
                c2387q.f8441f = m3735r;
            }
            if (c2387q == null && c2319j == null) {
                C0082b.m8750l(0, 0, C1676a.m4789h("Invalid ad session id sent with set orientation properties message: ", m3697o), true);
            } else if (!(context instanceof ActivityC2429w)) {
            } else {
                ((ActivityC2429w) context).m3562b(c2319j == null ? c2387q.f8441f : c2319j.getOrientation());
            }
        }
    }

    /* renamed from: d2.e3$f */
    /* loaded from: classes-dex2jar.jar:d2/e3$f.class */
    public class C2216f implements AbstractC2458y0 {
        public C2216f() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            Objects.requireNonNull(C2210e3.this);
            C2267f4 c2267f4 = c2410t0.f8537b;
            String m3697o = c2267f4.m3700l("clickOverride").m3697o(ImagesContract.URL);
            String m3697o2 = c2267f4.m3697o("ad_session_id");
            C2329k0 m3722l = C2408t.m3591d().m3722l();
            C2387q c2387q = m3722l.f8330c.get(m3697o2);
            C2319j c2319j = m3722l.f8333f.get(m3697o2);
            if (c2387q != null) {
                c2387q.f8445j = m3697o;
            } else if (c2319j == null) {
            } else {
                c2319j.setClickOverride(m3697o);
            }
        }
    }

    /* renamed from: d2.e3$g */
    /* loaded from: classes-dex2jar.jar:d2/e3$g.class */
    public class RunnableC2217g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8049a;

        public RunnableC2217g(C2210e3 c2210e3, String str) {
            this.f8049a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3744i(c2267f4, "type", "open_hook");
            C2227e4.m3744i(c2267f4, "message", this.f8049a);
            new C2410t0("CustomMessage.controller_send", 0, c2267f4).m3586b();
        }
    }

    /* renamed from: d2.e3$h */
    /* loaded from: classes-dex2jar.jar:d2/e3$h.class */
    public class C2218h implements AbstractC2458y0 {
        public C2218h() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2210e3.this.m3753f(c2410t0);
        }
    }

    /* renamed from: d2.e3$i */
    /* loaded from: classes-dex2jar.jar:d2/e3$i.class */
    public class C2219i implements AbstractC2458y0 {
        public C2219i() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2210e3 c2210e3 = C2210e3.this;
            Objects.requireNonNull(c2210e3);
            C2267f4 c2267f4 = new C2267f4();
            C2267f4 c2267f42 = c2410t0.f8537b;
            Intent intent = new Intent("android.intent.action.DIAL");
            StringBuilder m8752j = C0082b.m8752j("tel:");
            m8752j.append(c2267f42.m3697o("phone_number"));
            Intent data = intent.setData(Uri.parse(m8752j.toString()));
            String m3697o = c2267f42.m3697o("ad_session_id");
            if (!C2315i3.m3664g(data)) {
                C2315i3.m3659l("Failed to dial number.", 0);
                C2227e4.m3739n(c2267f4, "success", false);
                c2410t0.m3587a(c2267f4).m3586b();
                return;
            }
            C2227e4.m3739n(c2267f4, "success", true);
            c2410t0.m3587a(c2267f4).m3586b();
            c2210e3.m3755d(m3697o);
            c2210e3.m3757b(m3697o);
            c2210e3.m3756c(m3697o);
        }
    }

    /* renamed from: d2.e3$j */
    /* loaded from: classes-dex2jar.jar:d2/e3$j.class */
    public class C2220j implements AbstractC2458y0 {
        public C2220j() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2210e3 c2210e3 = C2210e3.this;
            Objects.requireNonNull(c2210e3);
            C2267f4 c2267f4 = c2410t0.f8537b;
            C2267f4 c2267f42 = new C2267f4();
            String m3697o = c2267f4.m3697o("ad_session_id");
            C2200d4 m3750c = C2227e4.m3750c(c2267f4, "recipients");
            String str = "";
            for (int i = 0; i < m3750c.m3762c(); i++) {
                String str2 = str;
                if (i != 0) {
                    str2 = C1676a.m4789h(str, ";");
                }
                StringBuilder m8752j = C0082b.m8752j(str2);
                m8752j.append(m3750c.m3760e(i));
                str = m8752j.toString();
            }
            if (!C2315i3.m3664g(new Intent("android.intent.action.VIEW", Uri.parse("smsto:" + str)).putExtra("sms_body", c2267f4.m3697o("body")))) {
                C2315i3.m3659l("Failed to create sms.", 0);
                C2227e4.m3739n(c2267f42, "success", false);
                c2410t0.m3587a(c2267f42).m3586b();
                return;
            }
            C2227e4.m3739n(c2267f42, "success", true);
            c2410t0.m3587a(c2267f42).m3586b();
            c2210e3.m3755d(m3697o);
            c2210e3.m3757b(m3697o);
            c2210e3.m3756c(m3697o);
        }
    }

    /* renamed from: d2.e3$k */
    /* loaded from: classes-dex2jar.jar:d2/e3$k.class */
    public class C2221k implements AbstractC2458y0 {
        public C2221k() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2200d4 c2200d4;
            Objects.requireNonNull(C2210e3.this);
            Context context = C2408t.f8531a;
            if (context == null) {
                return;
            }
            int m3752a = C2227e4.m3752a(c2410t0.f8537b, "length_ms", 500);
            C2267f4 c2267f4 = new C2267f4();
            ExecutorService executorService = C2315i3.f8262a;
            C2200d4 c2200d42 = new C2200d4();
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
                c2200d4 = c2200d42;
                if (packageInfo.requestedPermissions != null) {
                    c2200d4 = new C2200d4();
                    int i = 0;
                    while (true) {
                        try {
                            String[] strArr = packageInfo.requestedPermissions;
                            if (i >= strArr.length) {
                                break;
                            }
                            c2200d4.m3763b(strArr[i]);
                            i++;
                        } catch (Exception e) {
                        }
                    }
                }
            } catch (Exception e2) {
                c2200d4 = c2200d42;
            }
            boolean z = false;
            for (int i2 = 0; i2 < c2200d4.m3762c(); i2++) {
                if (c2200d4.m3760e(i2).equals("android.permission.VIBRATE")) {
                    z = true;
                }
            }
            if (!z) {
                C0082b.m8750l(0, 1, "No vibrate permission detected.", false);
                C0028d.m8912h(c2267f4, "success", false, c2410t0, c2267f4);
                return;
            }
            try {
                Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
                if (vibrator != null) {
                    vibrator.vibrate(m3752a);
                    C2227e4.m3739n(c2267f4, "success", true);
                    c2410t0.m3587a(c2267f4).m3586b();
                    return;
                }
            } catch (Exception e3) {
                C0082b.m8750l(0, 1, "Vibrate command failed.", false);
            }
            C0028d.m8912h(c2267f4, "success", false, c2410t0, c2267f4);
        }
    }

    /* renamed from: d2.e3$l */
    /* loaded from: classes-dex2jar.jar:d2/e3$l.class */
    public class C2222l implements AbstractC2458y0 {
        public C2222l() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2210e3 c2210e3 = C2210e3.this;
            Objects.requireNonNull(c2210e3);
            C2267f4 c2267f4 = new C2267f4();
            C2267f4 c2267f42 = c2410t0.f8537b;
            String m3697o = c2267f42.m3697o(ImagesContract.URL);
            String m3697o2 = c2267f42.m3697o("ad_session_id");
            C2319j c2319j = C2408t.m3591d().m3722l().f8333f.get(m3697o2);
            if (c2319j == null || c2319j.getTrustedDemandSource() || c2319j.f8282n) {
                String str = m3697o;
                if (m3697o.startsWith("browser")) {
                    str = m3697o.replaceFirst("browser", "http");
                }
                String str2 = str;
                if (str.startsWith("safari")) {
                    str2 = str.replaceFirst("safari", "http");
                }
                c2210e3.m3754e(str2);
                if (!C2315i3.m3664g(new Intent("android.intent.action.VIEW", Uri.parse(str2)))) {
                    C2315i3.m3659l("Failed to launch browser.", 0);
                    C2227e4.m3739n(c2267f4, "success", false);
                    c2410t0.m3587a(c2267f4).m3586b();
                    return;
                }
                C2227e4.m3739n(c2267f4, "success", true);
                c2410t0.m3587a(c2267f4).m3586b();
                c2210e3.m3755d(m3697o2);
                c2210e3.m3757b(m3697o2);
                c2210e3.m3756c(m3697o2);
            }
        }
    }

    /* renamed from: d2.e3$m */
    /* loaded from: classes-dex2jar.jar:d2/e3$m.class */
    public class C2223m implements AbstractC2458y0 {
        public C2223m() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2210e3 c2210e3 = C2210e3.this;
            Objects.requireNonNull(c2210e3);
            C2267f4 c2267f4 = new C2267f4();
            C2267f4 c2267f42 = c2410t0.f8537b;
            C2200d4 m3750c = C2227e4.m3750c(c2267f42, "recipients");
            boolean m3741l = C2227e4.m3741l(c2267f42, "html");
            String m3697o = c2267f42.m3697o("subject");
            String m3697o2 = c2267f42.m3697o("body");
            String m3697o3 = c2267f42.m3697o("ad_session_id");
            String[] strArr = new String[m3750c.m3762c()];
            for (int i = 0; i < m3750c.m3762c(); i++) {
                strArr[i] = m3750c.m3760e(i);
            }
            Intent intent = new Intent("android.intent.action.SEND");
            if (!m3741l) {
                intent.setType("plain/text");
            }
            intent.putExtra("android.intent.extra.SUBJECT", m3697o).putExtra("android.intent.extra.TEXT", m3697o2).putExtra("android.intent.extra.EMAIL", strArr);
            if (!C2315i3.m3664g(intent)) {
                C2315i3.m3659l("Failed to send email.", 0);
                C2227e4.m3739n(c2267f4, "success", false);
                c2410t0.m3587a(c2267f4).m3586b();
                return;
            }
            C2227e4.m3739n(c2267f4, "success", true);
            c2410t0.m3587a(c2267f4).m3586b();
            c2210e3.m3755d(m3697o3);
            c2210e3.m3757b(m3697o3);
            c2210e3.m3756c(m3697o3);
        }
    }

    /* renamed from: d2.e3$n */
    /* loaded from: classes-dex2jar.jar:d2/e3$n.class */
    public class C2224n implements AbstractC2458y0 {
        public C2224n() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2210e3 c2210e3 = C2210e3.this;
            Objects.requireNonNull(c2210e3);
            C2267f4 c2267f4 = new C2267f4();
            C2267f4 c2267f42 = c2410t0.f8537b;
            String m3697o = c2267f42.m3697o("ad_session_id");
            if (C2227e4.m3741l(c2267f42, "deep_link")) {
                c2210e3.m3753f(c2410t0);
                return;
            }
            Context context = C2408t.f8531a;
            if (context == null) {
                return;
            }
            if (!C2315i3.m3664g(context.getPackageManager().getLaunchIntentForPackage(c2267f42.m3697o("handle")))) {
                C2315i3.m3659l("Failed to launch external application.", 0);
                C2227e4.m3739n(c2267f4, "success", false);
                c2410t0.m3587a(c2267f4).m3586b();
                return;
            }
            C2227e4.m3739n(c2267f4, "success", true);
            c2410t0.m3587a(c2267f4).m3586b();
            c2210e3.m3755d(m3697o);
            c2210e3.m3757b(m3697o);
            c2210e3.m3756c(m3697o);
        }
    }

    /* renamed from: d2.e3$o */
    /* loaded from: classes-dex2jar.jar:d2/e3$o.class */
    public class C2225o implements AbstractC2458y0 {
        public C2225o() {
            C2210e3.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x02fa  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x032e  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0354  */
        /* JADX WARN: Type inference failed for: r0v166, types: [long] */
        /* JADX WARN: Type inference failed for: r0v174, types: [long] */
        /* JADX WARN: Type inference failed for: r0v176, types: [long] */
        /* JADX WARN: Type inference failed for: r0v178, types: [long] */
        /* JADX WARN: Type inference failed for: r0v180, types: [long] */
        /* JADX WARN: Type inference failed for: r0v185, types: [long] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0388 -> B:88:0x02c4). Please submit an issue!!! */
        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo3526a(p068d2.C2410t0 r6) {
            /*
                Method dump skipped, instructions count: 911
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p068d2.C2210e3.C2225o.mo3526a(d2.t0):void");
        }
    }

    /* renamed from: d2.e3$p */
    /* loaded from: classes-dex2jar.jar:d2/e3$p.class */
    public class C2226p implements AbstractC2458y0 {
        public C2226p() {
            C2210e3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2210e3 c2210e3 = C2210e3.this;
            Objects.requireNonNull(c2210e3);
            C2267f4 c2267f4 = new C2267f4();
            C2267f4 c2267f42 = c2410t0.f8537b;
            Intent type = new Intent("android.intent.action.SEND").setType("text/plain");
            Intent putExtra = type.putExtra("android.intent.extra.TEXT", c2267f42.m3697o("text") + " " + c2267f42.m3697o(ImagesContract.URL));
            String m3697o = c2267f42.m3697o("ad_session_id");
            if (!C2315i3.m3663h(putExtra, true)) {
                C2315i3.m3659l("Unable to create social post.", 0);
                C2227e4.m3739n(c2267f4, "success", false);
                c2410t0.m3587a(c2267f4).m3586b();
                return;
            }
            C2227e4.m3739n(c2267f4, "success", true);
            c2410t0.m3587a(c2267f4).m3586b();
            c2210e3.m3755d(m3697o);
            c2210e3.m3757b(m3697o);
            c2210e3.m3756c(m3697o);
        }
    }

    /* renamed from: a */
    public void m3758a() {
        C2408t.m3592c("System.open_store", new C2218h());
        C2408t.m3592c("System.telephone", new C2219i());
        C2408t.m3592c("System.sms", new C2220j());
        C2408t.m3592c("System.vibrate", new C2221k());
        C2408t.m3592c("System.open_browser", new C2222l());
        C2408t.m3592c("System.mail", new C2223m());
        C2408t.m3592c("System.launch_app", new C2224n());
        C2408t.m3592c("System.create_calendar_event", new C2225o());
        C2408t.m3592c("System.social_post", new C2226p());
        C2408t.m3592c("System.make_in_app_purchase", new C2211a());
        C2408t.m3592c("System.close", new C2212b());
        C2408t.m3592c("System.expand", new C2213c());
        C2408t.m3592c("System.use_custom_close", new C2214d());
        C2408t.m3592c("System.set_orientation_properties", new C2215e());
        C2408t.m3592c("System.click_override", new C2216f());
    }

    /* renamed from: b */
    public void m3757b(String str) {
        AbstractC0081a abstractC0081a;
        C2329k0 m3722l = C2408t.m3591d().m3722l();
        C2387q c2387q = m3722l.f8330c.get(str);
        if (c2387q != null && (abstractC0081a = c2387q.f8436a) != null && c2387q.f8448m) {
            abstractC0081a.mo1948w(c2387q);
            return;
        }
        C2319j c2319j = m3722l.f8333f.get(str);
        AbstractC2328k listener = c2319j != null ? c2319j.getListener() : null;
        if (c2319j == null || listener == null || !c2319j.f8282n) {
            return;
        }
        listener.mo1961a(c2319j);
    }

    /* renamed from: c */
    public final boolean m3756c(String str) {
        if (C2408t.m3591d().m3722l().f8333f.get(str) == null) {
            return false;
        }
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, "ad_session_id", str);
        new C2410t0("MRAID.on_event", 1, c2267f4).m3586b();
        return true;
    }

    /* renamed from: d */
    public void m3755d(String str) {
        AbstractC0081a abstractC0081a;
        C2329k0 m3722l = C2408t.m3591d().m3722l();
        C2387q c2387q = m3722l.f8330c.get(str);
        if (c2387q != null && (abstractC0081a = c2387q.f8436a) != null) {
            abstractC0081a.mo1954D(c2387q);
            return;
        }
        C2319j c2319j = m3722l.f8333f.get(str);
        AbstractC2328k listener = c2319j != null ? c2319j.getListener() : null;
        if (c2319j == null || listener == null) {
            return;
        }
        listener.mo1959c(c2319j);
    }

    /* renamed from: e */
    public final void m3754e(String str) {
        if (!C2315i3.m3661j(new RunnableC2217g(this, str))) {
            C0082b.m8750l(0, 0, C0608b.m7626i("Executing ADCSystem.sendOpenCustomMessage failed"), true);
        }
    }

    /* renamed from: f */
    public boolean m3753f(C2410t0 c2410t0) {
        C2267f4 c2267f4 = new C2267f4();
        C2267f4 c2267f42 = c2410t0.f8537b;
        String m3697o = c2267f42.m3697o("product_id");
        String m3697o2 = c2267f42.m3697o("ad_session_id");
        String str = m3697o;
        if (m3697o.equals("")) {
            str = c2267f42.m3697o("handle");
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        m3754e(str);
        if (!C2315i3.m3664g(intent)) {
            C2315i3.m3659l("Unable to open.", 0);
            C2227e4.m3739n(c2267f4, "success", false);
            c2410t0.m3587a(c2267f4).m3586b();
            return false;
        }
        C2227e4.m3739n(c2267f4, "success", true);
        c2410t0.m3587a(c2267f4).m3586b();
        m3755d(m3697o2);
        m3757b(m3697o2);
        m3756c(m3697o2);
        return true;
    }
}
