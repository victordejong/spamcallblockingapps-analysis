package p171m8;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mglab.scm.visual.FragmentSocial;
import java.util.Date;
import java.util.Objects;
import p066d0.C2134a;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2779g;
import p095f8.C2780h;
import p106g8.C2914d;
import p117h8.C3036l;
import p117h8.C3037m;
import p170m7.AbstractC3656d;
import p170m7.C3661g;
import p229s2.C4280b;
import p233s6.C4313h;
import p233s6.C4316k;
import p277w7.C4749e;
import p277w7.C4766p;
import p278w8.C4776g;
import p278w8.C4788o;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p308z7.AbstractC5111a;
import p308z7.AbstractC5112b;
import p308z7.AbstractC5113c;
/* renamed from: m8.d */
/* loaded from: classes2-dex2jar.jar:m8/d.class */
public class C3670d {

    /* renamed from: a */
    public final Context f12006a;

    /* renamed from: b */
    public final String f12007b;

    /* renamed from: c */
    public final int f12008c;

    /* renamed from: d */
    public String f12009d;

    /* renamed from: e */
    public String f12010e;

    /* renamed from: f */
    public int f12011f;

    /* renamed from: g */
    public int f12012g;

    /* renamed from: h */
    public int f12013h;

    /* renamed from: i */
    public int f12014i;

    /* renamed from: j */
    public final int f12015j;

    /* renamed from: k */
    public int f12016k;

    /* renamed from: l */
    public Date f12017l;

    public C3670d(Context context, String str, int i, String str2, String str3, int i2, int i3, int i4, int i5, int i6, int i7, Date date) {
        this.f12007b = str;
        this.f12006a = context;
        this.f12008c = i;
        this.f12009d = str2;
        this.f12010e = str3;
        this.f12011f = i2;
        this.f12012g = i3;
        this.f12013h = i4;
        this.f12014i = i5;
        this.f12015j = i6;
        this.f12016k = i7;
        this.f12017l = date;
    }

