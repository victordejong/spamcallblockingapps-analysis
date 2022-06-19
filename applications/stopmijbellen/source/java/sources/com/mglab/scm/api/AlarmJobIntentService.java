package com.mglab.scm.api;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.support.p012v4.media.C0082b;
import android.telephony.TelephonyManager;
import android.util.Log;
import androidx.recyclerview.widget.C0608b;
import ba.C0748b;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mglab.scm.api.AlarmJobIntentService;
import java.sql.Date;
import java.util.Objects;
import p007a6.C0028d;
import p026c0.AbstractServiceC0792i;
import p095f8.C2774b;
import p095f8.C2779g;
import p095f8.C2780h;
import p106g8.C2911a;
import p106g8.C2913c;
import p106g8.C2914d;
import p117h8.C3026c;
import p117h8.C3027d;
import p117h8.C3030g;
import p117h8.C3031h;
import p117h8.C3036l;
import p117h8.C3037m;
import p117h8.C3043q;
import p117h8.C3044r;
import p149k8.C3389e;
import p170m7.AbstractC3656d;
import p170m7.C3661g;
import p233s6.C4313h;
import p233s6.C4316k;
import p277w7.C4749e;
import p277w7.C4766p;
import p278w8.C4775f;
import p278w8.C4776g;
import p278w8.C4782k;
import p278w8.C4786m;
import p278w8.C4788o;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
import p289x8.C4934c;
import p293y2.C4994k;
import p293y2.C4995l;
import p303z2.C5056q;
import p308z7.AbstractC5111a;
import p308z7.AbstractC5112b;
import p308z7.AbstractC5113c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/api/AlarmJobIntentService.class */
public class AlarmJobIntentService extends AbstractServiceC0792i {

    /* renamed from: l */
    public static final /* synthetic */ int f7284l = 0;

    /* renamed from: h */
    public int f7285h;

    /* renamed from: i */
    public int f7286i;

    /* renamed from: j */
    public int f7287j;

    /* renamed from: k */
    public String f7288k;

