package p078e2;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.support.p012v4.media.C0082b;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.afollestad.materialdialogs.internal.MDButton;
import com.afollestad.materialdialogs.internal.MDRootLayout;
import java.text.NumberFormat;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
import p066d0.C2134a;
import p076e0.C2511f;
import p078e2.C2521a;
import p111h2.C3003b;
import p111h2.C3004c;
import p111h2.C3005d;
import p111h2.RunnableC3002a;
import p291y.C4951d;
/* renamed from: e2.g */
/* loaded from: classes-dex2jar.jar:e2/g.class */
public class View$OnClickListenerC2530g extends DialogC2525c implements View.OnClickListener, C2521a.AbstractC2523b {

    /* renamed from: c */
    public final C2531a f8822c;

    /* renamed from: d */
    public ImageView f8823d;

    /* renamed from: e */
    public TextView f8824e;

    /* renamed from: f */
    public TextView f8825f;

    /* renamed from: g */
    public EditText f8826g;

    /* renamed from: h */
    public RecyclerView f8827h;

    /* renamed from: i */
    public View f8828i;

    /* renamed from: j */
    public FrameLayout f8829j;

    /* renamed from: k */
    public TextView f8830k;

    /* renamed from: l */
    public CheckBox f8831l;

    /* renamed from: m */
    public MDButton f8832m;

    /* renamed from: n */
    public MDButton f8833n;

    /* renamed from: o */
    public MDButton f8834o;

    /* renamed from: p */
    public int f8835p;

    /* renamed from: e2.g$a */
    /* loaded from: classes-dex2jar.jar:e2/g$a.class */
    public static class C2531a {

        /* renamed from: C */
        public Typeface f8838C;

        /* renamed from: D */
        public Typeface f8839D;

        /* renamed from: E */
        public Drawable f8840E;

        /* renamed from: F */
        public RecyclerView.AbstractC0562e<?> f8841F;

        /* renamed from: G */
        public RecyclerView.AbstractC0573m f8842G;

        /* renamed from: H */
        public DialogInterface.OnShowListener f8843H;

        /* renamed from: I */
        public boolean f8844I;

        /* renamed from: J */
        public int f8845J;

        /* renamed from: K */
        public int f8846K;

        /* renamed from: a */
        public final Context f8850a;

        /* renamed from: b */
        public CharSequence f8851b;

        /* renamed from: c */
        public EnumC2526d f8852c;

        /* renamed from: d */
        public EnumC2526d f8853d;

        /* renamed from: e */
        public EnumC2526d f8854e;

        /* renamed from: f */
        public EnumC2526d f8855f;

        /* renamed from: g */
        public EnumC2526d f8856g;

        /* renamed from: h */
        public int f8857h;

        /* renamed from: k */
        public CharSequence f8860k;

        /* renamed from: l */
        public CharSequence f8861l;

        /* renamed from: m */
        public CharSequence f8862m;

        /* renamed from: n */
        public CharSequence f8863n;

        /* renamed from: o */
        public View f8864o;

        /* renamed from: p */
        public int f8865p;

        /* renamed from: q */
        public ColorStateList f8866q;

        /* renamed from: r */
        public ColorStateList f8867r;

        /* renamed from: s */
        public ColorStateList f8868s;

        /* renamed from: t */
        public ColorStateList f8869t;

        /* renamed from: u */
        public AbstractC2533c f8870u;

        /* renamed from: v */
        public AbstractC2533c f8871v;

        /* renamed from: w */
        public AbstractC2533c f8872w;

        /* renamed from: x */
        public int f8873x;

        /* renamed from: i */
        public int f8858i = -1;

        /* renamed from: j */
        public int f8859j = -1;

        /* renamed from: y */
        public boolean f8874y = true;

        /* renamed from: z */
        public boolean f8875z = true;

        /* renamed from: A */
        public int f8836A = -1;

        /* renamed from: B */
        public boolean f8837B = true;

        /* renamed from: L */
        public boolean f8847L = false;

        /* renamed from: M */
        public boolean f8848M = false;

        /* renamed from: N */
        public boolean f8849N = false;

