package p160l8;

import android.app.TimePickerDialog;
import android.content.Context;
import android.os.Build;
import android.support.p012v4.media.C0082b;
import android.text.format.DateFormat;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.ToggleButton;
import androidx.appcompat.widget.SwitchCompat;
import ba.C0748b;
import com.rengwuxian.materialedittext.MaterialAutoCompleteTextView;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import p066d0.C2134a;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2779g;
import p095f8.C2780h;
import p117h8.C3047u;
import p117h8.C3049v;
import p149k8.C3399o;
import p149k8.C3406v;
import p149k8.C3410z;
import p278w8.C4775f;
import p278w8.C4776g;
import p278w8.C4782k;
import p278w8.C4788o;
import p278w8.C4789p;
import p278w8.C4790q;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
import p303z2.C5053n;
/* renamed from: l8.w */
/* loaded from: classes2-dex2jar.jar:l8/w.class */
public class C3540w {

    /* renamed from: a */
    public final Context f11702a;

    /* renamed from: b */
    public List<C3047u> f11703b;

    /* renamed from: c */
    public int f11704c;

    /* renamed from: d */
    public LinearLayout f11705d = null;

    /* renamed from: e */
    public Button f11706e = null;

    /* JADX WARN: Removed duplicated region for block: B:18:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3540w(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p160l8.C3540w.<init>(android.content.Context):void");
    }

    /* renamed from: a */
    public boolean m2217a(int i) {
        int i2;
        if (C2780h.m3084E(this.f11702a)) {
            if (this.f11704c != 0 && !C2780h.m3070S(this.f11702a)) {
                return false;
            }
            boolean z = true;
            boolean z2 = C2780h.m3059b0(this.f11702a).intValue() == i;
            if (!m2212f(1)) {
                return false;
            }
            if ((!m2212f(2) || !z2) && (!m2212f(3) || z2)) {
                return false;
            }
            m2212f(14);
            if (m2212f(14)) {
                int i3 = Calendar.getInstance().get(7);
                if (i3 == 1) {
                    i2 = 7;
                } else if (i3 != 3) {
                    i2 = 3;
                    if (i3 != 4) {
                        i2 = i3 != 5 ? i3 != 6 ? i3 != 7 ? 1 : 6 : 5 : 4;
                    }
                } else {
                    i2 = 2;
                }
                z = false;
                if (m2215c(i2)) {
                    Date date = new Date();
                    Date m3106i = C2779g.m3106i(m2213e(1));
                    int m3097r = C2779g.m3097r(date);
                    int m3094u = C2779g.m3094u(date);
                    int m3097r2 = C2779g.m3097r(m3106i);
                    int m3094u2 = C2779g.m3094u(m3106i);
                    boolean z3 = m3097r > m3097r2 || (m3097r == m3097r2 && m3094u >= m3094u2);
                    Date m3106i2 = C2779g.m3106i(m2213e(2));
                    int m3097r3 = C2779g.m3097r(m3106i2);
                    int m3094u3 = C2779g.m3094u(m3106i2);
                    boolean z4 = m3097r < m3097r3 || (m3097r == m3097r3 && m3094u <= m3094u3);
                    z = false;
                    if (!(m3097r2 < m3097r3 || (m3097r2 == m3097r3 && m3094u2 <= m3094u3)) ? z3 || z4 : z3 && z4) {
                        z = true;
                    }
                }
            }
            return z;
        }
        return false;
    }

