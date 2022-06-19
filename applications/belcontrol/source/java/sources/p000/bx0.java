package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.flexaspect.android.everycallcontrol.p003ui.customview.rangeseekbar.RangeSeekBar;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.EnumSet;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import p000.fa1;
import p000.i91;
import p000.m91;
import p000.q71;
/* renamed from: bx0 */
/* loaded from: classes-dex2jar.jar:bx0.class */
public class bx0 {

    /* renamed from: a */
    public cx0 f2010a;

    /* renamed from: b */
    public Context f2011b;

    /* renamed from: c */
    public View f2012c;

    /* renamed from: d */
    public View f2013d;

    /* renamed from: e */
    public TextView f2014e;

    /* renamed from: f */
    public TextView f2015f;

    /* renamed from: g */
    public TextView f2016g;

    /* renamed from: h */
    public TextView f2017h;

    /* renamed from: i */
    public TextView f2018i;

    /* renamed from: j */
    public EditText f2019j;

    /* renamed from: k */
    public EditText f2020k;

    /* renamed from: l */
    public Dialog f2021l;

    /* renamed from: m */
    public ConstraintLayout f2022m;

    /* renamed from: n */
    public x81 f2023n;

    /* renamed from: o */
    public RangeSeekBar f2024o;

    /* renamed from: p */
    public i91.EnumC1446b[] f2025p = {i91.EnumC1446b.ARBITRARY, i91.EnumC1446b.WHOLE_COUNTRY, i91.EnumC1446b.AREA_CODE, i91.EnumC1446b.PARTIAL, i91.EnumC1446b.FULL};

    /* renamed from: q */
    public dx0 f2026q = new xw0(this);

    /* renamed from: bx0$b */
    /* loaded from: classes-dex2jar.jar:bx0$b.class */
    public class C0262b extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ Dialog f2027a;

        /* renamed from: b */
        public final /* synthetic */ View f2028b;