        public C2531a(Context context) {
            EnumC2526d enumC2526d = EnumC2526d.START;
            this.f8852c = enumC2526d;
            this.f8853d = enumC2526d;
            EnumC2526d enumC2526d2 = EnumC2526d.END;
            this.f8854e = enumC2526d2;
            this.f8855f = enumC2526d;
            this.f8856g = enumC2526d;
            this.f8857h = 0;
            this.f8873x = 1;
            this.f8850a = context;
            int m2760h = C3003b.m2760h(context, C3681R.attr.colorAccent, C2134a.m3845b(context, 2131100226));
            this.f8865p = m2760h;
            int m2760h2 = C3003b.m2760h(context, 16843829, m2760h);
            this.f8865p = m2760h2;
            this.f8866q = C3003b.m2766b(context, m2760h2);
            this.f8867r = C3003b.m2766b(context, this.f8865p);
            this.f8868s = C3003b.m2766b(context, this.f8865p);
            this.f8869t = C3003b.m2766b(context, C3003b.m2760h(context, 2130969336, this.f8865p));
            this.f8857h = C3003b.m2760h(context, 2130969322, C3003b.m2760h(context, C3681R.attr.colorControlHighlight, C3003b.m2760h(context, 16843820, 0)));
            NumberFormat.getPercentInstance();
            this.f8873x = C3003b.m2764d(C3003b.m2760h(context, 16842806, 0)) ? 1 : 2;
            if (C4951d.f15105c != null) {
                this.f8852c = enumC2526d;
                this.f8853d = enumC2526d;
                this.f8854e = enumC2526d2;
                this.f8855f = enumC2526d;
                this.f8856g = enumC2526d;
            }
            this.f8852c = C3003b.m2758j(context, 2130969345, this.f8852c);
            this.f8853d = C3003b.m2758j(context, 2130969327, this.f8853d);
            this.f8854e = C3003b.m2758j(context, 2130969324, this.f8854e);
            this.f8855f = C3003b.m2758j(context, 2130969335, this.f8855f);
            this.f8856g = C3003b.m2758j(context, 2130969325, this.f8856g);
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(2130969338, typedValue, true);
            String str = (String) typedValue.string;
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(2130969343, typedValue2, true);
            try {
                m3462m(str, (String) typedValue2.string);
            } catch (Throwable th) {
            }
            if (this.f8839D == null) {
                try {
                    this.f8839D = Typeface.create("sans-serif-medium", 0);
                } catch (Throwable th2) {
                    this.f8839D = Typeface.DEFAULT_BOLD;
                }
            }
            if (this.f8838C == null) {
                try {
                    this.f8838C = Typeface.create("sans-serif", 0);
                } catch (Throwable th3) {
                    Typeface typeface = Typeface.SANS_SERIF;
                    this.f8838C = typeface;
                    if (typeface != null) {
                        return;
                    }
                    this.f8838C = Typeface.DEFAULT;
                }
            }
        }

        /* renamed from: a */
        public C2531a m3474a(int i) {
            this.f8845J = C2134a.m3845b(this.f8850a, i);
            return this;
        }

        /* renamed from: b */
        public C2531a m3473b(CharSequence charSequence) {
            if (this.f8864o == null) {
                this.f8860k = charSequence;
                return this;
            }
            throw new IllegalStateException("You cannot set content() when you're using a custom view.");
        }

        /* renamed from: c */
        public C2531a m3472c(int i) {
            this.f8859j = C2134a.m3845b(this.f8850a, i);
            this.f8848M = true;
            return this;
        }

        /* renamed from: d */
        public C2531a m3471d(int i, boolean z) {
            View inflate = LayoutInflater.from(this.f8850a).inflate(i, (ViewGroup) null);
            if (this.f8860k == null) {
                if (inflate.getParent() != null && (inflate.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) inflate.getParent()).removeView(inflate);
                }
                this.f8864o = inflate;
                this.f8844I = z;
                return this;
            }
            throw new IllegalStateException("You cannot use customView() when you have content set.");
        }

        /* renamed from: e */
        public C2531a m3470e(int i) {
            Resources resources = this.f8850a.getResources();
            ThreadLocal<TypedValue> threadLocal = C2511f.f8775a;
            this.f8840E = resources.getDrawable(i, null);
            return this;
        }