    /* renamed from: a */
    public static boolean m1909a(String str) {
        boolean z = false;
        if (new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class), C3037m.f10288h.m236e(str)).m452p() != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public void m1908b(View view) {
        int i;
        Context context;
        boolean m3081H = C2780h.m3081H(this.f12006a);
        ImageView imageView = (ImageView) view.findViewById(2131296929);
        Button button = (Button) view.findViewById(2131296727);
        Button button2 = (Button) view.findViewById(2131296550);
        TextView textView = (TextView) view.findViewById(2131297138);
        TextView textView2 = (TextView) view.findViewById(2131297136);
        TextView textView3 = (TextView) view.findViewById(2131297137);
        ((TextView) view.findViewById(2131296839)).setVisibility(m1905e() ? 0 : 8);
        String str = "<b>" + this.f12009d + "</b> " + this.f12010e;
        textView.setText(Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str, 0) : Html.fromHtml(str));
        textView2.setText(this.f12006a.getResources().getStringArray(2130903041)[this.f12012g]);
        textView3.setText(C2779g.m3096s(this.f12006a, this.f12017l));
        button.setText(String.valueOf(this.f12013h));
        button2.setText(String.valueOf(this.f12014i));
        button2.setOnClickListener(null);
        button.setOnClickListener(null);
        button.setEnabled(!m1905e());
        button2.setEnabled(!m1905e());
        int i2 = 2131230948;
        int i3 = 2131230962;
        int i4 = -16777216;
        if (m1905e()) {
            button.setTextColor(m3081H ? -1 : -16777216);
            if (m3081H) {
                i4 = -1;
            }
            button2.setTextColor(i4);
            if (!m3081H) {
                i3 = 2131230961;
            }
            button.setCompoundDrawablesWithIntrinsicBounds(i3, 0, 0, 0);
            if (!m3081H) {
                i2 = 2131230947;
            }
            button2.setCompoundDrawablesWithIntrinsicBounds(i2, 0, 0, 0);
        } else {
            if (!(this.f12016k == 1)) {
                i3 = 2131230961;
            }
            button.setCompoundDrawablesWithIntrinsicBounds(i3, 0, 0, 0);
            button.setTextColor(this.f12016k == 1 ? -1 : -16777216);
            if (!(this.f12016k == -1)) {
                i2 = 2131230947;
            }
            button2.setCompoundDrawablesWithIntrinsicBounds(i2, 0, 0, 0);
            boolean z = false;
            if (this.f12016k == -1) {
                z = true;
            }
            if (z) {
                i4 = -1;
            }
            button2.setTextColor(i4);
        }
        int m3845b = C2134a.m3845b(this.f12006a, m3081H ? 2131099724 : 2131099723);
        if (m3081H) {
            context = this.f12006a;
            i = 2131099721;
        } else {
            context = this.f12006a;
            i = 2131099720;
        }
        int m3845b2 = C2134a.m3845b(context, i);
        CardView cardView = (CardView) view.findViewById(2131296450);
        if (m1905e()) {
            m3845b2 = m3845b;
        }
        cardView.setCardBackgroundColor(m3845b2);
        int i5 = this.f12011f;
        imageView.setImageResource(i5 != -1 ? i5 != 1 ? 2131231000 : 2131230999 : 2131230998);
    }

    /* renamed from: c */
    public final C4313h m1907c() {
        C4316k c4316k = new C4316k();
        c4316k.f13470a.put("number", c4316k.m1109e(this.f12007b));
        c4316k.f13470a.put(AppMeasurementSdk.ConditionalUserProperty.NAME, c4316k.m1109e(this.f12009d));
        c4316k.f13470a.put("category", c4316k.m1109e(Integer.valueOf(this.f12012g)));
        c4316k.f13470a.put("text", c4316k.m1109e(this.f12010e));
        c4316k.f13470a.put("posnegrating", c4316k.m1109e(Integer.valueOf(this.f12011f)));
        c4316k.f13470a.put("isincalllog", c4316k.m1109e(Integer.valueOf(m1909a(this.f12007b) ? 1 : 0)));
        C4313h c4313h = new C4313h();
        c4313h.f13468a.add(c4316k);
        c4316k.toString();
        c4313h.toString();
        return c4313h;
    }

    /* renamed from: d */
    public int m1906d() {
        return this.f12013h - this.f12014i;
    }

    /* renamed from: e */
    public boolean m1905e() {
        boolean z = true;
        if (this.f12015j != 1) {
            z = false;
        }
        return z;
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: f */
    public void m1904f() {
        String m3131B = C2779g.m3131B(16);
        String str = m3131B.substring(12) + m3131B.substring(0, 12);
        C3675i.m1898b();
        C4280b c4280b = new C4280b(this);
        C4766p c4766p = (C4766p) C4749e.m498b(this.f12006a);
        c4766p.m492j(C3675i.m1898b() + "delfeed.php");
        ((C3661g) ((AbstractC5112b) c4766p.mo11f("deviceid", C2779g.m3104k(this.f12006a)).mo11f("data", m3131B).mo11f("gzip", "1").mo12e(10000).mo15a(C2914d.m2854b(str, m1907c().toString()))).mo10d()).m1919k(c4280b);
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: g */
    public void m1903g(final boolean z) {
        String m3131B = C2779g.m3131B(16);
        String str = m3131B.substring(12) + m3131B.substring(0, 12);
        C3675i.m1898b();
        AbstractC3656d abstractC3656d = new AbstractC3656d() { // from class: m8.b
            @Override // p170m7.AbstractC3656d
            /* renamed from: a */
            public final void mo99a(Exception exc, Object obj) {
                C3670d c3670d = C3670d.this;
                C3670d c3670d2 = this;
                boolean z2 = z;
                C4316k c4316k = (C4316k) obj;
                Objects.requireNonNull(c3670d);
                if (c4316k == null) {
                    c3670d.m1901i(0, false, z2);
                    return;
                }
                try {
                    c4316k.toString();
                    FragmentSocial.f7596b.m1893g();
                    FragmentSocial.f7596b.f12044q.add(0, c3670d2);
                    FragmentSocial.f7596b.m1894f();
                } catch (Exception e) {
                    e.printStackTrace();
                    e.toString();
                    c3670d.m1901i(0, false, z2);
                }
            }
        };
        AbstractC5113c<AbstractC5111a> m498b = C4749e.m498b(this.f12006a);
        StringBuilder sb = new StringBuilder();
        sb.append(C3675i.m1898b());
        sb.append(z ? "postfeed.php" : "editfeed.php");
        String sb2 = sb.toString();
        C4766p c4766p = (C4766p) m498b;
        c4766p.m492j(sb2);
        ((C3661g) ((AbstractC5112b) c4766p.mo11f("deviceid", C2779g.m3104k(this.f12006a)).mo11f("data", m3131B).mo11f("gzip", "1").mo12e(10000).mo15a(C2914d.m2854b(str, m1907c().toString()))).mo10d()).m1919k(abstractC3656d);
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: h */
    public void m1902h(final boolean z) {
        String m3131B = C2779g.m3131B(16);
        StringBuilder sb = new StringBuilder();
        sb.append(m3131B.substring(11));
        int i = 0;
        sb.append(m3131B.substring(0, 11));
        String sb2 = sb.toString();
        C4316k c4316k = new C4316k();
        c4316k.f13470a.put("feedbackid", c4316k.m1109e(Integer.valueOf(this.f12008c)));
        if (z) {
            if (this.f12016k != 1) {
                i = 1;
            }
        } else if (this.f12016k != -1) {
            i = -1;
        }
        c4316k.f13470a.put("vote", c4316k.m1109e(Integer.valueOf(i)));
        c4316k.f13470a.put("isincalllog", c4316k.m1109e(Integer.valueOf(m1909a(this.f12007b) ? 1 : 0)));
        C4313h c4313h = new C4313h();
        c4313h.f13468a.add(c4316k);
        C3675i.m1898b();
        c4316k.toString();
        AbstractC3656d abstractC3656d = new AbstractC3656d() { // from class: m8.c
            @Override // p170m7.AbstractC3656d
            /* renamed from: a */
            public final void mo99a(Exception exc, Object obj) {
                C3670d c3670d = C3670d.this;
                boolean z2 = z;
                C4316k c4316k2 = (C4316k) obj;
                Objects.requireNonNull(c3670d);
                if (c4316k2 == null) {
                    c3670d.m1901i(1, z2, false);
                    return;
                }
                try {
                    c4316k2.toString();
                    c3670d.m1900j(z2);
                } catch (Exception e) {
                    e.printStackTrace();
                    e.toString();
                    c3670d.m1901i(1, z2, false);
                }
            }
        };
        C4766p c4766p = (C4766p) C4749e.m498b(this.f12006a);
        c4766p.m492j(C3675i.m1898b() + "postvote.php");
        c4766p.mo11f("deviceid", C2779g.m3104k(this.f12006a));
        c4766p.mo11f("data", m3131B);
        c4766p.mo12e(5000);
        c4766p.mo11f("gzip", "1");
        c4766p.mo15a(C2914d.m2854b(sb2, c4313h.toString()));
        ((C3661g) c4766p.mo10d()).m1919k(abstractC3656d);
    }

    /* renamed from: i */
    public final void m1901i(final int i, final boolean z, final boolean z2) {
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(this.f12006a);
        c2531a.f8851b = this.f12006a.getString(2131821050);
        c2531a.m3463l(2131099739);
        c2531a.m3470e(2131230924);
        c2531a.m3472c(C2780h.m3081H(this.f12006a) ? 2131099742 : 2131099699);
        c2531a.m3473b(this.f12006a.getString(2131821052));
        c2531a.f8874y = true;
        c2531a.f8875z = true;
        c2531a.m3466i(2131821061);
        View$OnClickListenerC2530g.C2531a m3468g = c2531a.m3468g(2131820654);
        m3468g.f8870u = new View$OnClickListenerC2530g.AbstractC2533c() { // from class: m8.a
            @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
            /* renamed from: g */
            public final void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
                C3670d c3670d = C3670d.this;
                int i2 = i;
                boolean z3 = z2;
                boolean z4 = z;
                Objects.requireNonNull(c3670d);
                if (i2 == 0) {
                    c3670d.m1903g(z3);
                } else if (i2 == 1) {
                    c3670d.m1902h(z4);
                } else if (i2 != 2) {
                } else {
                    c3670d.m1904f();
                }
            }
        };
        m3468g.m3465j();
    }

    /* renamed from: j */
    public final void m1900j(boolean z) {
        if (m1905e()) {
            return;
        }
        if (z) {
            int i = this.f12016k;
            if (i == -1) {
                this.f12013h++;
                this.f12014i--;
                this.f12016k = 1;
            } else if (i == 0) {
                this.f12016k = 1;
                this.f12013h++;
            } else if (i == 1) {
                this.f12016k = 0;
                this.f12013h--;
            }
        } else {
            int i2 = this.f12016k;
            if (i2 == -1) {
                this.f12014i--;
                this.f12016k = 0;
            } else if (i2 == 0) {
                this.f12016k = -1;
                this.f12014i++;
            } else if (i2 == 1) {
                this.f12016k = -1;
                this.f12014i++;
                this.f12013h--;
            }
        }
        FragmentSocial.f7596b.m1894f();
    }
}
