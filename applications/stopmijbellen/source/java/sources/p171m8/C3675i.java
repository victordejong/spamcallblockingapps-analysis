package p171m8;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mglab.scm.visual.C2107c;
import com.rengwuxian.materialedittext.MaterialAutoCompleteTextView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2779g;
import p095f8.C2780h;
import p106g8.C2914d;
import p117h8.C3026c;
import p117h8.C3027d;
import p117h8.C3043q;
import p170m7.C3661g;
import p171m8.C3670d;
import p193o8.C3953g0;
import p193o8.C3955h0;
import p233s6.C4316k;
import p277w7.C4749e;
import p277w7.C4766p;
import p278w8.C4776g;
import p278w8.C4788o;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p293y2.C4995l;
/* renamed from: m8.i */
/* loaded from: classes2-dex2jar.jar:m8/i.class */
public class C3675i {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: r */
    public static Context f12027r;

    /* renamed from: a */
    public final C3673g f12028a;

    /* renamed from: b */
    public final View f12029b;

    /* renamed from: c */
    public String f12030c;

    /* renamed from: d */
    public String f12031d;

    /* renamed from: e */
    public final TextView f12032e;

    /* renamed from: f */
    public final TextView f12033f;

    /* renamed from: g */
    public final TextView f12034g;

    /* renamed from: h */
    public final TextView f12035h;

    /* renamed from: i */
    public final ImageView f12036i;

    /* renamed from: j */
    public final View f12037j;

    /* renamed from: k */
    public final View f12038k;

    /* renamed from: l */
    public final View f12039l;

    /* renamed from: m */
    public final View f12040m;

    /* renamed from: n */
    public final View f12041n;

    /* renamed from: o */
    public final View f12042o;

    /* renamed from: p */
    public boolean f12043p = false;

    /* renamed from: q */
    public final ArrayList<C3670d> f12044q;

    @SuppressLint({"CutPasteId"})
    public C3675i(Context context, View view) {
        ArrayList<C3670d> arrayList = new ArrayList<>();
        this.f12044q = arrayList;
        C3673g c3673g = new C3673g(context, arrayList);
        this.f12028a = c3673g;
        ((ListView) view.findViewById(2131296612)).setAdapter((ListAdapter) c3673g);
        f12027r = context;
        this.f12029b = view;
        this.f12032e = (TextView) view.findViewById(2131296890);
        this.f12033f = (TextView) view.findViewById(2131296739);
        this.f12034g = (TextView) view.findViewById(2131296738);
        this.f12035h = (TextView) view.findViewById(2131296452);
        this.f12036i = (ImageView) view.findViewById(2131296929);
        View findViewById = view.findViewById(2131296637);
        this.f12037j = findViewById;
        View findViewById2 = view.findViewById(2131296635);
        this.f12038k = findViewById2;
        View findViewById3 = view.findViewById(2131296636);
        this.f12039l = findViewById3;
        View findViewById4 = view.findViewById(2131296880);
        this.f12040m = findViewById4;
        View findViewById5 = view.findViewById(2131296612);
        this.f12041n = findViewById5;
        View findViewById6 = view.findViewById(2131296603);
        this.f12042o = findViewById6;
        findViewById4.setVisibility(0);
        findViewById6.setVisibility(8);
        findViewById5.setVisibility(8);
        findViewById.setVisibility(8);
        findViewById3.setVisibility(8);
        findViewById2.setVisibility(0);
    }

    /* renamed from: b */
    public static String m1898b() {
        return C2779g.m3111d("hy#Ut*PkU@385%d2", C2780h.m3057c0(f12027r));
    }