    @Override // p026c0.AbstractServiceC0792i
    /* renamed from: c */
    public void mo3975c(Intent intent) {
        C2779g.m3093v(getApplicationContext());
        Context applicationContext = getApplicationContext();
        this.f7288k = C2779g.m3131B(16);
        if (C2780h.m3022w(applicationContext, "pilc") + 86400000 <= System.currentTimeMillis() || C2780h.m3032p(applicationContext).intValue() >= 3 || C2780h.m3019z(applicationContext).intValue() >= 1) {
            String m3087B = C2780h.m3032p(applicationContext).intValue() < 3 ? "" : C2780h.m3087B(applicationContext);
            if (C2780h.m3019z(applicationContext).intValue() > C2780h.m3085D(applicationContext).intValue() * 2) {
                C2780h.m3039l0(applicationContext, 0);
                C2780h.m3035n0(applicationContext, C2914d.f9817a);
            }
            C2780h.m3039l0(applicationContext, C2780h.m3019z(applicationContext).intValue() + 1);
            C4994k c4994k = new C4994k(this, applicationContext, 2);
            C4316k c4316k = new C4316k();
            c4316k.f13470a.put("initserver", c4316k.m1109e(m3087B));
            AbstractC5113c<AbstractC5111a> m498b = C4749e.m498b(applicationContext);
            StringBuilder sb = new StringBuilder();
            int m3086C = C2780h.m3086C(applicationContext) + 1;
            int i = m3086C;
            if (m3086C >= C2780h.m3085D(applicationContext).intValue()) {
                i = 0;
            }
            C2780h.m3043j0(applicationContext, "pinumber", Integer.valueOf(i));
            C2780h.m3088A(applicationContext, i);
            sb.append(C2780h.m3088A(applicationContext, i));
            sb.append("app_preinit.php");
            String sb2 = sb.toString();
            C4766p c4766p = (C4766p) m498b;
            c4766p.m492j(sb2);
            c4766p.f14672g = 10000;
            c4766p.m489m("deviceid", Settings.Secure.getString(applicationContext.getContentResolver(), "android_id"));
            c4766p.m489m("appvc", C2779g.m3109f());
            c4766p.m489m("tcc", C2780h.m3042k(this));
            c4766p.m489m("data", this.f7288k);
            String str = "1";
            c4766p.m489m("gzip", "1");
            c4766p.m489m("commandid", String.valueOf(C2780h.m3046i(this)));
            if (!C2779g.m3090y()) {
                str = "0";
            }
            c4766p.m489m("ispro", str);
            c4766p.mo15a(C2914d.m2854b(this.f7288k, c4316k.toString()));
            ((C3661g) c4766p.mo10d()).m1919k(c4994k);
        } else {
            m3971h();
        }
        try {
            Date date = new Date(System.currentTimeMillis() - C2914d.f9818b.longValue());
            C4776g c4776g = new C4776g(new C4775f(), C3030g.class);
            C4782k<Date> mo230c = C3031h.f10190j.mo230c();
            mo230c.f14685a = "<";
            mo230c.f14686b = date;
            mo230c.f14689e = true;
            new C4791r(c4776g, mo230c).mo458i();
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            C4776g c4776g2 = new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class);
            C4934c<Long, Date> c4934c = C3037m.f10290j;
            C4791r m477n = c4776g2.m477n(c4934c, false);
            m477n.f14724h = 1;
            m477n.f14725i = 300;
            C3036l c3036l = (C3036l) m477n.m452p();
            if (c3036l != null) {
                new C4791r(new C4776g(new C4775f(), C3036l.class), c4934c.m232i(c3036l.f10263e)).mo458i();
                Objects.toString(c3036l.f10263e);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            C4776g c4776g3 = new C4776g(new C4775f(), C3036l.class);
            C4782k<Integer> m239a = C3037m.f10294n.m239a(1);
            C4933b<Integer> c4933b = C3037m.f10287g;
            Integer m3023v = C2780h.m3023v(getApplicationContext());
            C4782k<Integer> mo230c2 = c4933b.mo230c();
            mo230c2.f14685a = "<";
            mo230c2.f14686b = m3023v;
            mo230c2.f14689e = true;
            new C4791r(c4776g3, m239a, mo230c2).mo458i();
            C2780h.m3023v(getApplicationContext());
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        C3043q.m2711k(getApplicationContext(), false);
        Log.i("AJIS", "Completed service");
    }

    /* renamed from: e */
    public final void m3974e(int i, int i2) {
        if (i <= C2780h.m3046i(getApplicationContext())) {
            C2780h.m3046i(getApplicationContext());
            return;
        }
        Context applicationContext = getApplicationContext();
        if (C2780h.m3046i(applicationContext) <= i) {
            C2780h.m3043j0(applicationContext, "precommandid", Integer.valueOf(i));
        }
        if (i2 == 1) {
            try {
                new C4776g(new C4775f(), C3030g.class).mo458i();
                new C4776g(new C4775f(), C3044r.class).mo458i();
            } catch (Exception e) {
                e.printStackTrace();
                e.toString();
            }
        } else if (i2 == 2) {
            try {
                new C4776g(new C4775f(), C3030g.class).mo458i();
            } catch (Exception e2) {
                e2.printStackTrace();
                e2.toString();
            }
        } else if (i2 == 3) {
            C2780h.m3047h0(getApplicationContext(), 0);
        } else if (i2 == 4) {
            C2780h.m3049g0(getApplicationContext(), "dsuclbl", true);
        } else if (i2 == 5) {
            C2780h.m3049g0(getApplicationContext(), "dsuclbl", false);
        }
        Context applicationContext2 = getApplicationContext();
        if (C2780h.m3046i(applicationContext2) > i) {
            return;
        }
        C2780h.m3043j0(applicationContext2, "precommandid", Integer.valueOf(i));
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: f */
    public final void m3973f() {
        if (this.f7286i == 0 || C2780h.m3042k(getApplicationContext()).isEmpty()) {
            C2780h.m3041k0(getApplicationContext(), "lastdbcheck", System.currentTimeMillis());
            C2779g.m3128E(getApplicationContext(), true);
            C0748b.m7409b().m7404g(new C3389e("Download complete"));
            C0028d.m8914f(100, C0748b.m7409b());
        } else if (C2780h.m3020y(getApplicationContext()).intValue() >= 100) {
            C0748b.m7409b().m7404g(new C3389e("Update disabled"));
            C0028d.m8914f(-5, C0748b.m7409b());
        } else {
            C4766p c4766p = (C4766p) C4749e.m498b(getApplicationContext());
            c4766p.m492j(C2780h.m3030q(getApplicationContext()) + "app_download.php");
            c4766p.mo12e(10000);
            c4766p.mo13c("deviceid", C2779g.m3104k(getApplicationContext()));
            c4766p.mo13c("lastid", String.valueOf(C3043q.m2700v()));
            ((C3661g) c4766p.mo10d()).m1919k(new C2911a(this, 1));
        }
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: g */
    public final void m3972g() {
        C2780h.m3038m(this);
        C3043q.m2700v();
        if (C3043q.m2700v() == 0) {
            C2780h.m3047h0(getApplicationContext(), this.f7285h);
        }
        if (C2780h.m3038m(getApplicationContext()).intValue() == this.f7285h || C2780h.m3042k(getApplicationContext()).isEmpty()) {
            m3973f();
        } else if (C2780h.m3020y(getApplicationContext()).intValue() >= 100) {
            m3973f();
        } else {
            C4766p c4766p = (C4766p) C4749e.m498b(getApplicationContext());
            c4766p.m492j(C2780h.m3030q(getApplicationContext()) + "app_deleted.php");
            ((C3661g) c4766p.mo12e(10000).mo13c("deviceid", C2779g.m3104k(getApplicationContext())).mo13c("lastid", String.valueOf(C2780h.m3038m(this))).mo10d()).m1919k(new C4995l(this, 9));
        }
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: h */
    public final void m3971h() {
        this.f7288k = C2779g.m3131B(16);
        new C2774b().m3136a();
        C2780h.m3051f0(getApplicationContext());
        C2911a c2911a = new C2911a(this, 0);
        C2780h.m3030q(getApplicationContext());
        C3043q.m2700v();
        C2780h.m3038m(this);
        C4766p c4766p = (C4766p) C4749e.m498b(getApplicationContext());
        c4766p.m492j(C2780h.m3030q(getApplicationContext()) + "app_init.php");
        c4766p.mo12e(10000);
        c4766p.mo11f("deviceid", C2779g.m3104k(getApplicationContext()));
        c4766p.mo11f("dbinit", String.valueOf(C3043q.m2700v()));
        c4766p.mo11f("delinit", String.valueOf(C2780h.m3038m(this)));
        c4766p.mo11f("sdk", String.valueOf(Build.VERSION.SDK_INT));
        c4766p.mo11f("appvc", C2779g.m3109f());
        c4766p.mo11f("tcc", C2780h.m3042k(this));
        c4766p.mo11f("data", this.f7288k);
        c4766p.mo11f("ispro", C2779g.m3090y() ? "1" : "0");
        ((C3661g) c4766p.mo10d()).m1919k(c2911a);
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: i */
    public final void m3970i() {
        Context applicationContext = getApplicationContext();
        String[] strArr = C2914d.f9817a;
        C4313h c4313h = new C4313h();
        C4776g c4776g = new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class);
        C4933b<Integer> c4933b = C3027d.f10155f;
        C4791r c4791r = new C4791r(c4776g, c4933b.m237d(C2780h.m3024u(applicationContext)));
        c4791r.f14720d.m467k("AND", C3027d.f10159j.m237d(0));
        c4791r.f14722f.add(new C4786m(c4933b.mo235f(), false));
        for (C3026c c3026c : c4791r.mo456l()) {
            Objects.requireNonNull(c3026c);
            C4316k c4316k = new C4316k();
            c4316k.f13470a.put("number", c4316k.m1109e(c3026c.f10150c));
            c4316k.f13470a.put(AppMeasurementSdk.ConditionalUserProperty.NAME, c4316k.m1109e(c3026c.f10151d));
            c4316k.f13470a.put("category", c4316k.m1109e(Integer.valueOf(c3026c.f10153f)));
            c4313h.f13468a.add(c4316k);
        }
        int intValue = C2780h.m3024u(getApplicationContext()).intValue();
        c4313h.toString();
        Long.toString(intValue);
        if (c4313h.size() == 0) {
            m3972g();
        } else if (!C2780h.m3040l(getApplicationContext())) {
            m3972g();
        } else {
            C2913c c2913c = new C2913c(this);
            C4766p c4766p = (C4766p) C4749e.m498b(getApplicationContext());
            c4766p.m492j(C2780h.m3030q(getApplicationContext()) + "app_upload_blacklist.php");
            c4766p.mo12e(10000);
            c4766p.mo11f("deviceid", C2779g.m3104k(getApplicationContext()));
            c4766p.mo11f("gzip", "1");
            c4766p.mo15a(C2914d.m2854b(this.f7288k, c4313h.toString()));
            ((C3661g) c4766p.mo10d()).m1919k(c2913c);
        }
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: j */
    public final void m3969j(boolean z) {
        if (!z) {
            m3968k();
            return;
        }
        Context applicationContext = getApplicationContext();
        String[] strArr = C2914d.f9817a;
        C4316k c4316k = new C4316k();
        c4316k.f13470a.put("pm", c4316k.m1109e(Build.MANUFACTURER));
        c4316k.f13470a.put("pmdl", c4316k.m1109e(Build.MODEL));
        c4316k.f13470a.put("avc", c4316k.m1109e(Integer.valueOf(Build.VERSION.SDK_INT)));
        c4316k.f13470a.put("avn", c4316k.m1109e(Build.VERSION.RELEASE));
        c4316k.f13470a.put("appvc", c4316k.m1109e(382));
        c4316k.f13470a.put("appvn", c4316k.m1109e("2.3.21"));
        StringBuilder sb = new StringBuilder();
        sb.append("CALL_PHONE:");
        sb.append(applicationContext.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0 ? "1" : "0");
        StringBuilder m7624k = C0608b.m7624k(sb.toString(), ", ANSWER_PHONE_CALLS:");
        m7624k.append(applicationContext.checkCallingOrSelfPermission("android.permission.ANSWER_PHONE_CALLS") == 0 ? "1" : "0");
        StringBuilder m7624k2 = C0608b.m7624k(m7624k.toString(), ", READ_PHONE_STATE:");
        m7624k2.append(applicationContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0 ? "1" : "0");
        StringBuilder m7624k3 = C0608b.m7624k(m7624k2.toString(), ", READ_CALL_LOG:");
        m7624k3.append(applicationContext.checkCallingOrSelfPermission("android.permission.READ_CALL_LOG") == 0 ? "1" : "0");
        StringBuilder m7624k4 = C0608b.m7624k(m7624k3.toString(), ", WRITE_CALL_LOG:");
        m7624k4.append(C2779g.m3113b(applicationContext) ? "1" : "0");
        StringBuilder m7624k5 = C0608b.m7624k(m7624k4.toString(), ", READ_CONTACTS:");
        m7624k5.append(C2779g.m3114a(applicationContext) ? "1" : "0");
        StringBuilder m7624k6 = C0608b.m7624k(m7624k5.toString(), ", WAKE_LOCK:");
        m7624k6.append(applicationContext.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0 ? "1" : "0");
        StringBuilder m7624k7 = C0608b.m7624k(m7624k6.toString(), ", RECEIVE_BOOT_COMPLETED:");
        boolean z2 = false;
        if (applicationContext.checkCallingOrSelfPermission("android.permission.RECEIVE_BOOT_COMPLETED") == 0) {
            z2 = true;
        }
        String str = "0";
        if (z2) {
            str = "1";
        }
        m7624k7.append(str);
        c4316k.f13470a.put("permissions", c4316k.m1109e(m7624k7.toString()));
        c4316k.f13470a.put("bf", c4316k.m1109e(Build.FINGERPRINT));
        c4316k.f13470a.put("bn", c4316k.m1109e(Build.DISPLAY));
        c4316k.f13470a.put("tcc", c4316k.m1109e(C2780h.m3042k(applicationContext)));
        TelephonyManager telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
        telephonyManager.getPhoneType();
        c4316k.f13470a.put("phonetype", c4316k.m1109e(Integer.valueOf(telephonyManager.getPhoneType())));
        c4316k.toString();
        C5056q c5056q = new C5056q(this, 6);
        C4766p c4766p = (C4766p) C4749e.m498b(getApplicationContext());
        c4766p.m492j(C2780h.m3030q(getApplicationContext()) + "app_device.php");
        ((C3661g) ((AbstractC5112b) c4766p.mo12e(10000).mo11f("deviceid", C2779g.m3104k(getApplicationContext())).mo11f("gzip", "1").mo15a(C2914d.m2854b(this.f7288k, c4316k.toString()))).mo10d()).m1919k(c5056q);
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: k */
    public final void m3968k() {
        Context applicationContext = getApplicationContext();
        String[] strArr = C2914d.f9817a;
        C4313h c4313h = new C4313h();
        C4776g c4776g = new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class);
        C4933b<Integer> c4933b = C3037m.f10287g;
        C4791r c4791r = new C4791r(c4776g, c4933b.m237d(C2780h.m3023v(applicationContext)));
        c4791r.m453o(c4933b, false);
        for (C3036l c3036l : c4791r.mo456l()) {
            Objects.requireNonNull(c3036l);
            C4316k c4316k = new C4316k();
            c4316k.f13470a.put("number", c4316k.m1109e(c3036l.f10261c));
            c4316k.f13470a.put("devicetableid", c4316k.m1109e(Integer.valueOf(c3036l.f10260b)));
            if (c3036l.f10262d != null) {
                c4316k.f13470a.put("recdate", c4316k.m1109e(Long.valueOf(c3036l.f10263e.getTime())));
                c4316k.f13470a.put("recresult", c4316k.m1109e(c3036l.f10262d));
                c4316k.f13470a.put("recsimno", c4316k.m1109e(c3036l.f10264f));
                StringBuilder sb = new StringBuilder();
                sb.append("METHOD:");
                sb.append(c3036l.f10251L);
                sb.append(", PRESET:");
                sb.append(c3036l.f10246G);
                sb.append(", SIM1:");
                sb.append(c3036l.f10249J ? "1" : "0");
                sb.append(", SIM2:");
                sb.append(c3036l.f10250K ? "1" : "0");
                sb.append(", USECALENDAR:");
                sb.append(c3036l.f10247H ? "1" : "0");
                sb.append(", CALENDAR:");
                sb.append(c3036l.f10248I);
                sb.append(", DB:");
                sb.append(c3036l.f10272n ? "1" : "0");
                sb.append(", BL:");
                sb.append(c3036l.f10273o ? "1" : "0");
                sb.append(", WL:");
                sb.append(c3036l.f10274p ? "1" : "0");
                sb.append(", BLALLEXWL:");
                sb.append(c3036l.f10245F ? "1" : "0");
                sb.append(", CONTACTS:");
                sb.append(c3036l.f10276r ? "1" : "0");
                sb.append(", BLALLEXCONTACTS:");
                sb.append(c3036l.f10241B ? "1" : "0");
                sb.append(", HIDDEN:");
                sb.append(c3036l.f10277s ? "1" : "0");
                sb.append(", FOREIGN:");
                sb.append(c3036l.f10275q ? "1" : "0");
                sb.append(", SECONDCALL;");
                sb.append(c3036l.f10254O ? "1" : "0");
                sb.append(", FOREGROUND:");
                sb.append(c3036l.f10278t ? "1" : "0");
                sb.append(", DND:");
                sb.append(c3036l.f10252M ? "1" : "0");
                sb.append(", SYSVIBRATE:");
                sb.append(c3036l.f10253N ? "1" : "0");
                sb.append(", DEFPHONEAPP:");
                sb.append(c3036l.f10257R ? "1" : "0");
                sb.append(", DEFPHAPPOPTION:");
                sb.append(c3036l.f10258S ? "1" : "0");
                c4316k.f13470a.put("settings", c4316k.m1109e(sb.toString()));
                c4316k.f13470a.put("callchecktime", c4316k.m1109e(Long.valueOf(c3036l.f10281w)));
                c4316k.f13470a.put("callmemcheck", c4316k.m1109e(Boolean.valueOf(c3036l.f10282x)));
                c4316k.f13470a.put("lastdbcheck", c4316k.m1109e(Long.valueOf(c3036l.f10284z)));
                c4316k.f13470a.put("debug", c4316k.m1109e(c3036l.f10283y));
                c4316k.f13470a.put("appvc", c4316k.m1109e(Integer.valueOf(c3036l.f10244E)));
                c4316k.f13470a.put("endcallresult", c4316k.m1109e(c3036l.f10243D));
            }
            if (c3036l.f10265g != null) {
                c4316k.f13470a.put("dt", c4316k.m1109e(Long.valueOf(c3036l.f10267i.getTime())));
                c4316k.f13470a.put("calltype", c4316k.m1109e(c3036l.f10268j));
                c4316k.f13470a.put("callduration", c4316k.m1109e(c3036l.f10269k));
                c4316k.f13470a.put("callcountryiso", c4316k.m1109e(c3036l.f10270l));
                c4316k.f13470a.put("clid", c4316k.m1109e(c3036l.f10265g));
            }
            c4316k.toString();
            c4313h.f13468a.add(c4316k);
        }
        final int intValue = C2780h.m3023v(getApplicationContext()).intValue();
        c4313h.toString();
        if (c4313h.size() == 0) {
            m3970i();
        } else if (!C2780h.m3040l(getApplicationContext())) {
            m3970i();
        } else {
            AbstractC3656d abstractC3656d = new AbstractC3656d() { // from class: g8.b
                @Override // p170m7.AbstractC3656d
                /* renamed from: a */
                public final void mo99a(Exception exc, Object obj) {
                    AlarmJobIntentService alarmJobIntentService = AlarmJobIntentService.this;
                    int i = intValue;
                    C4316k c4316k2 = (C4316k) obj;
                    int i2 = AlarmJobIntentService.f7284l;
                    Objects.requireNonNull(alarmJobIntentService);
                    if (c4316k2 == null) {
                        C2780h.m3051f0(alarmJobIntentService.getApplicationContext());
                        C1676a.m4785l(".uploadLog no result", 1, C0082b.m8759c(-3, C0748b.m7409b()));
                        return;
                    }
                    int i3 = 0;
                    C3036l c3036l2 = (C3036l) new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class).m477n(C3037m.f10287g, false).m452p();
                    if (c3036l2 != null) {
                        i3 = c3036l2.f10260b;
                    }
                    if (i3 > i) {
                        C2780h.m3043j0(alarmJobIntentService.getApplicationContext(), "lastlid", Integer.valueOf(i3));
                    }
                    alarmJobIntentService.m3970i();
                }
            };
            C4766p c4766p = (C4766p) C4749e.m498b(getApplicationContext());
            c4766p.m492j(C2780h.m3030q(getApplicationContext()) + "app_upload.php");
            ((C3661g) ((AbstractC5112b) c4766p.mo12e(10000).mo11f("deviceid", C2779g.m3104k(getApplicationContext())).mo11f("gzip", "1").mo15a(C2914d.m2854b(this.f7288k, c4313h.toString()))).mo10d()).m1919k(abstractC3656d);
        }
    }

    @Override // p026c0.AbstractServiceC0792i, android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