        /* renamed from: f */
        public C2531a m3469f(int i) {
            this.f8846K = C2134a.m3845b(this.f8850a, i);
            this.f8849N = true;
            return this;
        }

        /* renamed from: g */
        public C2531a m3468g(int i) {
            if (i == 0) {
                return this;
            }
            this.f8863n = this.f8850a.getText(i);
            return this;
        }

        /* renamed from: h */
        public C2531a m3467h(int i) {
            if (i == 0) {
                return this;
            }
            this.f8862m = this.f8850a.getText(i);
            return this;
        }

        /* renamed from: i */
        public C2531a m3466i(int i) {
            if (i == 0) {
                return this;
            }
            this.f8861l = this.f8850a.getText(i);
            return this;
        }

        /* renamed from: j */
        public View$OnClickListenerC2530g m3465j() {
            View$OnClickListenerC2530g view$OnClickListenerC2530g = new View$OnClickListenerC2530g(this);
            view$OnClickListenerC2530g.show();
            return view$OnClickListenerC2530g;
        }

        /* renamed from: k */
        public C2531a m3464k(int i) {
            this.f8851b = this.f8850a.getText(i);
            return this;
        }

        /* renamed from: l */
        public C2531a m3463l(int i) {
            this.f8858i = C2134a.m3845b(this.f8850a, i);
            this.f8847L = true;
            return this;
        }