        public C0262b(bx0 bx0Var, Dialog dialog, View view) {
            this.f2027a = dialog;
            this.f2028b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            this.f2027a.dismiss();
            this.f2028b.setVisibility(4);
        }
    }

    /* renamed from: bx0$c */
    /* loaded from: classes-dex2jar.jar:bx0$c.class */
    public static /* synthetic */ class C0263c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2029a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[cx0.values().length];
            f2029a = iArr;
            try {
                iArr[cx0.AREA_CODE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2029a[cx0.SIMILAR_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2029a[cx0.WILD_CARD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2029a[cx0.PHOHE_NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public bx0(Context context, View view, cx0 cx0Var) {
        this.f2011b = context;
        this.f2012c = view;
        this.f2010a = cx0Var;
        m5564l();
    }

    /* renamed from: n */
    public /* synthetic */ boolean m5561o(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            oe1.m1053w(this.f2011b, this.f2019j);
            return true;
        }
        return false;
    }

    /* renamed from: p */
    public /* synthetic */ void m5559q(View view) {
        this.f2023n = null;
    }

    /* renamed from: r */
    public /* synthetic */ boolean m5557s(TextView textView, int i, KeyEvent keyEvent) {
        boolean z;
        if (i == 6) {
            oe1.m1053w(this.f2011b, textView);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: t */
    public /* synthetic */ void m5555u(View view) {
        m5566j(this.f2013d, false, this.f2021l, this.f2012c);
    }

    /* renamed from: v */
    public /* synthetic */ void m5553w(DialogInterface dialogInterface) {
        m5566j(this.f2013d, true, null, this.f2012c);
    }

    /* renamed from: x */
    public /* synthetic */ boolean m5551y(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        boolean z = false;
        if (i == 4) {
            m5566j(this.f2013d, false, this.f2021l, this.f2012c);
            z = true;
        }
        return z;
    }

    /* renamed from: z */
    public /* synthetic */ void m5584A() {
        this.f2024o.setEnabled(true);
        this.f2017h.setVisibility(8);
    }

    /* renamed from: C */
    public final void m5582C(View view) {
        String str;
        String str2;
        q71.EnumC1620g enumC1620g = q71.EnumC1620g.WHITE_LIST;
        if (!r71.m716f(enumC1620g) && !this.f2020k.getText().toString().isEmpty()) {
            oe1.m1058t0(this.f2011b, "BLOCKED_LIST_FULL");
            m5566j(this.f2013d, false, this.f2021l, this.f2012c);
            return;
        }
        int i = C0263c.f2029a[this.f2010a.ordinal()];
        if (i == 1) {
            m5569g(enumC1620g);
        } else if (i == 2) {
            m5579F(enumC1620g);
        } else {
            if (i == 3) {
                str2 = this.f2020k.getText().toString().trim();
                str = "";
            } else if (i != 4) {
                return;
            } else {
                str2 = this.f2020k.getText().toString().trim();
                str = this.f2019j.getText().toString();
            }
            m5567i(str2, str, enumC1620g);
        }
    }

    /* renamed from: D */
    public final void m5581D(View view) {
        String str;
        String str2;
        q71.EnumC1620g enumC1620g = q71.EnumC1620g.BLACK_LIST;
        if (!r71.m716f(enumC1620g) && !this.f2020k.getText().toString().isEmpty()) {
            oe1.m1060s0(this.f2011b, "BLOCKED_LIST_FULL");
            m5566j(this.f2013d, false, this.f2021l, this.f2012c);
            return;
        }
        int i = C0263c.f2029a[this.f2010a.ordinal()];
        if (i == 1) {
            m5569g(enumC1620g);
        } else if (i == 2) {
            m5579F(enumC1620g);
        } else {
            if (i == 3) {
                str2 = this.f2020k.getText().toString().trim();
                str = "";
            } else if (i != 4) {
                return;
            } else {
                str2 = this.f2020k.getText().toString().trim();
                str = this.f2019j.getText().toString();
            }
            m5567i(str2, str, enumC1620g);
        }
    }

    /* renamed from: E */
    public final void m5580E(q71.EnumC1620g enumC1620g) {
        this.f2023n.f8639j = EnumSet.of(q71.EnumC1618e.CALL, q71.EnumC1618e.SMS, q71.EnumC1618e.MMS);
        x81 x81Var = this.f2023n;
        x81Var.f8641l = enumC1620g;
        x81Var.mo148z();
        Toast.makeText(this.f2011b, 2131821869, 0).show();
        m91.m1281a(this, m91.EnumC1470c.RULE_CHANGED, null);
        m5566j(this.f2013d, false, this.f2021l, this.f2012c);
    }

    /* renamed from: F */
    public final void m5579F(q71.EnumC1620g enumC1620g) {
        x81 x81Var = this.f2023n;
        if (x81Var == null) {
            this.f2017h.setVisibility(0);
            TextView textView = this.f2017h;
            textView.setText(textView.getContext().getString(this.f2020k.getText().toString().isEmpty() ? 2131822206 : 2131821898));
            i91 m1800o = fa1.C1420e.m1800o(this.f2020k.getText().toString().trim());
            if (m1800o != null && m1800o.m1594t()) {
                this.f2017h.setText(2131821001);
            }
            m5565k(this.f2017h);
            return;
        }
        i91.EnumC1446b enumC1446b = x81Var.f8638h;
        if (enumC1446b != i91.EnumC1446b.FULL && enumC1446b != i91.EnumC1446b.ARBITRARY) {
            m5580E(enumC1620g);
            return;
        }
        this.f2017h.setVisibility(0);
        TextView textView2 = this.f2017h;
        textView2.setText(textView2.getContext().getString(2131821302));
        m5565k(this.f2017h);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0081  */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5578G(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L5
            return
        L5:
            r0 = r5
            android.widget.EditText r0 = r0.f2020k
            android.text.Editable r0 = r0.getText()
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.trim()
            i91 r0 = p000.fa1.C1420e.m1800o(r0)
            r7 = r0
            r0 = r5
            x81 r0 = r0.f2023n
            if (r0 != 0) goto L28
            r0 = r5
            x81 r1 = new x81
            r2 = r1
            r2.<init>()
            r0.f2023n = r1
        L28:
            r0 = r5
            x81 r0 = r0.f2023n
            r1 = r7
            android.database.Cursor r0 = r0.m162K(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6b
            r0 = r8
            boolean r0 = r0.moveToFirst()
            if (r0 == 0) goto L6b
        L3e:
            x81 r0 = new x81
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r8
            x81 r0 = r0.m164I(r1)
            r0 = r9
            i91$b r0 = r0.f8638h
            i91$b r1 = p000.i91.EnumC1446b.FULL
            if (r0 != r1) goto L62
            r0 = r5
            x81 r0 = r0.f2023n
            r1 = r8
            x81 r0 = r0.m164I(r1)
        L62:
            r0 = r8
            boolean r0 = r0.moveToNext()
            if (r0 != 0) goto L3e
        L6b:
            r0 = r8
            if (r0 == 0) goto L75
            r0 = r8
            r0.close()
        L75:
            r0 = r5
            x81 r0 = r0.f2023n
            r8 = r0
            r0 = r8
            i91 r0 = r0.f8637g
            if (r0 != 0) goto L86
            r0 = r8
            r1 = r7
            r0.f8637g = r1
        L86:
            r0 = r8
            r1 = r5
            i91$b[] r1 = r1.f2025p
            r2 = r6
            r1 = r1[r2]
            r0.f8638h = r1
            r0 = r5
            r1 = r5
            android.widget.EditText r1 = r1.f2020k
            r2 = r8
            java.lang.String r2 = r2.m161L()
            r3 = 1
            r0.m5577H(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.bx0.m5578G(int):void");
    }

    /* renamed from: H */
    public final void m5577H(EditText editText, String str, boolean z) {
        String str2;
        if (str.contains("(XXX) XXX-XXXX")) {
            str2 = "\\(XXX\\) XXX-XXXX";
        } else {
            str2 = "XXX-XXXX";
            if (!str.contains("XXX-XXXX")) {
                str2 = "XXXX";
            }
        }
        Pattern compile = Pattern.compile(str2);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        try {
            Matcher matcher = compile.matcher(str);
            if (matcher.find()) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(g8.d(editText.getContext(), 2131100061)), matcher.start(), matcher.end(), 18);
            }
        } catch (PatternSyntaxException e) {
        }
        editText.setText(spannableStringBuilder, TextView.BufferType.EDITABLE);
    }

    /* renamed from: I */
    public void m5576I() {
        if (this.f2021l.isShowing()) {
            return;
        }
        this.f2021l.show();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d8  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5569g(p000.q71.EnumC1620g r5) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.bx0.m5569g(q71$g):void");
    }

    /* renamed from: h */
    public final void m5568h(q71.EnumC1620g enumC1620g, String str, String str2, boolean z) {
        int i;
        TextView textView;
        Context context;
        boolean z2 = false;
        if (this.f2020k.getText().toString().isEmpty()) {
            this.f2017h.setVisibility(0);
            int i2 = C0263c.f2029a[this.f2010a.ordinal()];
            if (i2 != 3) {
                if (i2 == 4) {
                    textView = this.f2017h;
                    context = textView.getContext();
                    i = 2131822206;
                }
                m5565k(this.f2017h);
                return;
            }
            textView = this.f2017h;
            context = textView.getContext();
            i = 2131822418;
            textView.setText(context.getString(i));
            m5565k(this.f2017h);
            return;
        }
        i91 m1800o = fa1.C1420e.m1800o(str);
        i91 m1802m = fa1.C1420e.m1802m(str);
        if (m1802m != null) {
            z2 = true;
            m1800o = m1802m;
        }
        if (this.f2023n == null) {
            this.f2023n = new x81();
        }
        this.f2023n.m156Q(m1800o);
        this.f2023n.f8637g = m1800o;
        if (z) {
            m1800o = fa1.C1420e.m1801n(str);
            this.f2023n.f8638h = i91.EnumC1446b.AREA_CODE;
        }
        if (z2) {
            if (str.replaceAll("\\D", "").length() == 0) {
                return;
            }
            this.f2023n.m157P(m1800o);
            x81 x81Var = this.f2023n;
            x81Var.f8638h = i91.EnumC1446b.ARBITRARY;
            x81Var.f8637g.m1591w(str);
        }
        x81 x81Var2 = this.f2023n;
        x81Var2.f8636f = str2;
        x81Var2.f8642m = System.currentTimeMillis();
        m5580E(enumC1620g);
    }

    /* renamed from: i */
    public final void m5567i(String str, String str2, q71.EnumC1620g enumC1620g) {
        m5568h(enumC1620g, str, str2, false);
    }

    /* renamed from: j */
    public final void m5566j(View view, boolean z, Dialog dialog, View view2) {
        Animator animator;
        View findViewById = view.findViewById(2131362374);
        int hypot = (int) Math.hypot(findViewById.getWidth(), findViewById.getHeight());
        int x = (int) (view2.getX() + (view2.getWidth() / 2));
        int y = (int) (view2.getY() + view2.getHeight() + 56.0f);
        if (z) {
            animator = ViewAnimationUtils.createCircularReveal(findViewById, x, y, 0.0f, hypot);
            findViewById.setVisibility(0);
        } else {
            animator = ViewAnimationUtils.createCircularReveal(findViewById, x, y, hypot, 0.0f);
            animator.addListener(new C0262b(this, dialog, findViewById));
        }
        animator.setDuration(700L);
        animator.start();
    }

    /* renamed from: k */
    public final void m5565k(View view) {
        this.f2017h.setVisibility(0);
    }

    /* renamed from: l */
    public final void m5564l() {
        this.f2013d = View.inflate(this.f2011b, 2131558564, null);
        Dialog dialog = new Dialog(this.f2011b, 2131886397);
        this.f2021l = dialog;
        dialog.requestWindowFeature(1);
        this.f2021l.setContentView(this.f2013d);
        Window window = this.f2021l.getWindow();
        Objects.requireNonNull(window);
        window.setBackgroundDrawable(new ColorDrawable(0));
        this.f2019j = (EditText) this.f2013d.findViewById(2131362909);
        this.f2017h = (TextView) this.f2013d.findViewById(2131363453);
        this.f2022m = (ConstraintLayout) this.f2013d.findViewById(2131363535);
        this.f2019j.setHint(2131821800);
        this.f2019j.setInputType(8192);
        String str = "";
        this.f2019j.setText("");
        this.f2019j.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: ax0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return bx0.this.m5561o(textView, i, keyEvent);
            }
        });
        this.f2024o = (RangeSeekBar) this.f2013d.findViewById(2131363127);
        this.f2020k = (EditText) this.f2013d.findViewById(2131362992);
        this.f2024o.setRange(0.0f, (this.f2025p.length - 1) * 10, 1.0f);
        this.f2024o.setProgress((this.f2025p.length - 1) * 10);
        this.f2024o.setOnRangeChangedListener(new a(this));
        this.f2020k.addTextChangedListener(new ex0(this.f2026q));
        this.f2020k.setOnClickListener(new sw0(this));
        this.f2020k.setInputType(1);
        this.f2020k.setOnEditorActionListener(new yw0(this));
        this.f2014e = (TextView) this.f2013d.findViewById(2131363487);
        this.f2015f = (TextView) this.f2013d.findViewById(2131363465);
        this.f2016g = (TextView) this.f2013d.findViewById(2131363464);
        this.f2018i = (TextView) this.f2013d.findViewById(2131363435);
        TextView textView = (TextView) this.f2013d.findViewById(2131363481);
        TextView textView2 = (TextView) this.f2013d.findViewById(2131363460);
        int countryCodeForRegion = PhoneNumberUtil.getInstance().getCountryCodeForRegion(b91.m5723k(0).toUpperCase());
        if (countryCodeForRegion > 0) {
            str = "+" + countryCodeForRegion;
        }
        int i = C0263c.f2029a[this.f2010a.ordinal()];
        if (i == 1) {
            this.f2018i.setVisibility(0);
            this.f2018i.setText(Html.fromHtml(this.f2011b.getString(2131820755)));
            this.f2013d.setBackground(g8.f(this.f2011b, 2131231111));
            this.f2020k.setInputType(3);
            this.f2014e.setText(2131820752);
            this.f2015f.setText(2131821272);
            this.f2020k.setHint(2131821489);
            this.f2016g.setVisibility(8);
            this.f2019j.setVisibility(8);
        } else if (i == 2) {
            this.f2013d.setBackground(g8.f(this.f2011b, 2131231102));
            this.f2020k.setText(str);
            EditText editText = this.f2020k;
            editText.setSelection(editText.getText().length());
            this.f2020k.setInputType(3);
            this.f2014e.setText(2131822207);
            this.f2016g.setText(2131821002);
            this.f2019j.setVisibility(8);
            this.f2024o.setVisibility(0);
        } else if (i == 3) {
            this.f2013d.setBackground(g8.f(this.f2011b, 2131231099));
            this.f2020k.setText(str);
            textView2.setText(Html.fromHtml(textView2.getContext().getString(2131822419)));
            textView.setText(Html.fromHtml(textView2.getContext().getString(2131822420)));
            this.f2014e.setText(2131821108);
            this.f2020k.setHint(2131821491);
            this.f2015f.setText(2131821274);
            this.f2016g.setText(2131821496);
            this.f2019j.setVisibility(8);
            this.f2022m.setVisibility(0);
        }
        this.f2013d.findViewById(2131362632).setOnClickListener(new tw0(this));
        this.f2013d.findViewById(2131362636).setOnClickListener(new vw0(this));
        this.f2013d.findViewById(2131362629).setOnClickListener(new zw0(this));
        this.f2021l.setOnShowListener(new ww0(this));
        this.f2021l.setOnKeyListener(new uw0(this));
    }
}