    /* renamed from: b */
    public String m2216b() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11703b.get(this.f11704c).f10346z);
        sb.append("-");
        StringBuilder m8752j = C0082b.m8752j(C0082b.m8754h(sb, this.f11703b.get(this.f11704c).f10321A, " "));
        m8752j.append(this.f11703b.get(this.f11704c).f10339s ? "1" : "0");
        StringBuilder m8752j2 = C0082b.m8752j(m8752j.toString());
        m8752j2.append(this.f11703b.get(this.f11704c).f10340t ? "2" : "0");
        StringBuilder m8752j3 = C0082b.m8752j(m8752j2.toString());
        m8752j3.append(this.f11703b.get(this.f11704c).f10341u ? "3" : "0");
        StringBuilder m8752j4 = C0082b.m8752j(m8752j3.toString());
        m8752j4.append(this.f11703b.get(this.f11704c).f10342v ? "4" : "0");
        StringBuilder m8752j5 = C0082b.m8752j(m8752j4.toString());
        m8752j5.append(this.f11703b.get(this.f11704c).f10343w ? "5" : "0");
        StringBuilder m8752j6 = C0082b.m8752j(m8752j5.toString());
        m8752j6.append(this.f11703b.get(this.f11704c).f10344x ? "6" : "0");
        StringBuilder m8752j7 = C0082b.m8752j(m8752j6.toString());
        String str = "0";
        if (this.f11703b.get(this.f11704c).f10345y) {
            str = "7";
        }
        m8752j7.append(str);
        return m8752j7.toString();
    }

    /* renamed from: c */
    public final boolean m2215c(int i) {
        switch (i) {
            case 1:
                return this.f11703b.get(this.f11704c).f10339s;
            case 2:
                return this.f11703b.get(this.f11704c).f10340t;
            case 3:
                return this.f11703b.get(this.f11704c).f10341u;
            case 4:
                return this.f11703b.get(this.f11704c).f10342v;
            case 5:
                return this.f11703b.get(this.f11704c).f10343w;
            case 6:
                return this.f11703b.get(this.f11704c).f10344x;
            case 7:
                return this.f11703b.get(this.f11704c).f10345y;
            default:
                return false;
        }
    }

    /* renamed from: d */
    public int m2214d() {
        return this.f11703b.size();
    }

    /* renamed from: e */
    public final String m2213e(int i) {
        return i != 1 ? i != 2 ? "" : this.f11703b.get(this.f11704c).f10321A : this.f11703b.get(this.f11704c).f10346z;
    }

    /* renamed from: f */
    public boolean m2212f(int i) {
        if (this.f11704c >= this.f11703b.size()) {
            return false;
        }
        int i2 = this.f11704c;
        switch (i) {
            case 1:
                return this.f11703b.get(i2).f10324d;
            case 2:
                return this.f11703b.get(i2).f10326f;
            case 3:
                return this.f11703b.get(i2).f10327g;
            case 4:
                return this.f11703b.get(i2).f10328h;
            case 5:
                return this.f11703b.get(i2).f10329i;
            case 6:
                return this.f11703b.get(i2).f10330j;
            case 7:
                return this.f11703b.get(i2).f10333m;
            case 8:
                return this.f11703b.get(i2).f10331k;
            case 9:
                return this.f11703b.get(i2).f10332l;
            case 10:
                return this.f11703b.get(i2).f10334n;
            case 11:
                return this.f11703b.get(i2).f10335o;
            case 12:
                return this.f11703b.get(i2).f10336p;
            case 13:
                return this.f11703b.get(i2).f10337q;
            case 14:
                return this.f11703b.get(i2).f10338r;
            default:
                return false;
        }
    }

    /* renamed from: g */
    public final void m2211g() {
        LinearLayout linearLayout = this.f11705d;
        if (linearLayout == null) {
            return;
        }
        m2204n(linearLayout, this.f11706e);
        Button button = this.f11706e;
        button.setEnabled(button.getVisibility() == 0 && m2214d() <= 10);
    }

    /* renamed from: h */
    public final void m2210h() {
        this.f11703b = new C4776g(new C4788o(new AbstractC4932a[0]), C3047u.class).m477n(C3049v.f10356i, true).mo456l();
    }

    /* renamed from: i */
    public final void m2209i() {
        if (C2779g.m3090y()) {
            this.f11703b.get(this.f11704c).f10324d = this.f11703b.get(this.f11704c).f10326f || this.f11703b.get(this.f11704c).f10327g;
        }
    }

    /* renamed from: j */
    public final void m2208j(int i, boolean z) {
        C4782k<Boolean> c4782k;
        switch (i) {
            case 1:
                c4782k = C3049v.f10370w.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10339s = z;
                break;
            case 2:
                c4782k = C3049v.f10371x.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10340t = z;
                break;
            case 3:
                c4782k = C3049v.f10372y.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10341u = z;
                break;
            case 4:
                c4782k = C3049v.f10373z.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10342v = z;
                break;
            case 5:
                c4782k = C3049v.f10347A.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10343w = z;
                break;
            case 6:
                c4782k = C3049v.f10348B.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10344x = z;
                break;
            case 7:
                c4782k = C3049v.f10349C.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10345y = z;
                break;
            default:
                return;
        }
        new C4791r(new C4790q(C3047u.class).m460a(c4782k), C3049v.f10353f.m236e(Integer.valueOf(this.f11703b.get(this.f11704c).f10322b))).mo458i();
    }

    /* renamed from: k */
    public final void m2207k(int i, String str) {
        C4782k<String> c4782k;
        if (i == 1) {
            C4782k<String> m239a = C3049v.f10350D.m239a(str);
            this.f11703b.get(this.f11704c).f10346z = str;
            c4782k = m239a;
        } else if (i != 2) {
            return;
        } else {
            C4782k<String> m239a2 = C3049v.f10351E.m239a(str);
            this.f11703b.get(this.f11704c).f10321A = str;
            c4782k = m239a2;
        }
        new C4791r(new C4790q(C3047u.class).m460a(c4782k), C3049v.f10353f.m236e(Integer.valueOf(this.f11703b.get(this.f11704c).f10322b))).mo458i();
    }

    /* renamed from: l */
    public void m2206l(int i, boolean z) {
        if (this.f11704c < 0) {
            this.f11704c = 0;
        }
        if (this.f11703b.isEmpty()) {
            this.f11704c = 0;
            m2210h();
        }
        C4782k<Boolean> c4782k = null;
        switch (i) {
            case 1:
                if (this.f11704c != 0 && !C2779g.m3090y()) {
                    C0748b.m7409b().m7404g(new C3406v());
                    break;
                } else {
                    C4782k<Boolean> m239a = C3049v.f10355h.m239a(Boolean.valueOf(z));
                    this.f11703b.get(this.f11704c).f10324d = z;
                    c4782k = m239a;
                    if (z) {
                        c4782k = m239a;
                        if (!this.f11703b.get(this.f11704c).f10326f) {
                            c4782k = m239a;
                            if (!this.f11703b.get(this.f11704c).f10327g) {
                                this.f11703b.get(this.f11704c).f10326f = true;
                                c4782k = m239a;
                                break;
                            }
                        }
                    }
                }
                break;
            case 2:
                boolean z2 = z;
                if (!this.f11703b.get(this.f11704c).f10324d) {
                    z2 = z;
                    if (!z) {
                        z2 = true;
                    }
                }
                C4782k<Boolean> m239a2 = C3049v.f10357j.m239a(Boolean.valueOf(z2));
                this.f11703b.get(this.f11704c).f10326f = z2;
                m2209i();
                c4782k = m239a2;
                if (!z2) {
                    Context context = this.f11702a;
                    C2779g.m3121L(context, null, context.getString(2131821005, "1"));
                    c4782k = m239a2;
                    break;
                }
                break;
            case 3:
                boolean z3 = z;
                if (!this.f11703b.get(this.f11704c).f10324d) {
                    z3 = z;
                    if (!z) {
                        z3 = true;
                    }
                }
                C4782k<Boolean> m239a3 = C3049v.f10358k.m239a(Boolean.valueOf(z3));
                this.f11703b.get(this.f11704c).f10327g = z3;
                m2209i();
                c4782k = m239a3;
                if (!z3) {
                    Context context2 = this.f11702a;
                    C2779g.m3121L(context2, null, context2.getString(2131821005, "2"));
                    c4782k = m239a3;
                    break;
                }
                break;
            case 4:
                c4782k = C3049v.f10359l.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10328h = z;
                break;
            case 5:
                c4782k = C3049v.f10360m.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10329i = z;
                break;
            case 6:
                c4782k = C3049v.f10361n.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10330j = z;
                break;
            case 7:
                c4782k = C3049v.f10364q.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10333m = z;
                break;
            case 8:
                c4782k = C3049v.f10362o.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10331k = z;
                break;
            case 9:
                c4782k = C3049v.f10363p.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10332l = z;
                break;
            case 10:
                c4782k = C3049v.f10365r.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10334n = z;
                break;
            case 11:
                c4782k = C3049v.f10366s.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10335o = z;
                break;
            case 12:
                c4782k = C3049v.f10367t.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10336p = z;
                break;
            case 13:
                c4782k = C3049v.f10368u.m239a(Boolean.valueOf(z));
                this.f11703b.get(this.f11704c).f10337q = z;
                break;
            case 14:
                c4782k = C3049v.f10369v.m239a(Boolean.valueOf(z));
                boolean z4 = this.f11703b.get(this.f11704c).f10338r;
                this.f11703b.get(this.f11704c).f10338r = z;
                boolean z5 = this.f11703b.get(this.f11704c).f10338r;
                break;
            default:
                return;
        }
        if (c4782k != null) {
            new C4791r(new C4790q(C3047u.class).m460a(c4782k), C3049v.f10353f.m236e(Integer.valueOf(this.f11703b.get(this.f11704c).f10322b))).mo458i();
        }
    }

    /* renamed from: m */
    public final void m2205m(ToggleButton toggleButton, boolean z, boolean z2) {
        toggleButton.setEnabled(z);
        toggleButton.setChecked(z2);
        toggleButton.setTextColor((!z2 || !z) ? C2134a.m3845b(this.f11702a, 2131099737) : C2134a.m3845b(this.f11702a, 2131099735));
    }

    /* renamed from: n */
    public void m2204n(LinearLayout linearLayout, Button button) {
        View view;
        this.f11705d = linearLayout;
        this.f11706e = button;
        int i = 1;
        while (i <= 10) {
            switch (i) {
                case 1:
                    view = linearLayout.findViewById(2131296909);
                    break;
                case 2:
                    view = linearLayout.findViewById(2131296911);
                    break;
                case 3:
                    view = linearLayout.findViewById(2131296912);
                    break;
                case 4:
                    view = linearLayout.findViewById(2131296913);
                    break;
                case 5:
                    view = linearLayout.findViewById(2131296914);
                    break;
                case 6:
                    view = linearLayout.findViewById(2131296915);
                    break;
                case 7:
                    view = linearLayout.findViewById(2131296916);
                    break;
                case 8:
                    view = linearLayout.findViewById(2131296917);
                    break;
                case 9:
                    view = linearLayout.findViewById(2131296918);
                    break;
                case 10:
                    view = linearLayout.findViewById(2131296910);
                    break;
                default:
                    view = null;
                    break;
            }
            if (view != null) {
                view.setVisibility((i >= m2214d() || !C2780h.m3070S(this.f11702a)) ? 8 : 0);
                if (view.getVisibility() != 8) {
                    final int i2 = i;
                    view.setOnClickListener(new View.OnClickListener() { // from class: l8.v
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            C3540w c3540w = C3540w.this;
                            int i3 = i2;
                            c3540w.f11704c = i3;
                            C0748b.m7409b().m7404g(new C3410z(i3));
                        }
                    });
                    final int i3 = i;
                    view.findViewById(2131296531).setOnClickListener(new View.OnClickListener() { // from class: l8.a
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            final C3540w c3540w = C3540w.this;
                            final int i4 = i3;
                            View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(c3540w.f11702a);
                            c2531a.f8851b = c3540w.f11702a.getString(2131820989) + " " + i4 + "?";
                            c2531a.m3463l(2131099739);
                            c2531a.m3470e(2131231000);
                            c2531a.f8874y = true;
                            c2531a.f8875z = true;
                            c2531a.m3466i(2131820943);
                            View$OnClickListenerC2530g.C2531a m3468g = c2531a.m3468g(2131820654);
                            m3468g.f8870u = new View$OnClickListenerC2530g.AbstractC2533c() { // from class: l8.n
                                @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
                                /* renamed from: g */
                                public final void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
                                    C3540w c3540w2 = C3540w.this;
                                    int i5 = i4;
                                    for (int size = c3540w2.f11703b.size() - 1; size > i5; size--) {
                                        new C4791r(new C4790q(C3047u.class).m460a(C3049v.f10356i.m239a(Integer.valueOf(c3540w2.f11703b.get(size).f10325e - 1))), C3049v.f10353f.m239a(Integer.valueOf(c3540w2.f11703b.get(size).f10322b))).mo458i();
                                        c3540w2.f11703b.get(size).f10325e--;
                                    }
                                    new C4791r(new C4776g(new C4775f(), C3047u.class), C3049v.f10353f.m236e(Integer.valueOf(c3540w2.f11703b.get(i5).f10322b))).mo458i();
                                    c3540w2.f11703b.remove(i5);
                                    c3540w2.m2211g();
                                }
                            };
                            m3468g.m3465j();
                        }
                    });
                    boolean z = C2780h.m3084E(this.f11702a) && C2780h.m3070S(this.f11702a);
                    final C3047u c3047u = this.f11703b.get(i);
                    TextView textView = (TextView) view.findViewById(2131296939);
                    TextView textView2 = (TextView) view.findViewById(2131296938);
                    TextView textView3 = (TextView) view.findViewById(2131296944);
                    TextView textView4 = (TextView) view.findViewById(2131296933);
                    final SwitchCompat switchCompat = (SwitchCompat) view.findViewById(2131296931);
                    ImageView imageView = (ImageView) view.findViewById(2131296531);
                    ImageView imageView2 = (ImageView) view.findViewById(2131296940);
                    textView.setText(c3047u.f10323c);
                    imageView2.setImageResource(z ? 2131231085 : 2131231086);
                    int m3845b = C2134a.m3845b(this.f11702a, 2131099699);
                    int m3845b2 = C2134a.m3845b(this.f11702a, 2131099737);
                    int m3845b3 = C2134a.m3845b(this.f11702a, 2131099742);
                    if (z) {
                        m3845b2 = m3845b;
                        if (C2780h.m3081H(this.f11702a)) {
                            m3845b2 = m3845b3;
                        }
                    }
                    textView.setTextColor(m3845b2);
                    textView2.setText(String.valueOf(c3047u.f10325e));
                    StringBuilder sb = new StringBuilder();
                    sb.append(c3047u.f10339s ? C0082b.m8756f(this.f11702a, 2131820644, new StringBuilder(), " ") : "");
                    sb.append(c3047u.f10340t ? C0082b.m8756f(this.f11702a, 2131820645, new StringBuilder(), " ") : "");
                    sb.append(c3047u.f10341u ? C0082b.m8756f(this.f11702a, 2131820646, new StringBuilder(), " ") : "");
                    sb.append(c3047u.f10342v ? C0082b.m8756f(this.f11702a, 2131820647, new StringBuilder(), " ") : "");
                    sb.append(c3047u.f10343w ? C0082b.m8756f(this.f11702a, 2131820648, new StringBuilder(), " ") : "");
                    sb.append(c3047u.f10344x ? C0082b.m8756f(this.f11702a, 2131820649, new StringBuilder(), " ") : "");
                    String str = "";
                    if (c3047u.f10345y) {
                        str = C0082b.m8756f(this.f11702a, 2131820650, new StringBuilder(), " ");
                    }
                    sb.append(str);
                    textView4.setText(sb.toString());
                    textView3.setText(C2779g.m3102m(this.f11702a, C2779g.m3106i(c3047u.f10346z)) + " - " + C2779g.m3102m(this.f11702a, C2779g.m3106i(c3047u.f10321A)));
                    textView3.setVisibility(c3047u.f10338r ? 0 : 8);
                    textView4.setVisibility(c3047u.f10338r ? 0 : 8);
                    c3047u.m2694d((ImageView) view.findViewById(2131296935), null, c3047u.f10326f && z, (ImageView) view.findViewById(2131296936), null, c3047u.f10327g && z, false);
                    view.findViewById(2131296486).setVisibility((!c3047u.f10328h || c3047u.f10333m || c3047u.f10332l) ? 8 : 0);
                    view.findViewById(2131296490).setVisibility((!c3047u.f10331k || c3047u.f10333m) ? 8 : 0);
                    view.findViewById(2131296366).setVisibility((!c3047u.f10332l || (c3047u.f10333m && c3047u.f10330j) || !c3047u.f10331k) ? 8 : 0);
                    view.findViewById(2131296365).setVisibility((!c3047u.f10329i || c3047u.f10333m) ? 8 : 0);
                    view.findViewById(2131297221).setVisibility(c3047u.f10330j ? 0 : 8);
                    view.findViewById(2131297222).setVisibility((!c3047u.f10333m || (c3047u.f10332l && c3047u.f10331k) || !c3047u.f10330j) ? 8 : 0);
                    view.findViewById(2131296653).setVisibility((!c3047u.f10334n || (c3047u.f10333m && c3047u.f10330j) || (c3047u.f10332l && c3047u.f10331k)) ? 8 : 0);
                    view.findViewById(2131296626).setVisibility((!c3047u.f10335o || (c3047u.f10333m && c3047u.f10330j) || (c3047u.f10332l && c3047u.f10331k)) ? 8 : 0);
                    view.findViewById(2131296530).setVisibility(c3047u.f10336p ? 0 : 8);
                    view.findViewById(2131296886).setVisibility(c3047u.f10337q ? 0 : 8);
                    view.findViewById(2131296985).setVisibility(c3047u.f10338r ? 0 : 8);
                    switchCompat.setOnCheckedChangeListener(null);
                    switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: l8.m
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                            C3540w c3540w = C3540w.this;
                            C3047u c3047u2 = c3047u;
                            SwitchCompat switchCompat2 = switchCompat;
                            Objects.requireNonNull(c3540w);
                            if (!compoundButton.isPressed()) {
                                return;
                            }
                            int i4 = c3047u2.f10325e;
                            if (i4 < c3540w.f11703b.size() && i4 >= 0) {
                                int i5 = c3540w.f11704c;
                                c3540w.f11704c = i4;
                                c3540w.m2206l(1, z2);
                                c3540w.f11704c = i5;
                            }
                            switchCompat2.setChecked(c3047u2.f10324d);
                        }
                    });
                    switchCompat.setChecked(c3047u.f10324d);
                    switchCompat.setEnabled(z);
                    view.setEnabled(z);
                    imageView.setEnabled(z);
                    ImageView imageView3 = (ImageView) view.findViewById(2131296949);
                    ImageView imageView4 = (ImageView) view.findViewById(2131296947);
                    imageView3.setEnabled(c3047u.f10325e > 1 && z);
                    imageView4.setEnabled(c3047u.f10325e < this.f11703b.size() - 1 && z);
                    int m3845b4 = C2134a.m3845b(this.f11702a, 2131099737);
                    int m3845b5 = C2134a.m3845b(this.f11702a, 2131099739);
                    imageView3.setColorFilter(imageView3.isEnabled() ? m3845b5 : m3845b4);
                    if (imageView4.isEnabled()) {
                        m3845b4 = m3845b5;
                    }
                    imageView4.setColorFilter(m3845b4);
                    imageView3.setOnClickListener(new View$OnClickListenerC3538u(this, c3047u, 2));
                    imageView4.setOnClickListener(new View$OnClickListenerC3537t(this, c3047u, 2));
                }
            }
            i++;
        }
    }

    /* renamed from: o */
    public C3540w m2203o(final View view) {
        boolean z = !C2780h.m3042k(this.f11702a).isEmpty();
        boolean z2 = this.f11703b.get(this.f11704c).f10331k && this.f11703b.get(this.f11704c).f10332l;
        boolean z3 = this.f11703b.get(this.f11704c).f10330j && this.f11703b.get(this.f11704c).f10333m;
        ((LinearLayout) view.findViewById(2131296948)).setVisibility(this.f11704c == 0 ? 8 : 0);
        ((TextView) view.findViewById(2131296941)).setText(String.valueOf(this.f11704c));
        final SwitchCompat switchCompat = (SwitchCompat) view.findViewById(2131297075);
        ImageView imageView = (ImageView) view.findViewById(2131296680);
        ImageView imageView2 = (ImageView) view.findViewById(2131296681);
        CheckBox checkBox = (CheckBox) view.findViewById(2131296461);
        CheckBox checkBox2 = (CheckBox) view.findViewById(2131296462);
        SwitchCompat switchCompat2 = (SwitchCompat) view.findViewById(2131297084);
        SwitchCompat switchCompat3 = (SwitchCompat) view.findViewById(2131297081);
        SwitchCompat switchCompat4 = (SwitchCompat) view.findViewById(2131297085);
        SwitchCompat switchCompat5 = (SwitchCompat) view.findViewById(2131297083);
        TextView textView = (TextView) view.findViewById(2131297195);
        SwitchCompat switchCompat6 = (SwitchCompat) view.findViewById(2131297069);
        SwitchCompat switchCompat7 = (SwitchCompat) view.findViewById(2131297065);
        SwitchCompat switchCompat8 = (SwitchCompat) view.findViewById(2131297064);
        TextView textView2 = (TextView) view.findViewById(2131296370);
        SwitchCompat switchCompat9 = (SwitchCompat) view.findViewById(2131297062);
        SwitchCompat switchCompat10 = (SwitchCompat) view.findViewById(2131297063);
        TextView textView3 = (TextView) view.findViewById(2131296369);
        SwitchCompat switchCompat11 = (SwitchCompat) view.findViewById(2131297078);
        SwitchCompat switchCompat12 = (SwitchCompat) view.findViewById(2131297082);
        TextView textView4 = (TextView) view.findViewById(2131297194);
        View findViewById = view.findViewById(2131296634);
        final Button button = (Button) view.findViewById(2131297150);
        Button button2 = (Button) view.findViewById(2131297152);
        ToggleButton toggleButton = (ToggleButton) view.findViewById(2131296510);
        ToggleButton toggleButton2 = (ToggleButton) view.findViewById(2131296511);
        ToggleButton toggleButton3 = (ToggleButton) view.findViewById(2131296512);
        ToggleButton toggleButton4 = (ToggleButton) view.findViewById(2131296513);
        ToggleButton toggleButton5 = (ToggleButton) view.findViewById(2131296514);
        ToggleButton toggleButton6 = (ToggleButton) view.findViewById(2131296515);
        ToggleButton toggleButton7 = (ToggleButton) view.findViewById(2131296516);
        TextView textView5 = (TextView) view.findViewById(2131297151);
        TextView textView6 = (TextView) view.findViewById(2131297153);
        boolean m3084E = C2780h.m3084E(this.f11702a);
        switchCompat.setChecked(this.f11703b.get(this.f11704c).f10324d);
        switchCompat.setEnabled(m3084E);
        int i = this.f11704c;
        if (i == 0) {
            switchCompat.setText(this.f11702a.getString(2131820975));
        } else {
            switchCompat.setText(this.f11703b.get(i).f10323c);
        }
        if (this.f11704c != 0) {
            switchCompat.setOnLongClickListener(new View.OnLongClickListener() { // from class: l8.c
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    C3540w c3540w = C3540w.this;
                    SwitchCompat switchCompat13 = switchCompat;
                    View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(c3540w.f11702a);
                    c2531a.m3464k(2131820952);
                    c2531a.m3463l(2131099739);
                    c2531a.m3470e(17301566);
                    c2531a.m3472c(2131099739);
                    c2531a.f8874y = true;
                    c2531a.f8875z = true;
                    c2531a.m3471d(2131492947, true);
                    c2531a.m3466i(2131820943);
                    c2531a.f8870u = new C5053n(c3540w, switchCompat13, 4);
                    View view3 = c2531a.m3468g(2131820654).m3465j().f8822c.f8864o;
                    String string = c3540w.f11702a.getResources().getString(2131820728);
                    MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) view3.findViewById(2131296841);
                    materialAutoCompleteTextView.setHint(string);
                    materialAutoCompleteTextView.setFloatingLabelText(string);
                    materialAutoCompleteTextView.setText(c3540w.f11703b.get(c3540w.f11704c).f10323c);
                    return true;
                }
            });
        }
        boolean z4 = switchCompat.isChecked() && switchCompat.isEnabled();
        if (this.f11703b.get(this.f11704c).f10325e != 0) {
            z4 = true;
        }
        imageView.setEnabled(m3084E);
        imageView2.setEnabled(m3084E);
        this.f11703b.get(this.f11704c).m2694d(imageView, checkBox, this.f11703b.get(this.f11704c).f10326f && z4, imageView2, checkBox2, this.f11703b.get(this.f11704c).f10327g && z4, true);
        switchCompat2.setEnabled(z4 && z && !z2 && !z3);
        switchCompat2.setChecked(this.f11703b.get(this.f11704c).f10328h);
        switchCompat3.setEnabled(z4 && !z3);
        switchCompat3.setChecked(this.f11703b.get(this.f11704c).f10329i);
        switchCompat4.setEnabled(z4 && !z3);
        switchCompat4.setChecked(this.f11703b.get(this.f11704c).f10330j);
        switchCompat5.setEnabled(z4 && !z3 && !z2);
        switchCompat5.setChecked(this.f11703b.get(this.f11704c).f10331k && C2779g.m3114a(this.f11702a));
        textView.setEnabled(switchCompat5.isEnabled());
        switchCompat10.setEnabled(z4 && switchCompat5.isChecked() && !z3);
        switchCompat10.setChecked(this.f11703b.get(this.f11704c).f10332l);
        textView3.setEnabled(switchCompat10.isEnabled());
        switchCompat9.setEnabled(z4 && switchCompat4.isChecked() && !z2);
        switchCompat9.setChecked(this.f11703b.get(this.f11704c).f10333m);
        switchCompat7.setEnabled(z4 && !z2 && !z3);
        switchCompat7.setChecked(this.f11703b.get(this.f11704c).f10334n);
        switchCompat8.setEnabled(z4 && z && !z2 && !z3);
        switchCompat8.setChecked(this.f11703b.get(this.f11704c).f10335o);
        Context context = this.f11702a;
        textView2.setText(context.getString(2131820980, new Locale("", C2780h.m3042k(context)).getDisplayCountry()));
        textView2.setVisibility(z ? 0 : 8);
        textView2.setEnabled(switchCompat8.isEnabled());
        switchCompat6.setEnabled(z4);
        switchCompat6.setChecked(C2779g.m3113b(this.f11702a) && this.f11703b.get(this.f11704c).f10336p);
        switchCompat11.setEnabled(z4);
        switchCompat11.setChecked(this.f11703b.get(this.f11704c).f10337q);
        switchCompat12.setEnabled(this.f11704c == 0 && z4);
        switchCompat12.setChecked(this.f11703b.get(this.f11704c).f10338r);
        textView4.setVisibility(!switchCompat12.isChecked() ? 0 : 8);
        textView4.setEnabled(switchCompat12.isEnabled());
        findViewById.setVisibility(switchCompat12.isChecked() ? 0 : 8);
        String m3102m = C2779g.m3102m(this.f11702a, C2779g.m3106i(this.f11703b.get(this.f11704c).f10346z));
        textView5.setEnabled(z4);
        button.setEnabled(z4);
        button.setText(m3102m);
        String m3102m2 = C2779g.m3102m(this.f11702a, C2779g.m3106i(this.f11703b.get(this.f11704c).f10321A));
        textView6.setEnabled(z4);
        button2.setEnabled(z4);
        button2.setText(m3102m2);
        m2205m(toggleButton, z4, this.f11703b.get(this.f11704c).f10339s);
        m2205m(toggleButton2, z4, this.f11703b.get(this.f11704c).f10340t);
        m2205m(toggleButton3, z4, this.f11703b.get(this.f11704c).f10341u);
        m2205m(toggleButton4, z4, this.f11703b.get(this.f11704c).f10342v);
        m2205m(toggleButton5, z4, this.f11703b.get(this.f11704c).f10343w);
        m2205m(toggleButton6, z4, this.f11703b.get(this.f11704c).f10344x);
        m2205m(toggleButton7, z4, this.f11703b.get(this.f11704c).f10345y);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: l8.f

            /* renamed from: b */
            public final /* synthetic */ C3540w f11666b;

            {
                this.f11666b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11666b;
                        View view2 = view;
                        if (Build.VERSION.SDK_INT < 23 || C2779g.m3113b(c3540w.f11702a)) {
                            c3540w.m2206l(12, z5);
                            c3540w.m2203o(view2);
                            return;
                        } else if (!z5) {
                            return;
                        } else {
                            C0748b.m7409b().m7404g(new C3399o(4));
                            return;
                        }
                    case 1:
                        C3540w c3540w2 = this.f11666b;
                        View view3 = view;
                        c3540w2.m2206l(1, z5);
                        c3540w2.m2203o(view3);
                        return;
                    default:
                        C3540w c3540w3 = this.f11666b;
                        View view4 = view;
                        c3540w3.m2206l(7, z5);
                        if (z5) {
                            c3540w3.m2206l(9, false);
                        }
                        c3540w3.m2203o(view4);
                        return;
                }
            }
        });
        switchCompat2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: l8.g
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                C3540w.this.m2206l(4, z5);
            }
        });
        switchCompat3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: l8.d

            /* renamed from: b */
            public final /* synthetic */ C3540w f11661b;

            {
                this.f11661b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                switch (r5) {
                    case 0:
                        this.f11661b.m2206l(5, z5);
                        return;
                    default:
                        this.f11661b.m2206l(10, z5);
                        return;
                }
            }
        });
        switchCompat4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: l8.j
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                C3540w c3540w = C3540w.this;
                View view2 = view;
                c3540w.m2206l(6, z5);
                c3540w.m2203o(view2);
            }
        });
        switchCompat9.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: l8.f

            /* renamed from: b */
            public final /* synthetic */ C3540w f11666b;

            {
                this.f11666b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11666b;
                        View view2 = view;
                        if (Build.VERSION.SDK_INT < 23 || C2779g.m3113b(c3540w.f11702a)) {
                            c3540w.m2206l(12, z5);
                            c3540w.m2203o(view2);
                            return;
                        } else if (!z5) {
                            return;
                        } else {
                            C0748b.m7409b().m7404g(new C3399o(4));
                            return;
                        }
                    case 1:
                        C3540w c3540w2 = this.f11666b;
                        View view3 = view;
                        c3540w2.m2206l(1, z5);
                        c3540w2.m2203o(view3);
                        return;
                    default:
                        C3540w c3540w3 = this.f11666b;
                        View view4 = view;
                        c3540w3.m2206l(7, z5);
                        if (z5) {
                            c3540w3.m2206l(9, false);
                        }
                        c3540w3.m2203o(view4);
                        return;
                }
            }
        });
        switchCompat5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: l8.l
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                C3540w c3540w = C3540w.this;
                View view2 = view;
                if (Build.VERSION.SDK_INT < 23 || C2779g.m3114a(c3540w.f11702a)) {
                    c3540w.m2206l(8, z5);
                    c3540w.m2203o(view2);
                } else if (!z5) {
                } else {
                    C0748b.m7409b().m7404g(new C3399o(1));
                }
            }
        });
        switchCompat10.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: l8.e

            /* renamed from: b */
            public final /* synthetic */ C3540w f11663b;

            {
                this.f11663b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11663b;
                        View view2 = view;
                        c3540w.m2206l(14, z5);
                        c3540w.m2203o(view2);
                        return;
                    default:
                        C3540w c3540w2 = this.f11663b;
                        View view3 = view;
                        c3540w2.m2206l(9, z5);
                        if (z5) {
                            c3540w2.m2206l(7, false);
                        }
                        c3540w2.m2203o(view3);
                        return;
                }
            }
        });
        switchCompat7.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: l8.d

            /* renamed from: b */
            public final /* synthetic */ C3540w f11661b;

            {
                this.f11661b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                switch (r5) {
                    case 0:
                        this.f11661b.m2206l(5, z5);
                        return;
                    default:
                        this.f11661b.m2206l(10, z5);
                        return;
                }
            }
        });
        switchCompat8.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: l8.h
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                C3540w.this.m2206l(11, z5);
            }
        });
        switchCompat6.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: l8.f

            /* renamed from: b */
            public final /* synthetic */ C3540w f11666b;

            {
                this.f11666b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11666b;
                        View view2 = view;
                        if (Build.VERSION.SDK_INT < 23 || C2779g.m3113b(c3540w.f11702a)) {
                            c3540w.m2206l(12, z5);
                            c3540w.m2203o(view2);
                            return;
                        } else if (!z5) {
                            return;
                        } else {
                            C0748b.m7409b().m7404g(new C3399o(4));
                            return;
                        }
                    case 1:
                        C3540w c3540w2 = this.f11666b;
                        View view3 = view;
                        c3540w2.m2206l(1, z5);
                        c3540w2.m2203o(view3);
                        return;
                    default:
                        C3540w c3540w3 = this.f11666b;
                        View view4 = view;
                        c3540w3.m2206l(7, z5);
                        if (z5) {
                            c3540w3.m2206l(9, false);
                        }
                        c3540w3.m2203o(view4);
                        return;
                }
            }
        });
        switchCompat11.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: l8.i
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                C3540w.this.m2206l(13, z5);
            }
        });
        switchCompat12.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: l8.e

            /* renamed from: b */
            public final /* synthetic */ C3540w f11663b;

            {
                this.f11663b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11663b;
                        View view2 = view;
                        c3540w.m2206l(14, z5);
                        c3540w.m2203o(view2);
                        return;
                    default:
                        C3540w c3540w2 = this.f11663b;
                        View view3 = view;
                        c3540w2.m2206l(9, z5);
                        if (z5) {
                            c3540w2.m2206l(7, false);
                        }
                        c3540w2.m2203o(view3);
                        return;
                }
            }
        });
        imageView.setOnClickListener(new View.OnClickListener(this) { // from class: l8.r

            /* renamed from: b */
            public final /* synthetic */ C3540w f11689b;

            {
                this.f11689b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11689b;
                        View view3 = view;
                        c3540w.m2206l(2, !c3540w.m2212f(2));
                        c3540w.m2203o(view3);
                        return;
                    case 1:
                        C3540w c3540w2 = this.f11689b;
                        View view4 = view;
                        c3540w2.m2208j(2, !c3540w2.m2215c(2));
                        c3540w2.m2203o(view4);
                        return;
                    default:
                        C3540w c3540w3 = this.f11689b;
                        View view5 = view;
                        c3540w3.m2208j(6, !c3540w3.m2215c(6));
                        c3540w3.m2203o(view5);
                        return;
                }
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener(this) { // from class: l8.s

            /* renamed from: b */
            public final /* synthetic */ C3540w f11692b;

            {
                this.f11692b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11692b;
                        View view3 = view;
                        c3540w.m2206l(3, !c3540w.m2212f(3));
                        c3540w.m2203o(view3);
                        return;
                    case 1:
                        C3540w c3540w2 = this.f11692b;
                        View view4 = view;
                        c3540w2.m2208j(3, !c3540w2.m2215c(3));
                        c3540w2.m2203o(view4);
                        return;
                    default:
                        C3540w c3540w3 = this.f11692b;
                        View view5 = view;
                        c3540w3.m2208j(7, !c3540w3.m2215c(7));
                        c3540w3.m2203o(view5);
                        return;
                }
            }
        });
        checkBox.setOnClickListener(new View$OnClickListenerC3534q(imageView, 0));
        checkBox2.setOnClickListener(new View$OnClickListenerC3533p(imageView2, 0));
        toggleButton.setOnClickListener(new View$OnClickListenerC3537t(this, view, 0));
        toggleButton2.setOnClickListener(new View.OnClickListener(this) { // from class: l8.r

            /* renamed from: b */
            public final /* synthetic */ C3540w f11689b;

            {
                this.f11689b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11689b;
                        View view3 = view;
                        c3540w.m2206l(2, !c3540w.m2212f(2));
                        c3540w.m2203o(view3);
                        return;
                    case 1:
                        C3540w c3540w2 = this.f11689b;
                        View view4 = view;
                        c3540w2.m2208j(2, !c3540w2.m2215c(2));
                        c3540w2.m2203o(view4);
                        return;
                    default:
                        C3540w c3540w3 = this.f11689b;
                        View view5 = view;
                        c3540w3.m2208j(6, !c3540w3.m2215c(6));
                        c3540w3.m2203o(view5);
                        return;
                }
            }
        });
        toggleButton3.setOnClickListener(new View.OnClickListener(this) { // from class: l8.s

            /* renamed from: b */
            public final /* synthetic */ C3540w f11692b;

            {
                this.f11692b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11692b;
                        View view3 = view;
                        c3540w.m2206l(3, !c3540w.m2212f(3));
                        c3540w.m2203o(view3);
                        return;
                    case 1:
                        C3540w c3540w2 = this.f11692b;
                        View view4 = view;
                        c3540w2.m2208j(3, !c3540w2.m2215c(3));
                        c3540w2.m2203o(view4);
                        return;
                    default:
                        C3540w c3540w3 = this.f11692b;
                        View view5 = view;
                        c3540w3.m2208j(7, !c3540w3.m2215c(7));
                        c3540w3.m2203o(view5);
                        return;
                }
            }
        });
        toggleButton4.setOnClickListener(new View$OnClickListenerC3538u(this, view, 0));
        toggleButton5.setOnClickListener(new View$OnClickListenerC3537t(this, view, 1));
        toggleButton6.setOnClickListener(new View.OnClickListener(this) { // from class: l8.r

            /* renamed from: b */
            public final /* synthetic */ C3540w f11689b;

            {
                this.f11689b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11689b;
                        View view3 = view;
                        c3540w.m2206l(2, !c3540w.m2212f(2));
                        c3540w.m2203o(view3);
                        return;
                    case 1:
                        C3540w c3540w2 = this.f11689b;
                        View view4 = view;
                        c3540w2.m2208j(2, !c3540w2.m2215c(2));
                        c3540w2.m2203o(view4);
                        return;
                    default:
                        C3540w c3540w3 = this.f11689b;
                        View view5 = view;
                        c3540w3.m2208j(6, !c3540w3.m2215c(6));
                        c3540w3.m2203o(view5);
                        return;
                }
            }
        });
        toggleButton7.setOnClickListener(new View.OnClickListener(this) { // from class: l8.s

            /* renamed from: b */
            public final /* synthetic */ C3540w f11692b;

            {
                this.f11692b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (r6) {
                    case 0:
                        C3540w c3540w = this.f11692b;
                        View view3 = view;
                        c3540w.m2206l(3, !c3540w.m2212f(3));
                        c3540w.m2203o(view3);
                        return;
                    case 1:
                        C3540w c3540w2 = this.f11692b;
                        View view4 = view;
                        c3540w2.m2208j(3, !c3540w2.m2215c(3));
                        c3540w2.m2203o(view4);
                        return;
                    default:
                        C3540w c3540w3 = this.f11692b;
                        View view5 = view;
                        c3540w3.m2208j(7, !c3540w3.m2215c(7));
                        c3540w3.m2203o(view5);
                        return;
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: l8.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                final C3540w c3540w = C3540w.this;
                final Button button3 = button;
                boolean is24HourFormat = DateFormat.is24HourFormat(c3540w.f11702a);
                Date m3106i = C2779g.m3106i(c3540w.m2213e(1));
                TimePickerDialog timePickerDialog = new TimePickerDialog(view2.getContext(), new TimePickerDialog.OnTimeSetListener() { // from class: l8.k
                    @Override // android.app.TimePickerDialog.OnTimeSetListener
                    public final void onTimeSet(TimePicker timePicker, int i2, int i3) {
                        C3540w c3540w2 = C3540w.this;
                        Button button4 = button3;
                        Objects.requireNonNull(c3540w2);
                        Date m3107h = C2779g.m3107h(i2, i3);
                        button4.setText(C2779g.m3102m(c3540w2.f11702a, m3107h));
                        c3540w2.m2207k(1, C2779g.m3101n(m3107h));
                    }
                }, C2779g.m3097r(m3106i), C2779g.m3094u(m3106i), is24HourFormat);
                timePickerDialog.setTitle("");
                timePickerDialog.show();
                int color = c3540w.f11702a.getResources().getColor(2131099739);
                timePickerDialog.getButton(-1).setTextColor(color);
                timePickerDialog.getButton(-2).setTextColor(color);
            }
        });
        button2.setOnClickListener(new View$OnClickListenerC3538u(this, button2, 1));
        return this;
    }

    /* renamed from: p */
    public final void m2202p(int i, int i2) {
        C4790q c4790q = new C4790q(C3047u.class);
        C4933b<Integer> c4933b = C3049v.f10356i;
        C4789p m460a = c4790q.m460a(c4933b.m239a(Integer.valueOf(this.f11703b.get(i2).f10325e)));
        C4933b<Integer> c4933b2 = C3049v.f10353f;
        new C4791r(m460a, c4933b2.m239a(Integer.valueOf(this.f11703b.get(i).f10322b))).mo458i();
        new C4791r(new C4790q(C3047u.class).m460a(c4933b.m239a(Integer.valueOf(this.f11703b.get(i).f10325e))), c4933b2.m239a(Integer.valueOf(this.f11703b.get(i2).f10322b))).mo458i();
        this.f11703b.get(i).f10325e++;
        this.f11703b.get(i2).f10325e--;
        List<C3047u> list = this.f11703b;
        list.add(i2 + 1, list.get(i));
        this.f11703b.remove(i);
        m2211g();
    }
}