        /* renamed from: m */
        public C2531a m3462m(String str, String str2) {
            if (str != null && !str.trim().isEmpty()) {
                Typeface m2756a = C3005d.m2756a(this.f8850a, str);
                this.f8839D = m2756a;
                if (m2756a == null) {
                    throw new IllegalArgumentException(C0082b.m8755g("No font asset found for \"", str, "\""));
                }
            }
            if (str2 != null && !str2.trim().isEmpty()) {
                Typeface m2756a2 = C3005d.m2756a(this.f8850a, str2);
                this.f8838C = m2756a2;
                if (m2756a2 == null) {
                    throw new IllegalArgumentException(C0082b.m8755g("No font asset found for \"", str2, "\""));
                }
            }
            return this;
        }
    }

    /* renamed from: e2.g$b */
    /* loaded from: classes-dex2jar.jar:e2/g$b.class */
    public static class C2532b extends WindowManager.BadTokenException {
        public C2532b(String str) {
            super(str);
        }
    }

    /* renamed from: e2.g$c */
    /* loaded from: classes-dex2jar.jar:e2/g$c.class */
    public interface AbstractC2533c {
        /* renamed from: g */
        void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    @android.annotation.SuppressLint({"InflateParams"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public View$OnClickListenerC2530g(p078e2.View$OnClickListenerC2530g.C2531a r8) {
        /*
            Method dump skipped, instructions count: 2187
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p078e2.View$OnClickListenerC2530g.<init>(e2.g$a):void");
    }

    /* renamed from: c */
    public final MDButton m3481c(EnumC2524b enumC2524b) {
        int ordinal = enumC2524b.ordinal();
        return ordinal != 1 ? ordinal != 2 ? this.f8832m : this.f8834o : this.f8833n;
    }

    /* renamed from: d */
    public Drawable m3480d(EnumC2524b enumC2524b, boolean z) {
        if (z) {
            Objects.requireNonNull(this.f8822c);
            Drawable m2759i = C3003b.m2759i(this.f8822c.f8850a, 2130969323);
            return m2759i != null ? m2759i : C3003b.m2759i(getContext(), 2130969323);
        }
        int ordinal = enumC2524b.ordinal();
        if (ordinal == 1) {
            Objects.requireNonNull(this.f8822c);
            Drawable m2759i2 = C3003b.m2759i(this.f8822c.f8850a, 2130969320);
            if (m2759i2 != null) {
                return m2759i2;
            }
            Drawable m2759i3 = C3003b.m2759i(getContext(), 2130969320);
            C3004c.m2757a(m2759i3, this.f8822c.f8857h);
            return m2759i3;
        } else if (ordinal != 2) {
            Objects.requireNonNull(this.f8822c);
            Drawable m2759i4 = C3003b.m2759i(this.f8822c.f8850a, 2130969321);
            if (m2759i4 != null) {
                return m2759i4;
            }
            Drawable m2759i5 = C3003b.m2759i(getContext(), 2130969321);
            C3004c.m2757a(m2759i5, this.f8822c.f8857h);
            return m2759i5;
        } else {
            Objects.requireNonNull(this.f8822c);
            Drawable m2759i6 = C3003b.m2759i(this.f8822c.f8850a, 2130969319);
            if (m2759i6 != null) {
                return m2759i6;
            }
            Drawable m2759i7 = C3003b.m2759i(getContext(), 2130969319);
            C3004c.m2757a(m2759i7, this.f8822c.f8857h);
            return m2759i7;
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        InputMethodManager inputMethodManager;
        EditText editText = this.f8826g;
        if (editText != null) {
            C2531a c2531a = this.f8822c;
            if (editText != null && (inputMethodManager = (InputMethodManager) c2531a.f8850a.getSystemService("input_method")) != null) {
                View currentFocus = getCurrentFocus();
                IBinder iBinder = null;
                if (currentFocus != null) {
                    iBinder = currentFocus.getWindowToken();
                } else {
                    MDRootLayout mDRootLayout = this.f8812a;
                    if (mDRootLayout != null) {
                        iBinder = mDRootLayout.getWindowToken();
                    }
                }
                if (iBinder != null) {
                    inputMethodManager.hideSoftInputFromWindow(iBinder, 0);
                }
            }
        }
        super.dismiss();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006b  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3479e(int r5, boolean r6) {
        /*
            r4 = this;
            r0 = r4
            android.widget.TextView r0 = r0.f8830k
            if (r0 == 0) goto L8e
            r0 = r4
            e2.g$a r0 = r0.f8822c
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r4
            android.widget.TextView r0 = r0.f8830k
            r1 = 8
            r0.setVisibility(r1)
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L22
            r0 = r5
            if (r0 == 0) goto L37
        L22:
            r0 = r4
            e2.g$a r0 = r0.f8822c
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r4
            e2.g$a r0 = r0.f8822c
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r5
            r1 = -1
            if (r0 >= r1) goto L3c
        L37:
            r0 = 1
            r5 = r0
            goto L3e
        L3c:
            r0 = 0
            r5 = r0
        L3e:
            r0 = r4
            e2.g$a r0 = r0.f8822c
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L51
            r0 = r8
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            goto L58
        L51:
            r0 = r8
            int r0 = r0.f8859j
            r9 = r0
        L58:
            r0 = r4
            e2.g$a r0 = r0.f8822c
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L6b
            r0 = r8
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            goto L71
        L6b:
            r0 = r8
            int r0 = r0.f8865p
            r7 = r0
        L71:
            r0 = r4
            e2.g$a r0 = r0.f8822c
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r4
            android.widget.EditText r0 = r0.f8826g
            r1 = r7
            p100g2.C2803b.m2994c(r0, r1)
            r0 = r4
            e2.b r1 = p078e2.EnumC2524b.POSITIVE
            com.afollestad.materialdialogs.internal.MDButton r0 = r0.m3481c(r1)
            r1 = r5
            r2 = 1
            r1 = r1 ^ r2
            r0.setEnabled(r1)
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p078e2.View$OnClickListenerC2530g.m3479e(int, boolean):void");
    }

    /* renamed from: f */
    public boolean m3478f(View$OnClickListenerC2530g view$OnClickListenerC2530g, View view, int i, CharSequence charSequence, boolean z) {
        boolean z2 = false;
        if (!view.isEnabled()) {
            return false;
        }
        int i2 = this.f8835p;
        if (i2 == 0 || i2 == 1) {
            if (this.f8822c.f8837B) {
                dismiss();
            }
            if (!z) {
                Objects.requireNonNull(this.f8822c);
            }
            if (!z) {
                return true;
            }
            Objects.requireNonNull(this.f8822c);
            return true;
        } else if (i2 == 3) {
            if (((CheckBox) view.findViewById(2131296789)).isEnabled()) {
                throw null;
            }
            return false;
        } else if (i2 != 2) {
            return true;
        } else {
            RadioButton radioButton = (RadioButton) view.findViewById(2131296789);
            if (!radioButton.isEnabled()) {
                return false;
            }
            C2531a c2531a = this.f8822c;
            int i3 = c2531a.f8836A;
            if (!c2531a.f8837B || c2531a.f8861l != null) {
                z2 = true;
            } else {
                dismiss();
                this.f8822c.f8836A = i;
            }
            if (!z2) {
                return true;
            }
            this.f8822c.f8836A = i;
            radioButton.setChecked(true);
            this.f8822c.f8841F.f2244a.m7828c(i3, 1);
            this.f8822c.f8841F.f2244a.m7828c(i, 1);
            return true;
        }
    }

    /* renamed from: g */
    public final boolean m3477g() {
        Objects.requireNonNull(this.f8822c);
        return false;
    }

    /* renamed from: h */
    public final void m3476h(EnumC2524b enumC2524b, int i) {
        CharSequence text = getContext().getText(i);
        int ordinal = enumC2524b.ordinal();
        int i2 = 0;
        if (ordinal == 1) {
            this.f8822c.f8862m = text;
            this.f8833n.setText(text);
            MDButton mDButton = this.f8833n;
            int i3 = 0;
            if (text == null) {
                i3 = 8;
            }
            mDButton.setVisibility(i3);
        } else if (ordinal != 2) {
            this.f8822c.f8861l = text;
            this.f8832m.setText(text);
            MDButton mDButton2 = this.f8832m;
            if (text == null) {
                i2 = 8;
            }
            mDButton2.setVisibility(i2);
        } else {
            this.f8822c.f8863n = text;
            this.f8834o.setText(text);
            MDButton mDButton3 = this.f8834o;
            int i4 = 0;
            if (text == null) {
                i4 = 8;
            }
            mDButton3.setVisibility(i4);
        }
    }

    /* renamed from: i */
    public final void m3475i(TextView textView, Typeface typeface) {
        if (typeface == null) {
            return;
        }
        textView.setPaintFlags(textView.getPaintFlags() | 128);
        textView.setTypeface(typeface);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        EnumC2524b enumC2524b = (EnumC2524b) view.getTag();
        int ordinal = enumC2524b.ordinal();
        if (ordinal == 0) {
            Objects.requireNonNull(this.f8822c);
            AbstractC2533c abstractC2533c = this.f8822c.f8870u;
            if (abstractC2533c != null) {
                abstractC2533c.mo96g(this, enumC2524b);
            }
            Objects.requireNonNull(this.f8822c);
            Objects.requireNonNull(this.f8822c);
            Objects.requireNonNull(this.f8822c);
            m3477g();
            Objects.requireNonNull(this.f8822c);
            if (this.f8822c.f8837B) {
                dismiss();
            }
        } else if (ordinal == 1) {
            Objects.requireNonNull(this.f8822c);
            AbstractC2533c abstractC2533c2 = this.f8822c.f8872w;
            if (abstractC2533c2 != null) {
                abstractC2533c2.mo96g(this, enumC2524b);
            }
            if (this.f8822c.f8837B) {
                dismiss();
            }
        } else if (ordinal == 2) {
            Objects.requireNonNull(this.f8822c);
            AbstractC2533c abstractC2533c3 = this.f8822c.f8871v;
            if (abstractC2533c3 != null) {
                abstractC2533c3.mo96g(this, enumC2524b);
            }
            if (this.f8822c.f8837B) {
                cancel();
            }
        }
        Objects.requireNonNull(this.f8822c);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        EditText editText = this.f8826g;
        if (editText != null) {
            C2531a c2531a = this.f8822c;
            if (editText != null) {
                editText.post(new RunnableC3002a(this, c2531a));
            }
            if (this.f8826g.getText().length() > 0) {
                EditText editText2 = this.f8826g;
                editText2.setSelection(editText2.getText().length());
            }
        }
        DialogInterface.OnShowListener onShowListener = this.f8813b;
        if (onShowListener != null) {
            onShowListener.onShow(dialogInterface);
        }
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        this.f8824e.setText(this.f8822c.f8850a.getString(i));
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        this.f8824e.setText(charSequence);
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (WindowManager.BadTokenException e) {
            throw new C2532b("Bad window token, you cannot show a dialog before an Activity is created or after it's hidden.");
        }
    }
}