    /* renamed from: a */
    public final void m1899a(C4316k c4316k) {
        long rawOffset = new GregorianCalendar().getTimeZone().getRawOffset();
        TimeUnit.HOURS.convert(rawOffset, TimeUnit.MILLISECONDS);
        String mo1104d = c4316k.m1108f("dt").mo1104d();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        try {
            Date parse = simpleDateFormat.parse(mo1104d);
            parse.toString();
            parse.setTime(parse.getTime() + rawOffset);
            date = parse;
            parse.toString();
            date = parse;
        } catch (Exception e) {
        }
        this.f12044q.add(new C3670d(f12027r, this.f12030c, c4316k.m1108f(FacebookAdapter.KEY_ID).mo1105a(), c4316k.m1108f(AppMeasurementSdk.ConditionalUserProperty.NAME).mo1104d(), c4316k.m1108f("text").mo1104d(), c4316k.m1108f("posnegrating").mo1105a(), c4316k.m1108f("category").mo1105a(), c4316k.m1108f("like").mo1105a(), c4316k.m1108f("dislike").mo1105a(), c4316k.m1108f("is_mine").mo1105a(), c4316k.m1108f("myvote").mo1105a(), date));
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: c */
    public final void m1897c() {
        this.f12042o.setVisibility(8);
        this.f12037j.setVisibility(8);
        this.f12039l.setVisibility(8);
        this.f12038k.setVisibility(0);
        try {
            m1898b();
            C4316k c4316k = new C4316k();
            c4316k.f13470a.put("number", c4316k.m1109e(this.f12030c));
            String m3131B = C2779g.m3131B(16);
            String str = m3131B.substring(13) + m3131B.substring(0, 13);
            String str2 = m3131B.substring(4) + m3131B.substring(0, 4);
            m1898b();
            c4316k.toString();
            C4766p c4766p = (C4766p) C4749e.m498b(f12027r);
            c4766p.m492j(m1898b() + "get.php");
            c4766p.mo11f("deviceid", C2779g.m3104k(f12027r));
            c4766p.mo11f("data", m3131B);
            c4766p.mo12e(15000);
            c4766p.mo14b(C2914d.m2853c(str, "body", c4316k.toString()));
            ((C3661g) c4766p.mo10d()).m1919k(new C3674h(this, str2));
        } catch (Exception e) {
            e.printStackTrace();
            this.f12039l.setVisibility(0);
            this.f12038k.setVisibility(8);
            this.f12042o.setVisibility(8);
        }
    }

    /* renamed from: d */
    public C3670d m1896d() {
        return this.f12044q.isEmpty() ? null : this.f12044q.get(0);
    }

    /* renamed from: e */
    public void m1895e() {
        boolean z;
        C3026c c3026c;
        int i;
        C3670d c3670d;
        final C2107c c2107c = new C2107c(f12027r, this.f12029b);
        Iterator<C3670d> it2 = this.f12044q.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            } else if (it2.next().m1905e()) {
                z = true;
                break;
            }
        }
        final boolean z2 = !z;
        Iterator<C3670d> it3 = this.f12044q.iterator();
        while (true) {
            if (it3.hasNext()) {
                c3670d = it3.next();
                if (c3670d.m1905e()) {
                    break;
                }
            } else {
                String str = "";
                String str2 = this.f12030c;
                Iterator it4 = new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class), C3027d.f10159j.m234g(-1)).mo456l().iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        c3026c = null;
                        break;
                    }
                    c3026c = (C3026c) it4.next();
                    if (C3043q.m2697y(c3026c.f10150c, str2)) {
                        break;
                    }
                }
                if (c3026c != null) {
                    String str3 = c3026c.f10151d;
                    if (str3 != null) {
                        str = str3;
                    }
                    i = c3026c.f10153f;
                } else {
                    str = "";
                    i = 1;
                }
                c3670d = new C3670d(f12027r, this.f12030c, 0, str, "", -1, i, 0, 0, 1, 0, new Date());
            }
        }
        String string = z2 ? c2107c.f7646a.getResources().getString(2131821058) : c2107c.f7646a.getResources().getString(2131821049);
        final boolean m3081H = C2780h.m3081H(c2107c.f7646a);
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(c2107c.f7646a);
        c2531a.f8851b = string;
        c2531a.m3463l(2131099739);
        c2531a.m3470e(17301566);
        c2531a.m3472c(m3081H ? 2131099742 : 2131099699);
        int i2 = 2131099742;
        if (m3081H) {
            i2 = 2131099793;
        }
        c2531a.m3474a(i2);
        c2531a.f8874y = false;
        c2531a.f8875z = false;
        c2531a.m3471d(2131492943, true);
        c2531a.m3466i(2131820943);
        final C3670d c3670d2 = c3670d;
        final String str4 = string;
        c2531a.f8870u = new View$OnClickListenerC2530g.AbstractC2533c() { // from class: o8.e0
            @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
            /* renamed from: g */
            public final void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
                final C2107c c2107c2 = C2107c.this;
                final C3670d c3670d3 = c3670d2;
                final boolean z3 = z2;
                String str5 = str4;
                boolean z4 = m3081H;
                Objects.requireNonNull(c2107c2);
                if (!((c3670d3.f12013h == 0 && c3670d3.f12014i == 0) ? false : true)) {
                    c2107c2.m3918n(c3670d3, z3);
                    return;
                }
                View$OnClickListenerC2530g.C2531a c2531a2 = new View$OnClickListenerC2530g.C2531a(c2107c2.f7646a);
                c2531a2.f8851b = str5;
                c2531a2.m3463l(2131099739);
                c2531a2.m3470e(17301566);
                c2531a2.m3472c(z4 ? 2131099742 : 2131099699);
                int i3 = 2131099742;
                if (z4) {
                    i3 = 2131099793;
                }
                c2531a2.m3474a(i3);
                c2531a2.f8874y = true;
                c2531a2.f8875z = true;
                c2531a2.m3471d(2131492944, true);
                c2531a2.m3466i(2131820943);
                c2531a2.f8870u = new View$OnClickListenerC2530g.AbstractC2533c() { // from class: o8.d0
                    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
                    /* renamed from: g */
                    public final void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g2, EnumC2524b enumC2524b2) {
                        C2107c.this.m3918n(c3670d3, z3);
                    }
                };
                View view = c2531a2.m3468g(2131820654).m3465j().f8822c.f8864o;
                ((Button) view.findViewById(2131296727)).setText(String.valueOf(c3670d3.f12013h));
                ((Button) view.findViewById(2131296550)).setText(String.valueOf(c3670d3.f12014i));
            }
        };
        View$OnClickListenerC2530g m3465j = c2531a.m3468g(2131820654).m3465j();
        C2107c.f7645k = m3465j;
        m3465j.m3481c(EnumC2524b.POSITIVE).setEnabled(false);
        if (!z2) {
            View$OnClickListenerC2530g view$OnClickListenerC2530g = C2107c.f7645k;
            EnumC2524b enumC2524b = EnumC2524b.NEUTRAL;
            view$OnClickListenerC2530g.m3476h(enumC2524b, 2131820694);
            final C3670d c3670d3 = c3670d;
            C2107c.f7645k.m3481c(enumC2524b).setOnClickListener(new View.OnClickListener() { // from class: o8.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C2107c c2107c2 = C2107c.this;
                    boolean z3 = m3081H;
                    C3670d c3670d4 = c3670d3;
                    Objects.requireNonNull(c2107c2);
                    C2107c.f7645k.dismiss();
                    View$OnClickListenerC2530g.C2531a c2531a2 = new View$OnClickListenerC2530g.C2531a(c2107c2.f7646a);
                    c2531a2.m3464k(2131821048);
                    c2531a2.m3463l(2131099739);
                    c2531a2.m3470e(2131230972);
                    c2531a2.m3472c(z3 ? 2131099742 : 2131099699);
                    int i3 = 2131099742;
                    if (z3) {
                        i3 = 2131099793;
                    }
                    c2531a2.m3474a(i3);
                    c2531a2.f8874y = true;
                    c2531a2.f8875z = true;
                    c2531a2.m3471d(2131492949, true);
                    c2531a2.m3466i(2131820943);
                    c2531a2.f8870u = new C4995l(c3670d4, 13);
                    c3670d4.m1908b(c2531a2.m3468g(2131820654).m3465j().f8822c.f8864o);
                }
            });
        }
        View view = C2107c.f7645k.f8822c.f8864o;
        MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) view.findViewById(2131296841);
        String string2 = c2107c.f7646a.getResources().getString(2131820728);
        materialAutoCompleteTextView.setHint(string2);
        materialAutoCompleteTextView.setFloatingLabelText(string2);
        materialAutoCompleteTextView.setAdapter(new ArrayAdapter(c2107c.f7646a, 17367043, C3043q.m2706p()));
        MaterialAutoCompleteTextView materialAutoCompleteTextView2 = (MaterialAutoCompleteTextView) view.findViewById(2131297108);
        String string3 = c2107c.f7646a.getResources().getString(2131820716);
        materialAutoCompleteTextView2.setHint(string3);
        materialAutoCompleteTextView2.setFloatingLabelText(string3);
        ImageView imageView = (ImageView) view.findViewById(2131296929);
        ((Spinner) view.findViewById(2131296453)).setSelection(c3670d.f12012g);
        Spinner spinner = (Spinner) view.findViewById(2131296927);
        int i3 = c3670d.f12011f;
        spinner.setSelection(i3 + 1);
        spinner.setEnabled(true);
        if (i3 == 1) {
            imageView.setImageResource(2131231000);
        } else if (i3 != 2) {
            imageView.setImageResource(2131230998);
        } else {
            imageView.setImageResource(2131230999);
        }
        spinner.setOnItemSelectedListener(new C3953g0(c2107c, imageView));
        materialAutoCompleteTextView.addTextChangedListener(new C3955h0(c2107c, materialAutoCompleteTextView));
        materialAutoCompleteTextView.setText(c3670d.f12009d);
        materialAutoCompleteTextView2.setText(c3670d.f12010e);
        if (!c3670d.f12009d.isEmpty()) {
            materialAutoCompleteTextView2.requestFocus();
        }
    }

    /* renamed from: f */
    public void m1894f() {
        int i;
        int i2;
        this.f12028a.notifyDataSetChanged();
        this.f12040m.setVisibility(this.f12044q.size() == 0 ? 0 : 8);
        this.f12041n.setVisibility(this.f12044q.size() != 0 ? 0 : 8);
        this.f12032e.setText(this.f12030c);
        this.f12033f.setText(this.f12031d);
        this.f12033f.setVisibility(this.f12031d.isEmpty() ? 8 : 0);
        this.f12034g.setVisibility(this.f12031d.isEmpty() ? 8 : 0);
        int[] iArr = new int[7];
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
        Iterator<C3670d> it2 = this.f12044q.iterator();
        while (it2.hasNext()) {
            C3670d next = it2.next();
            int i3 = next.f12012g;
            iArr[i3] = next.m1906d() + 1 + iArr[i3];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i = i5;
            if (i4 >= 7) {
                break;
            }
            int i6 = iArr[i4];
            int i7 = i;
            if (iArr[i4] >= iArr[i]) {
                i7 = i4;
            }
            i4++;
            i5 = i7;
        }
        Iterator<C3670d> it3 = this.f12044q.iterator();
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i2 = i9;
            if (!it3.hasNext()) {
                break;
            }
            C3670d next2 = it3.next();
            int i10 = i2;
            if (next2.f12012g == i) {
                i10 = i2 + next2.m1906d() + 1;
            }
            i8 += next2.m1906d() + 1;
            i9 = i10;
        }
        int i11 = i8 == 0 ? 0 : (i2 * 100) / i8;
        this.f12035h.setText(f12027r.getResources().getStringArray(2130903041)[i] + " (" + i11 + "%)");
        this.f12035h.setVisibility(i11 == 0 ? 8 : 0);
        ImageView imageView = this.f12036i;
        Iterator<C3670d> it4 = this.f12044q.iterator();
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (it4.hasNext()) {
            C3670d next3 = it4.next();
            int i15 = next3.f12011f;
            if (i15 == -1) {
                i13 += next3.m1906d() + 1;
            } else if (i15 == 0) {
                i12 += next3.m1906d() + 1;
            } else if (i15 == 1) {
                i14 += next3.m1906d() + 1;
            }
        }
        boolean z = (i12 < i13 || i12 < i14) ? (i13 < i12 || i13 < i14) ? true : true : false;
        imageView.setImageResource(!z ? !z ? 2131231000 : 2131230999 : 2131230998);
    }

    /* renamed from: g */
    public void m1893g() {
        for (int i = 0; i < this.f12044q.size(); i++) {
            if (this.f12044q.get(i).m1905e()) {
                this.f12044q.remove(i);
                return;
            }
        }
    }
}
