package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0317ap;
import androidx.appcompat.widget.C0350i;
import androidx.appcompat.widget.C0369y;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p017a.C0438a;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0580f;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import androidx.core.widget.C0628i;
import androidx.p029d.p030a.AbstractC0633a;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4687a;
import com.google.android.material.internal.C4689b;
import com.google.android.material.internal.C4702i;
import com.google.android.material.internal.C4703j;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.p149g.C4680a;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4743k;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout.class */
public class TextInputLayout extends LinearLayout {

    /* renamed from: d */
    private static final int f20736d = C4492a.C4503k.Widget_Design_TextInputLayout;

    /* renamed from: A */
    private final int f20737A;

    /* renamed from: B */
    private int f20738B;

    /* renamed from: C */
    private int f20739C;

    /* renamed from: D */
    private final Rect f20740D;

    /* renamed from: E */
    private final Rect f20741E;

    /* renamed from: F */
    private final RectF f20742F;

    /* renamed from: G */
    private Typeface f20743G;

    /* renamed from: H */
    private final CheckableImageButton f20744H;

    /* renamed from: I */
    private ColorStateList f20745I;

    /* renamed from: J */
    private boolean f20746J;

    /* renamed from: K */
    private PorterDuff.Mode f20747K;

    /* renamed from: L */
    private boolean f20748L;

    /* renamed from: M */
    private Drawable f20749M;

    /* renamed from: N */
    private View.OnLongClickListener f20750N;

    /* renamed from: O */
    private final LinkedHashSet<AbstractC4809b> f20751O;

    /* renamed from: P */
    private int f20752P;

    /* renamed from: Q */
    private final SparseArray<AbstractC4834e> f20753Q;

    /* renamed from: R */
    private final CheckableImageButton f20754R;

    /* renamed from: S */
    private final LinkedHashSet<AbstractC4810c> f20755S;

    /* renamed from: T */
    private ColorStateList f20756T;

    /* renamed from: U */
    private boolean f20757U;

    /* renamed from: V */
    private PorterDuff.Mode f20758V;

    /* renamed from: W */
    private boolean f20759W;

    /* renamed from: a */
    EditText f20760a;

    /* renamed from: aa */
    private Drawable f20761aa;

    /* renamed from: ab */
    private Drawable f20762ab;

    /* renamed from: ac */
    private final CheckableImageButton f20763ac;

    /* renamed from: ad */
    private View.OnLongClickListener f20764ad;

    /* renamed from: ae */
    private ColorStateList f20765ae;

    /* renamed from: af */
    private ColorStateList f20766af;

    /* renamed from: ag */
    private final int f20767ag;

    /* renamed from: ah */
    private final int f20768ah;

    /* renamed from: ai */
    private int f20769ai;

    /* renamed from: aj */
    private int f20770aj;

    /* renamed from: ak */
    private final int f20771ak;

    /* renamed from: al */
    private final int f20772al;

    /* renamed from: am */
    private final int f20773am;

    /* renamed from: an */
    private boolean f20774an;

    /* renamed from: ao */
    private boolean f20775ao;

    /* renamed from: ap */
    private ValueAnimator f20776ap;

    /* renamed from: aq */
    private boolean f20777aq;

    /* renamed from: ar */
    private boolean f20778ar;

    /* renamed from: b */
    boolean f20779b;

    /* renamed from: c */
    final C4687a f20780c;

    /* renamed from: e */
    private final FrameLayout f20781e;

    /* renamed from: f */
    private final FrameLayout f20782f;

    /* renamed from: g */
    private CharSequence f20783g;

    /* renamed from: h */
    private final C4835f f20784h;

    /* renamed from: i */
    private int f20785i;

    /* renamed from: j */
    private boolean f20786j;

    /* renamed from: k */
    private TextView f20787k;

    /* renamed from: l */
    private int f20788l;

    /* renamed from: m */
    private int f20789m;

    /* renamed from: n */
    private ColorStateList f20790n;

    /* renamed from: o */
    private ColorStateList f20791o;

    /* renamed from: p */
    private boolean f20792p;

    /* renamed from: q */
    private CharSequence f20793q;

    /* renamed from: r */
    private boolean f20794r;

    /* renamed from: s */
    private C4736g f20795s;

    /* renamed from: t */
    private C4736g f20796t;

    /* renamed from: u */
    private C4743k f20797u;

    /* renamed from: v */
    private final int f20798v;

    /* renamed from: w */
    private int f20799w;

    /* renamed from: x */
    private final int f20800x;

    /* renamed from: y */
    private int f20801y;

    /* renamed from: z */
    private final int f20802z;

    /* renamed from: com.google.android.material.textfield.TextInputLayout$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$a.class */
    public static class C4808a extends C0549a {

        /* renamed from: a */
        private final TextInputLayout f20807a;

        public C4808a(TextInputLayout textInputLayout) {
            this.f20807a = textInputLayout;
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public void mo2272a(View view, C0553c c0553c) {
            super.mo2272a(view, c0553c);
            EditText editText = this.f20807a.getEditText();
            Editable text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f20807a.getHint();
            CharSequence error = this.f20807a.getError();
            CharSequence counterOverflowDescription = this.f20807a.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !TextUtils.isEmpty(error);
            boolean z4 = z3 || !TextUtils.isEmpty(counterOverflowDescription);
            if (z) {
                c0553c.m20496c(text);
            } else if (z2) {
                c0553c.m20496c(hint);
            }
            if (z2) {
                c0553c.m20484f(hint);
                boolean z5 = false;
                if (!z) {
                    z5 = false;
                    if (z2) {
                        z5 = true;
                    }
                }
                c0553c.m20467m(z5);
            }
            if (z4) {
                c0553c.m20481g(z3 ? error : counterOverflowDescription);
                c0553c.m20473j(true);
            }
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$b.class */
    public interface AbstractC4809b {
        /* renamed from: a */
        void mo2226a(TextInputLayout textInputLayout);
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$c.class */
    public interface AbstractC4810c {
        /* renamed from: a */
        void mo2225a(TextInputLayout textInputLayout, int i);
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$d.class */
    public static class C4811d extends AbstractC0633a {
        public static final Parcelable.Creator<C4811d> CREATOR = new Parcelable.ClassLoaderCreator<C4811d>() { // from class: com.google.android.material.textfield.TextInputLayout.d.1
            /* renamed from: a */
            public C4811d createFromParcel(Parcel parcel) {
                return new C4811d(parcel, null);
            }

            /* renamed from: a */
            public C4811d createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C4811d(parcel, classLoader);
            }

            /* renamed from: a */
            public C4811d[] newArray(int i) {
                return new C4811d[i];
            }
        };

        /* renamed from: a */
        CharSequence f20808a;

        /* renamed from: b */
        boolean f20809b;

        C4811d(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f20808a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f20809b = parcel.readInt() == 1;
        }

        C4811d(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f20808a) + "}";
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f20808a, parcel, i);
            parcel.writeInt(this.f20809b ? 1 : 0);
        }
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.textInputStyle);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(C4702i.m2826a(context, attributeSet, i, f20736d), attributeSet, i);
        this.f20784h = new C4835f(this);
        this.f20740D = new Rect();
        this.f20741E = new Rect();
        this.f20742F = new RectF();
        this.f20751O = new LinkedHashSet<>();
        this.f20752P = 0;
        this.f20753Q = new SparseArray<>();
        this.f20755S = new LinkedHashSet<>();
        this.f20780c = new C4687a(this);
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.f20781e = new FrameLayout(context2);
        this.f20781e.setAddStatesFromChildren(true);
        addView(this.f20781e);
        this.f20782f = new FrameLayout(context2);
        this.f20782f.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 8388629));
        this.f20781e.addView(this.f20782f);
        this.f20780c.m2897a(C4505a.f19569a);
        this.f20780c.m2883b(C4505a.f19569a);
        this.f20780c.m2885b(8388659);
        C0317ap m2820b = C4702i.m2820b(context2, attributeSet, C4492a.C4504l.TextInputLayout, i, f20736d, C4492a.C4504l.TextInputLayout_counterTextAppearance, C4492a.C4504l.TextInputLayout_counterOverflowTextAppearance, C4492a.C4504l.TextInputLayout_errorTextAppearance, C4492a.C4504l.TextInputLayout_helperTextTextAppearance, C4492a.C4504l.TextInputLayout_hintTextAppearance);
        this.f20792p = m2820b.m21436a(C4492a.C4504l.TextInputLayout_hintEnabled, true);
        setHint(m2820b.m21429c(C4492a.C4504l.TextInputLayout_android_hint));
        this.f20775ao = m2820b.m21436a(C4492a.C4504l.TextInputLayout_hintAnimationEnabled, true);
        this.f20797u = C4743k.m2673a(context2, attributeSet, i, f20736d).m2654a();
        this.f20798v = context2.getResources().getDimensionPixelOffset(C4492a.C4496d.mtrl_textinput_box_label_cutout_padding);
        this.f20800x = m2820b.m21426d(C4492a.C4504l.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.f20802z = m2820b.m21424e(C4492a.C4504l.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(C4492a.C4496d.mtrl_textinput_box_stroke_width_default));
        this.f20737A = m2820b.m21424e(C4492a.C4504l.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(C4492a.C4496d.mtrl_textinput_box_stroke_width_focused));
        this.f20801y = this.f20802z;
        float m21431b = m2820b.m21431b(C4492a.C4504l.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float m21431b2 = m2820b.m21431b(C4492a.C4504l.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float m21431b3 = m2820b.m21431b(C4492a.C4504l.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float m21431b4 = m2820b.m21431b(C4492a.C4504l.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        C4743k.C4745a m2655n = this.f20797u.m2655n();
        if (m21431b >= 0.0f) {
            m2655n.m2648b(m21431b);
        }
        if (m21431b2 >= 0.0f) {
            m2655n.m2643c(m21431b2);
        }
        if (m21431b3 >= 0.0f) {
            m2655n.m2638d(m21431b3);
        }
        if (m21431b4 >= 0.0f) {
            m2655n.m2633e(m21431b4);
        }
        this.f20797u = m2655n.m2654a();
        ColorStateList m2782a = C4718c.m2782a(context2, m2820b, C4492a.C4504l.TextInputLayout_boxBackgroundColor);
        if (m2782a != null) {
            this.f20770aj = m2782a.getDefaultColor();
            this.f20739C = this.f20770aj;
            if (m2782a.isStateful()) {
                this.f20771ak = m2782a.getColorForState(new int[]{-16842910}, -1);
                this.f20772al = m2782a.getColorForState(new int[]{16843623}, -1);
            } else {
                ColorStateList m22277a = C0094a.m22277a(context2, C4492a.C4495c.mtrl_filled_background_color);
                this.f20771ak = m22277a.getColorForState(new int[]{-16842910}, -1);
                this.f20772al = m22277a.getColorForState(new int[]{16843623}, -1);
            }
        } else {
            this.f20739C = 0;
            this.f20770aj = 0;
            this.f20771ak = 0;
            this.f20772al = 0;
        }
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_android_textColorHint)) {
            ColorStateList m21425e = m2820b.m21425e(C4492a.C4504l.TextInputLayout_android_textColorHint);
            this.f20766af = m21425e;
            this.f20765ae = m21425e;
        }
        ColorStateList m2782a2 = C4718c.m2782a(context2, m2820b, C4492a.C4504l.TextInputLayout_boxStrokeColor);
        if (m2782a2 == null || !m2782a2.isStateful()) {
            this.f20769ai = m2820b.m21430b(C4492a.C4504l.TextInputLayout_boxStrokeColor, 0);
            this.f20767ag = C0438a.m20892c(context2, C4492a.C4495c.mtrl_textinput_default_box_stroke_color);
            this.f20773am = C0438a.m20892c(context2, C4492a.C4495c.mtrl_textinput_disabled_color);
            this.f20768ah = C0438a.m20892c(context2, C4492a.C4495c.mtrl_textinput_hovered_box_stroke_color);
        } else {
            this.f20767ag = m2782a2.getDefaultColor();
            this.f20773am = m2782a2.getColorForState(new int[]{-16842910}, -1);
            this.f20768ah = m2782a2.getColorForState(new int[]{16843623}, -1);
            this.f20769ai = m2782a2.getColorForState(new int[]{16842908}, -1);
        }
        if (m2820b.m21420g(C4492a.C4504l.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(m2820b.m21420g(C4492a.C4504l.TextInputLayout_hintTextAppearance, 0));
        }
        int m21420g = m2820b.m21420g(C4492a.C4504l.TextInputLayout_errorTextAppearance, 0);
        boolean m21436a = m2820b.m21436a(C4492a.C4504l.TextInputLayout_errorEnabled, false);
        this.f20763ac = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C4492a.C4500h.design_text_input_end_icon, (ViewGroup) this.f20781e, false);
        this.f20781e.addView(this.f20763ac);
        this.f20763ac.setVisibility(8);
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_errorIconDrawable)) {
            setErrorIconDrawable(m2820b.m21440a(C4492a.C4504l.TextInputLayout_errorIconDrawable));
        }
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_errorIconTint)) {
            setErrorIconTintList(C4718c.m2782a(context2, m2820b, C4492a.C4504l.TextInputLayout_errorIconTint));
        }
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_errorIconTintMode)) {
            setErrorIconTintMode(C4703j.m2816a(m2820b.m21438a(C4492a.C4504l.TextInputLayout_errorIconTintMode, -1), (PorterDuff.Mode) null));
        }
        this.f20763ac.setContentDescription(getResources().getText(C4492a.C4502j.error_icon_content_description));
        C0595u.m20335b(this.f20763ac, 2);
        this.f20763ac.setClickable(false);
        this.f20763ac.setPressable(false);
        this.f20763ac.setFocusable(false);
        int m21420g2 = m2820b.m21420g(C4492a.C4504l.TextInputLayout_helperTextTextAppearance, 0);
        boolean m21436a2 = m2820b.m21436a(C4492a.C4504l.TextInputLayout_helperTextEnabled, false);
        CharSequence m21429c = m2820b.m21429c(C4492a.C4504l.TextInputLayout_helperText);
        boolean m21436a3 = m2820b.m21436a(C4492a.C4504l.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(m2820b.m21438a(C4492a.C4504l.TextInputLayout_counterMaxLength, -1));
        this.f20789m = m2820b.m21420g(C4492a.C4504l.TextInputLayout_counterTextAppearance, 0);
        this.f20788l = m2820b.m21420g(C4492a.C4504l.TextInputLayout_counterOverflowTextAppearance, 0);
        this.f20744H = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C4492a.C4500h.design_text_input_start_icon, (ViewGroup) this.f20781e, false);
        this.f20781e.addView(this.f20744H);
        this.f20744H.setVisibility(8);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_startIconDrawable)) {
            setStartIconDrawable(m2820b.m21440a(C4492a.C4504l.TextInputLayout_startIconDrawable));
            if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_startIconContentDescription)) {
                setStartIconContentDescription(m2820b.m21429c(C4492a.C4504l.TextInputLayout_startIconContentDescription));
            }
            setStartIconCheckable(m2820b.m21436a(C4492a.C4504l.TextInputLayout_startIconCheckable, true));
        }
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_startIconTint)) {
            setStartIconTintList(C4718c.m2782a(context2, m2820b, C4492a.C4504l.TextInputLayout_startIconTint));
        }
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_startIconTintMode)) {
            setStartIconTintMode(C4703j.m2816a(m2820b.m21438a(C4492a.C4504l.TextInputLayout_startIconTintMode, -1), (PorterDuff.Mode) null));
        }
        setHelperTextEnabled(m21436a2);
        setHelperText(m21429c);
        setHelperTextTextAppearance(m21420g2);
        setErrorEnabled(m21436a);
        setErrorTextAppearance(m21420g);
        setCounterTextAppearance(this.f20789m);
        setCounterOverflowTextAppearance(this.f20788l);
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_errorTextColor)) {
            setErrorTextColor(m2820b.m21425e(C4492a.C4504l.TextInputLayout_errorTextColor));
        }
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_helperTextTextColor)) {
            setHelperTextColor(m2820b.m21425e(C4492a.C4504l.TextInputLayout_helperTextTextColor));
        }
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_hintTextColor)) {
            setHintTextColor(m2820b.m21425e(C4492a.C4504l.TextInputLayout_hintTextColor));
        }
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_counterTextColor)) {
            setCounterTextColor(m2820b.m21425e(C4492a.C4504l.TextInputLayout_counterTextColor));
        }
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_counterOverflowTextColor)) {
            setCounterOverflowTextColor(m2820b.m21425e(C4492a.C4504l.TextInputLayout_counterOverflowTextColor));
        }
        setCounterEnabled(m21436a3);
        setBoxBackgroundMode(m2820b.m21438a(C4492a.C4504l.TextInputLayout_boxBackgroundMode, 0));
        this.f20754R = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C4492a.C4500h.design_text_input_end_icon, (ViewGroup) this.f20782f, false);
        this.f20782f.addView(this.f20754R);
        this.f20754R.setVisibility(8);
        this.f20753Q.append(-1, new C4821b(this));
        this.f20753Q.append(0, new C4837g(this));
        this.f20753Q.append(1, new C4838h(this));
        this.f20753Q.append(2, new C4813a(this));
        this.f20753Q.append(3, new C4823d(this));
        if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_endIconMode)) {
            setEndIconMode(m2820b.m21438a(C4492a.C4504l.TextInputLayout_endIconMode, 0));
            if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_endIconDrawable)) {
                setEndIconDrawable(m2820b.m21440a(C4492a.C4504l.TextInputLayout_endIconDrawable));
            }
            if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_endIconContentDescription)) {
                setEndIconContentDescription(m2820b.m21429c(C4492a.C4504l.TextInputLayout_endIconContentDescription));
            }
            setEndIconCheckable(m2820b.m21436a(C4492a.C4504l.TextInputLayout_endIconCheckable, true));
        } else if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_passwordToggleEnabled)) {
            setEndIconMode(m2820b.m21436a(C4492a.C4504l.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            setEndIconDrawable(m2820b.m21440a(C4492a.C4504l.TextInputLayout_passwordToggleDrawable));
            setEndIconContentDescription(m2820b.m21429c(C4492a.C4504l.TextInputLayout_passwordToggleContentDescription));
            if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_passwordToggleTint)) {
                setEndIconTintList(C4718c.m2782a(context2, m2820b, C4492a.C4504l.TextInputLayout_passwordToggleTint));
            }
            if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_passwordToggleTintMode)) {
                setEndIconTintMode(C4703j.m2816a(m2820b.m21438a(C4492a.C4504l.TextInputLayout_passwordToggleTintMode, -1), (PorterDuff.Mode) null));
            }
        }
        if (!m2820b.m21421g(C4492a.C4504l.TextInputLayout_passwordToggleEnabled)) {
            if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_endIconTint)) {
                setEndIconTintList(C4718c.m2782a(context2, m2820b, C4492a.C4504l.TextInputLayout_endIconTint));
            }
            if (m2820b.m21421g(C4492a.C4504l.TextInputLayout_endIconTintMode)) {
                setEndIconTintMode(C4703j.m2816a(m2820b.m21438a(C4492a.C4504l.TextInputLayout_endIconTintMode, -1), (PorterDuff.Mode) null));
            }
        }
        m2820b.m21441a();
        C0595u.m20335b(this, 2);
    }

    /* renamed from: A */
    private boolean m2375A() {
        boolean z = false;
        if (this.f20760a != null) {
            if (m2322w() && m2342d() && this.f20744H.getMeasuredWidth() > 0) {
                if (this.f20749M == null) {
                    this.f20749M = new ColorDrawable();
                    this.f20749M.setBounds(0, 0, C0580f.m20408b((ViewGroup.MarginLayoutParams) this.f20744H.getLayoutParams()) + (this.f20744H.getMeasuredWidth() - this.f20760a.getPaddingLeft()), 1);
                }
                Drawable[] m20135b = C0628i.m20135b(this.f20760a);
                if (m20135b[0] != this.f20749M) {
                    C0628i.m20141a(this.f20760a, this.f20749M, m20135b[1], m20135b[2], m20135b[3]);
                    z = true;
                } else {
                    z = false;
                }
            } else if (this.f20749M != null) {
                Drawable[] m20135b2 = C0628i.m20135b(this.f20760a);
                C0628i.m20141a(this.f20760a, null, m20135b2[1], m20135b2[2], m20135b2[3]);
                this.f20749M = null;
                z = true;
            } else {
                z = false;
            }
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null && endIconToUpdateDummyDrawable.getMeasuredWidth() > 0) {
                if (this.f20761aa == null) {
                    this.f20761aa = new ColorDrawable();
                    this.f20761aa.setBounds(0, 0, C0580f.m20410a((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams()) + (endIconToUpdateDummyDrawable.getMeasuredWidth() - this.f20760a.getPaddingRight()), 1);
                }
                Drawable[] m20135b3 = C0628i.m20135b(this.f20760a);
                if (m20135b3[2] != this.f20761aa) {
                    this.f20762ab = m20135b3[2];
                    C0628i.m20141a(this.f20760a, m20135b3[0], m20135b3[1], this.f20761aa, m20135b3[3]);
                    z = true;
                }
            } else if (this.f20761aa != null) {
                Drawable[] m20135b4 = C0628i.m20135b(this.f20760a);
                if (m20135b4[2] == this.f20761aa) {
                    C0628i.m20141a(this.f20760a, m20135b4[0], m20135b4[1], this.f20762ab, m20135b4[3]);
                    z = true;
                }
                this.f20761aa = null;
            }
        }
        return z;
    }

    /* renamed from: B */
    private boolean m2374B() {
        return this.f20792p && !TextUtils.isEmpty(this.f20793q) && (this.f20795s instanceof C4822c);
    }

    /* renamed from: C */
    private void m2373C() {
        if (!m2374B()) {
            return;
        }
        RectF rectF = this.f20742F;
        this.f20780c.m2892a(rectF);
        m2363a(rectF);
        rectF.offset(-getPaddingLeft(), 0.0f);
        ((C4822c) this.f20795s).m2304a(rectF);
    }

    /* renamed from: D */
    private void m2372D() {
        if (m2374B()) {
            ((C4822c) this.f20795s).m2302b();
        }
    }

    /* renamed from: a */
    private int m2365a(Rect rect, float f) {
        return m2330o() ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f20760a.getCompoundPaddingTop();
    }

    /* renamed from: a */
    private int m2364a(Rect rect, Rect rect2, float f) {
        return this.f20799w == 1 ? (int) (rect2.top + f) : rect.bottom - this.f20760a.getCompoundPaddingBottom();
    }

    /* renamed from: a */
    private Rect m2366a(Rect rect) {
        if (this.f20760a == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f20741E;
        rect2.bottom = rect.bottom;
        switch (this.f20799w) {
            case 1:
                rect2.left = rect.left + this.f20760a.getCompoundPaddingLeft();
                rect2.top = rect.top + this.f20800x;
                rect2.right = rect.right - this.f20760a.getCompoundPaddingRight();
                break;
            case 2:
                rect2.left = rect.left + this.f20760a.getPaddingLeft();
                rect2.top = rect.top - m2331n();
                rect2.right = rect.right - this.f20760a.getPaddingRight();
                break;
            default:
                rect2.left = rect.left + this.f20760a.getCompoundPaddingLeft();
                rect2.top = getPaddingTop();
                rect2.right = rect.right - this.f20760a.getCompoundPaddingRight();
                break;
        }
        return rect2;
    }

    /* renamed from: a */
    private static void m2368a(Context context, TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? C4492a.C4502j.character_counter_overflowed_content_description : C4492a.C4502j.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* renamed from: a */
    private void m2367a(Canvas canvas) {
        if (this.f20792p) {
            this.f20780c.m2895a(canvas);
        }
    }

    /* renamed from: a */
    private void m2363a(RectF rectF) {
        rectF.left -= this.f20798v;
        rectF.top -= this.f20798v;
        rectF.right += this.f20798v;
        rectF.bottom += this.f20798v;
    }

    /* renamed from: a */
    private static void m2362a(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m2362a((ViewGroup) childAt, z);
            }
        }
    }

    /* renamed from: a */
    private static void m2360a(CheckableImageButton checkableImageButton, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        m2348b(checkableImageButton, onLongClickListener);
    }

    /* renamed from: a */
    private static void m2359a(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m2348b(checkableImageButton, onLongClickListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
        if (r7 != false) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m2358a(com.google.android.material.internal.CheckableImageButton r4, boolean r5, android.content.res.ColorStateList r6, boolean r7, android.graphics.PorterDuff.Mode r8) {
        /*
            r3 = this;
            r0 = r4
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L44
            r0 = r5
            if (r0 != 0) goto L1c
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L44
        L1c:
            r0 = r9
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0535a.m20584g(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L30
            r0 = r9
            r1 = r6
            androidx.core.graphics.drawable.C0535a.m20595a(r0, r1)
        L30:
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r9
            r1 = r8
            androidx.core.graphics.drawable.C0535a.m20592a(r0, r1)
            r0 = r9
            r10 = r0
        L44:
            r0 = r4
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r1 = r10
            if (r0 == r1) goto L53
            r0 = r4
            r1 = r10
            r0.setImageDrawable(r1)
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m2358a(com.google.android.material.internal.CheckableImageButton, boolean, android.content.res.ColorStateList, boolean, android.graphics.PorterDuff$Mode):void");
    }

    /* renamed from: a */
    private void m2353a(boolean z, boolean z2) {
        boolean z3 = true;
        boolean isEnabled = isEnabled();
        boolean z4 = this.f20760a != null && !TextUtils.isEmpty(this.f20760a.getText());
        if (this.f20760a == null || !this.f20760a.hasFocus()) {
            z3 = false;
        }
        boolean m2237g = this.f20784h.m2237g();
        if (this.f20765ae != null) {
            this.f20780c.m2896a(this.f20765ae);
            this.f20780c.m2882b(this.f20765ae);
        }
        if (!isEnabled) {
            this.f20780c.m2896a(ColorStateList.valueOf(this.f20773am));
            this.f20780c.m2882b(ColorStateList.valueOf(this.f20773am));
        } else if (m2237g) {
            this.f20780c.m2896a(this.f20784h.m2233k());
        } else if (this.f20786j && this.f20787k != null) {
            this.f20780c.m2896a(this.f20787k.getTextColors());
        } else if (z3 && this.f20766af != null) {
            this.f20780c.m2896a(this.f20766af);
        }
        if (z4 || (isEnabled() && (z3 || m2237g))) {
            if (!z2 && !this.f20774an) {
                return;
            }
            m2343c(z);
        } else if (!z2 && this.f20774an) {
        } else {
            m2341d(z);
        }
    }

    /* renamed from: b */
    private Rect m2349b(Rect rect) {
        if (this.f20760a == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f20741E;
        float m2887b = this.f20780c.m2887b();
        rect2.left = rect.left + this.f20760a.getCompoundPaddingLeft();
        rect2.top = m2365a(rect, m2887b);
        rect2.right = rect.right - this.f20760a.getCompoundPaddingRight();
        rect2.bottom = m2364a(rect, rect2, m2887b);
        return rect2;
    }

    /* renamed from: b */
    private void m2351b(int i) {
        Iterator<AbstractC4810c> it = this.f20755S.iterator();
        while (it.hasNext()) {
            it.next().mo2225a(this, i);
        }
    }

    /* renamed from: b */
    private void m2350b(Canvas canvas) {
        if (this.f20796t != null) {
            Rect bounds = this.f20796t.getBounds();
            bounds.top = bounds.bottom - this.f20801y;
            this.f20796t.draw(canvas);
        }
    }

    /* renamed from: b */
    private static void m2348b(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean z = false;
        int i = 1;
        boolean m20369C = C0595u.m20369C(checkableImageButton);
        boolean z2 = onLongClickListener != null;
        if (m20369C || z2) {
            z = true;
        }
        checkableImageButton.setFocusable(z);
        checkableImageButton.setClickable(m20369C);
        checkableImageButton.setPressable(m20369C);
        checkableImageButton.setLongClickable(z2);
        if (!z) {
            i = 2;
        }
        C0595u.m20335b(checkableImageButton, i);
    }

    /* renamed from: b */
    private void m2346b(boolean z) {
        if (!z || getEndIconDrawable() == null) {
            m2319z();
            return;
        }
        Drawable mutate = C0535a.m20584g(getEndIconDrawable()).mutate();
        C0535a.m20597a(mutate, this.f20784h.m2234j());
        this.f20754R.setImageDrawable(mutate);
    }

    /* renamed from: c */
    private void m2344c(Rect rect) {
        if (this.f20796t != null) {
            this.f20796t.setBounds(rect.left, rect.bottom - this.f20737A, rect.right, rect.bottom);
        }
    }

    /* renamed from: c */
    private void m2343c(boolean z) {
        if (this.f20776ap != null && this.f20776ap.isRunning()) {
            this.f20776ap.cancel();
        }
        if (!z || !this.f20775ao) {
            this.f20780c.m2886b(1.0f);
        } else {
            m2370a(1.0f);
        }
        this.f20774an = false;
        if (m2374B()) {
            m2373C();
        }
    }

    /* renamed from: d */
    private void m2341d(boolean z) {
        if (this.f20776ap != null && this.f20776ap.isRunning()) {
            this.f20776ap.cancel();
        }
        if (!z || !this.f20775ao) {
            this.f20780c.m2886b(0.0f);
        } else {
            m2370a(0.0f);
        }
        if (m2374B() && ((C4822c) this.f20795s).m2307a()) {
            m2372D();
        }
        this.f20774an = true;
    }

    /* renamed from: g */
    private void m2338g() {
        m2337h();
        m2336i();
        m2339f();
        if (this.f20799w != 0) {
            m2334k();
        }
    }

    private AbstractC4834e getEndIconDelegate() {
        AbstractC4834e abstractC4834e = this.f20753Q.get(this.f20752P);
        if (abstractC4834e == null) {
            abstractC4834e = this.f20753Q.get(0);
        }
        return abstractC4834e;
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        return this.f20763ac.getVisibility() == 0 ? this.f20763ac : (!m2320y() || !m2340e()) ? null : this.f20754R;
    }

    /* renamed from: h */
    private void m2337h() {
        switch (this.f20799w) {
            case 0:
                this.f20795s = null;
                this.f20796t = null;
                return;
            case 1:
                this.f20795s = new C4736g(this.f20797u);
                this.f20796t = new C4736g();
                return;
            case 2:
                if (!this.f20792p || (this.f20795s instanceof C4822c)) {
                    this.f20795s = new C4736g(this.f20797u);
                } else {
                    this.f20795s = new C4822c(this.f20797u);
                }
                this.f20796t = null;
                return;
            default:
                throw new IllegalArgumentException(this.f20799w + " is illegal; only @BoxBackgroundMode constants are supported.");
        }
    }

    /* renamed from: i */
    private void m2336i() {
        if (m2335j()) {
            C0595u.m20350a(this.f20760a, this.f20795s);
        }
    }

    /* renamed from: j */
    private boolean m2335j() {
        return (this.f20760a == null || this.f20795s == null || this.f20760a.getBackground() != null || this.f20799w == 0) ? false : true;
    }

    /* renamed from: k */
    private void m2334k() {
        if (this.f20799w != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f20781e.getLayoutParams();
            int m2331n = m2331n();
            if (m2331n == layoutParams.topMargin) {
                return;
            }
            layoutParams.topMargin = m2331n;
            this.f20781e.requestLayout();
        }
    }

    /* renamed from: l */
    private void m2333l() {
        if (this.f20787k != null) {
            m2369a(this.f20760a == null ? 0 : this.f20760a.getText().length());
        }
    }

    /* renamed from: m */
    private void m2332m() {
        if (this.f20787k != null) {
            m2361a(this.f20787k, this.f20786j ? this.f20788l : this.f20789m);
            if (!this.f20786j && this.f20790n != null) {
                this.f20787k.setTextColor(this.f20790n);
            }
            if (!this.f20786j || this.f20791o == null) {
                return;
            }
            this.f20787k.setTextColor(this.f20791o);
        }
    }

    /* renamed from: n */
    private int m2331n() {
        int i = 0;
        if (this.f20792p) {
            switch (this.f20799w) {
                case 0:
                case 1:
                    i = (int) this.f20780c.m2877c();
                    break;
                case 2:
                    i = (int) (this.f20780c.m2877c() / 2.0f);
                    break;
            }
        }
        return i;
    }

    /* renamed from: o */
    private boolean m2330o() {
        boolean z;
        if (this.f20799w == 1) {
            z = true;
            if (Build.VERSION.SDK_INT >= 16) {
                if (this.f20760a.getMinLines() <= 1) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: p */
    private int m2329p() {
        int i = this.f20739C;
        if (this.f20799w == 1) {
            i = C4680a.m2924a(C4680a.m2919a(this, C4492a.C4494b.colorSurface, 0), this.f20739C);
        }
        return i;
    }

    /* renamed from: q */
    private void m2328q() {
        if (this.f20795s == null) {
            return;
        }
        this.f20795s.setShapeAppearanceModel(this.f20797u);
        if (m2326s()) {
            this.f20795s.m2727a(this.f20801y, this.f20738B);
        }
        this.f20739C = m2329p();
        this.f20795s.m2697f(ColorStateList.valueOf(this.f20739C));
        if (this.f20752P == 3) {
            this.f20760a.getBackground().invalidateSelf();
        }
        m2327r();
        invalidate();
    }

    /* renamed from: r */
    private void m2327r() {
        if (this.f20796t == null) {
            return;
        }
        if (m2325t()) {
            this.f20796t.m2697f(ColorStateList.valueOf(this.f20738B));
        }
        invalidate();
    }

    /* renamed from: s */
    private boolean m2326s() {
        return this.f20799w == 2 && m2325t();
    }

    private void setEditText(EditText editText) {
        if (this.f20760a != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.f20752P != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f20760a = editText;
        m2338g();
        setTextInputAccessibilityDelegate(new C4808a(this));
        this.f20780c.m2880b(this.f20760a.getTypeface());
        this.f20780c.m2903a(this.f20760a.getTextSize());
        int gravity = this.f20760a.getGravity();
        this.f20780c.m2885b((gravity & (-113)) | 48);
        this.f20780c.m2900a(gravity);
        this.f20760a.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.textfield.TextInputLayout.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextInputLayout.this.m2354a(!TextInputLayout.this.f20778ar);
                if (TextInputLayout.this.f20779b) {
                    TextInputLayout.this.m2369a(editable.length());
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        if (this.f20765ae == null) {
            this.f20765ae = this.f20760a.getHintTextColors();
        }
        if (this.f20792p) {
            if (TextUtils.isEmpty(this.f20793q)) {
                this.f20783g = this.f20760a.getHint();
                setHint(this.f20783g);
                this.f20760a.setHint((CharSequence) null);
            }
            this.f20794r = true;
        }
        if (this.f20787k != null) {
            m2369a(this.f20760a.getText().length());
        }
        m2345c();
        this.f20784h.m2242d();
        this.f20744H.bringToFront();
        this.f20782f.bringToFront();
        this.f20763ac.bringToFront();
        m2323v();
        m2353a(false, true);
    }

    private void setErrorIconVisible(boolean z) {
        this.f20763ac.setVisibility(z ? 0 : 8);
        this.f20782f.setVisibility(z ? 8 : 0);
        if (!m2320y()) {
            m2375A();
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f20793q)) {
            this.f20793q = charSequence;
            this.f20780c.m2889a(charSequence);
            if (this.f20774an) {
                return;
            }
            m2373C();
        }
    }

    /* renamed from: t */
    private boolean m2325t() {
        return this.f20801y > -1 && this.f20738B != 0;
    }

    /* renamed from: u */
    private boolean m2324u() {
        int max;
        boolean z = false;
        if (this.f20760a != null && this.f20760a.getMeasuredHeight() < (max = Math.max(this.f20754R.getMeasuredHeight(), this.f20744H.getMeasuredHeight()))) {
            this.f20760a.setMinimumHeight(max);
            z = true;
        }
        return z;
    }

    /* renamed from: v */
    private void m2323v() {
        Iterator<AbstractC4809b> it = this.f20751O.iterator();
        while (it.hasNext()) {
            it.next().mo2226a(this);
        }
    }

    /* renamed from: w */
    private boolean m2322w() {
        return getStartIconDrawable() != null;
    }

    /* renamed from: x */
    private void m2321x() {
        m2358a(this.f20744H, this.f20746J, this.f20745I, this.f20748L, this.f20747K);
    }

    /* renamed from: y */
    private boolean m2320y() {
        return this.f20752P != 0;
    }

    /* renamed from: z */
    private void m2319z() {
        m2358a(this.f20754R, this.f20757U, this.f20756T, this.f20759W, this.f20758V);
    }

    /* renamed from: a */
    void m2370a(float f) {
        if (this.f20780c.m2867f() == f) {
            return;
        }
        if (this.f20776ap == null) {
            this.f20776ap = new ValueAnimator();
            this.f20776ap.setInterpolator(C4505a.f19570b);
            this.f20776ap.setDuration(167L);
            this.f20776ap.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.TextInputLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TextInputLayout.this.f20780c.m2886b(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
        }
        this.f20776ap.setFloatValues(this.f20780c.m2867f(), f);
        this.f20776ap.start();
    }

    /* renamed from: a */
    void m2369a(int i) {
        boolean z = this.f20786j;
        if (this.f20785i == -1) {
            this.f20787k.setText(String.valueOf(i));
            this.f20787k.setContentDescription(null);
            this.f20786j = false;
        } else {
            if (C0595u.m20318h(this.f20787k) == 1) {
                C0595u.m20325d(this.f20787k, 0);
            }
            this.f20786j = i > this.f20785i;
            m2368a(getContext(), this.f20787k, i, this.f20785i, this.f20786j);
            if (z != this.f20786j) {
                m2332m();
                if (this.f20786j) {
                    C0595u.m20325d(this.f20787k, 1);
                }
            }
            this.f20787k.setText(getContext().getString(C4492a.C4502j.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f20785i)));
        }
        if (this.f20760a == null || z == this.f20786j) {
            return;
        }
        m2354a(false);
        m2339f();
        m2345c();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2361a(android.widget.TextView r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            androidx.core.widget.C0628i.m20144a(r0, r1)     // Catch: java.lang.Exception -> L3a
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L3a
            r1 = 23
            if (r0 < r1) goto L41
            r0 = r5
            android.content.res.ColorStateList r0 = r0.getTextColors()     // Catch: java.lang.Exception -> L3a
            int r0 = r0.getDefaultColor()     // Catch: java.lang.Exception -> L3a
            r6 = r0
            r0 = r6
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r0 != r1) goto L41
            r0 = r7
            r6 = r0
        L20:
            r0 = r6
            if (r0 == 0) goto L39
            r0 = r5
            int r1 = com.google.android.material.C4492a.C4503k.TextAppearance_AppCompat_Caption
            androidx.core.widget.C0628i.m20144a(r0, r1)
            r0 = r5
            r1 = r4
            android.content.Context r1 = r1.getContext()
            int r2 = com.google.android.material.C4492a.C4495c.design_error
            int r1 = androidx.core.p017a.C0438a.m20892c(r1, r2)
            r0.setTextColor(r1)
        L39:
            return
        L3a:
            r8 = move-exception
            r0 = r7
            r6 = r0
            goto L20
        L41:
            r0 = 0
            r6 = r0
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m2361a(android.widget.TextView, int):void");
    }

    /* renamed from: a */
    public void m2357a(AbstractC4809b abstractC4809b) {
        this.f20751O.add(abstractC4809b);
        if (this.f20760a != null) {
            abstractC4809b.mo2226a(this);
        }
    }

    /* renamed from: a */
    public void m2356a(AbstractC4810c abstractC4810c) {
        this.f20755S.add(abstractC4810c);
    }

    /* renamed from: a */
    public void m2354a(boolean z) {
        m2353a(z, false);
    }

    /* renamed from: a */
    public boolean m2371a() {
        return this.f20794r;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f20781e.addView(view, layoutParams2);
        this.f20781e.setLayoutParams(layoutParams);
        m2334k();
        setEditText((EditText) view);
    }

    /* renamed from: b */
    public boolean m2352b() {
        return this.f20784h.m2238f();
    }

    /* renamed from: c */
    public void m2345c() {
        Drawable background;
        if (this.f20760a == null || this.f20799w != 0 || (background = this.f20760a.getBackground()) == null) {
            return;
        }
        Drawable drawable = background;
        if (C0369y.m21166b(background)) {
            drawable = background.mutate();
        }
        if (this.f20784h.m2237g()) {
            drawable.setColorFilter(C0350i.m21312a(this.f20784h.m2234j(), PorterDuff.Mode.SRC_IN));
        } else if (this.f20786j && this.f20787k != null) {
            drawable.setColorFilter(C0350i.m21312a(this.f20787k.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            C0535a.m20585f(drawable);
            this.f20760a.refreshDrawableState();
        }
    }

    /* renamed from: d */
    public boolean m2342d() {
        return this.f20744H.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        if (this.f20783g == null || this.f20760a == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        boolean z = this.f20794r;
        this.f20794r = false;
        CharSequence hint = this.f20760a.getHint();
        this.f20760a.setHint(this.f20783g);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
        } finally {
            this.f20760a.setHint(hint);
            this.f20794r = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f20778ar = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f20778ar = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        m2367a(canvas);
        m2350b(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        boolean z = true;
        if (this.f20777aq) {
            return;
        }
        this.f20777aq = true;
        super.drawableStateChanged();
        boolean m2888a = this.f20780c != null ? this.f20780c.m2888a(getDrawableState()) | false : false;
        if (!C0595u.m20299y(this) || !isEnabled()) {
            z = false;
        }
        m2354a(z);
        m2345c();
        m2339f();
        if (m2888a) {
            invalidate();
        }
        this.f20777aq = false;
    }

    /* renamed from: e */
    public boolean m2340e() {
        return this.f20782f.getVisibility() == 0 && this.f20754R.getVisibility() == 0;
    }

    /* renamed from: f */
    public void m2339f() {
        if (this.f20795s == null || this.f20799w == 0) {
            return;
        }
        boolean z = isFocused() || (this.f20760a != null && this.f20760a.hasFocus());
        boolean z2 = isHovered() || (this.f20760a != null && this.f20760a.isHovered());
        if (!isEnabled()) {
            this.f20738B = this.f20773am;
        } else if (this.f20784h.m2237g()) {
            this.f20738B = this.f20784h.m2234j();
        } else if (this.f20786j && this.f20787k != null) {
            this.f20738B = this.f20787k.getCurrentTextColor();
        } else if (z) {
            this.f20738B = this.f20769ai;
        } else if (z2) {
            this.f20738B = this.f20768ah;
        } else {
            this.f20738B = this.f20767ag;
        }
        m2346b(this.f20784h.m2237g() && getEndIconDelegate().mo2269b());
        boolean z3 = false;
        if (getErrorIconDrawable() != null) {
            z3 = false;
            if (this.f20784h.m2240e()) {
                z3 = false;
                if (this.f20784h.m2237g()) {
                    z3 = true;
                }
            }
        }
        setErrorIconVisible(z3);
        if ((z2 || z) && isEnabled()) {
            this.f20801y = this.f20737A;
        } else {
            this.f20801y = this.f20802z;
        }
        if (this.f20799w == 1) {
            if (!isEnabled()) {
                this.f20739C = this.f20771ak;
            } else if (z2) {
                this.f20739C = this.f20772al;
            } else {
                this.f20739C = this.f20770aj;
            }
        }
        m2328q();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        return this.f20760a != null ? this.f20760a.getBaseline() + getPaddingTop() + m2331n() : super.getBaseline();
    }

    public C4736g getBoxBackground() {
        if (this.f20799w == 1 || this.f20799w == 2) {
            return this.f20795s;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f20739C;
    }

    public int getBoxBackgroundMode() {
        return this.f20799w;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.f20795s.m2710aa();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.f20795s.m2709ab();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.f20795s.m2729Z();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f20795s.m2730Y();
    }

    public int getBoxStrokeColor() {
        return this.f20769ai;
    }

    public int getCounterMaxLength() {
        return this.f20785i;
    }

    CharSequence getCounterOverflowDescription() {
        return (!this.f20779b || !this.f20786j || this.f20787k == null) ? null : this.f20787k.getContentDescription();
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f20790n;
    }

    public ColorStateList getCounterTextColor() {
        return this.f20790n;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f20765ae;
    }

    public EditText getEditText() {
        return this.f20760a;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f20754R.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f20754R.getDrawable();
    }

    public int getEndIconMode() {
        return this.f20752P;
    }

    public CheckableImageButton getEndIconView() {
        return this.f20754R;
    }

    public CharSequence getError() {
        return this.f20784h.m2240e() ? this.f20784h.m2236h() : null;
    }

    public int getErrorCurrentTextColors() {
        return this.f20784h.m2234j();
    }

    public Drawable getErrorIconDrawable() {
        return this.f20763ac.getDrawable();
    }

    final int getErrorTextCurrentColor() {
        return this.f20784h.m2234j();
    }

    public CharSequence getHelperText() {
        return this.f20784h.m2238f() ? this.f20784h.m2235i() : null;
    }

    public int getHelperTextCurrentTextColor() {
        return this.f20784h.m2232l();
    }

    public CharSequence getHint() {
        return this.f20792p ? this.f20793q : null;
    }

    final float getHintCollapsedTextHeight() {
        return this.f20780c.m2877c();
    }

    final int getHintCurrentCollapsedTextColor() {
        return this.f20780c.m2865g();
    }

    public ColorStateList getHintTextColor() {
        return this.f20766af;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f20754R.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f20754R.getDrawable();
    }

    public CharSequence getStartIconContentDescription() {
        return this.f20744H.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f20744H.getDrawable();
    }

    public Typeface getTypeface() {
        return this.f20743G;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f20760a != null) {
            Rect rect = this.f20740D;
            C4689b.m2855b(this, this.f20760a, rect);
            m2344c(rect);
            if (!this.f20792p) {
                return;
            }
            this.f20780c.m2881b(m2366a(rect));
            this.f20780c.m2894a(m2349b(rect));
            this.f20780c.m2864h();
            if (!m2374B() || this.f20774an) {
                return;
            }
            m2373C();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        boolean m2324u = m2324u();
        boolean m2375A = m2375A();
        if (m2324u || m2375A) {
            this.f20760a.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.3
                @Override // java.lang.Runnable
                public void run() {
                    TextInputLayout.this.f20760a.requestLayout();
                }
            });
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C4811d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C4811d c4811d = (C4811d) parcelable;
        super.onRestoreInstanceState(c4811d.m20121a());
        setError(c4811d.f20808a);
        if (c4811d.f20809b) {
            this.f20754R.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.2
                @Override // java.lang.Runnable
                public void run() {
                    TextInputLayout.this.f20754R.performClick();
                    TextInputLayout.this.f20754R.jumpDrawablesToCurrentState();
                }
            });
        }
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C4811d c4811d = new C4811d(super.onSaveInstanceState());
        if (this.f20784h.m2237g()) {
            c4811d.f20808a = getError();
        }
        c4811d.f20809b = m2320y() && this.f20754R.isChecked();
        return c4811d;
    }

    public void setBoxBackgroundColor(int i) {
        if (this.f20739C != i) {
            this.f20739C = i;
            this.f20770aj = i;
            m2328q();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(C0438a.m20892c(getContext(), i));
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f20799w) {
            return;
        }
        this.f20799w = i;
        if (this.f20760a == null) {
            return;
        }
        m2338g();
    }

    public void setBoxStrokeColor(int i) {
        if (this.f20769ai != i) {
            this.f20769ai = i;
            m2339f();
        }
    }

    public void setCounterEnabled(boolean z) {
        if (this.f20779b != z) {
            if (z) {
                this.f20787k = new AppCompatTextView(getContext());
                this.f20787k.setId(C4492a.C4498f.textinput_counter);
                if (this.f20743G != null) {
                    this.f20787k.setTypeface(this.f20743G);
                }
                this.f20787k.setMaxLines(1);
                this.f20784h.m2260a(this.f20787k, 2);
                m2332m();
                m2333l();
            } else {
                this.f20784h.m2247b(this.f20787k, 2);
                this.f20787k = null;
            }
            this.f20779b = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f20785i != i) {
            if (i > 0) {
                this.f20785i = i;
            } else {
                this.f20785i = -1;
            }
            if (!this.f20779b) {
                return;
            }
            m2333l();
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f20788l != i) {
            this.f20788l = i;
            m2332m();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f20791o != colorStateList) {
            this.f20791o = colorStateList;
            m2332m();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f20789m != i) {
            this.f20789m = i;
            m2332m();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f20790n != colorStateList) {
            this.f20790n = colorStateList;
            m2332m();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f20765ae = colorStateList;
        this.f20766af = colorStateList;
        if (this.f20760a != null) {
            m2354a(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m2362a(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f20754R.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f20754R.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f20754R.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(int i) {
        setEndIconDrawable(i != 0 ? C0094a.m22275b(getContext(), i) : null);
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f20754R.setImageDrawable(drawable);
    }

    public void setEndIconMode(int i) {
        int i2 = this.f20752P;
        this.f20752P = i;
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().mo2270a(this.f20799w)) {
            getEndIconDelegate().mo2230a();
            m2319z();
            m2351b(i2);
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.f20799w + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        m2360a(this.f20754R, onClickListener, this.f20764ad);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f20764ad = onLongClickListener;
        m2359a(this.f20754R, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f20756T != colorStateList) {
            this.f20756T = colorStateList;
            this.f20757U = true;
            m2319z();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f20758V != mode) {
            this.f20758V = mode;
            this.f20759W = true;
            m2319z();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (m2340e() != z) {
            this.f20754R.setVisibility(z ? 0 : 4);
            m2375A();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.f20784h.m2240e()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            setErrorEnabled(true);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.f20784h.m2246b(charSequence);
        } else {
            this.f20784h.m2250b();
        }
    }

    public void setErrorEnabled(boolean z) {
        this.f20784h.m2251a(z);
    }

    public void setErrorIconDrawable(int i) {
        setErrorIconDrawable(i != 0 ? C0094a.m22275b(getContext(), i) : null);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f20763ac.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f20784h.m2240e());
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f20763ac.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = C0535a.m20584g(drawable).mutate();
            C0535a.m20595a(drawable2, colorStateList);
        }
        if (this.f20763ac.getDrawable() != drawable2) {
            this.f20763ac.setImageDrawable(drawable2);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f20763ac.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = C0535a.m20584g(drawable).mutate();
            C0535a.m20592a(drawable2, mode);
        }
        if (this.f20763ac.getDrawable() != drawable2) {
            this.f20763ac.setImageDrawable(drawable2);
        }
    }

    public void setErrorTextAppearance(int i) {
        this.f20784h.m2249b(i);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        this.f20784h.m2264a(colorStateList);
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (!m2352b()) {
                return;
            }
            setHelperTextEnabled(false);
            return;
        }
        if (!m2352b()) {
            setHelperTextEnabled(true);
        }
        this.f20784h.m2253a(charSequence);
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        this.f20784h.m2248b(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.f20784h.m2245b(z);
    }

    public void setHelperTextTextAppearance(int i) {
        this.f20784h.m2243c(i);
    }

    public void setHint(CharSequence charSequence) {
        if (this.f20792p) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f20775ao = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f20792p) {
            this.f20792p = z;
            if (!this.f20792p) {
                this.f20794r = false;
                if (!TextUtils.isEmpty(this.f20793q) && TextUtils.isEmpty(this.f20760a.getHint())) {
                    this.f20760a.setHint(this.f20793q);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f20760a.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f20793q)) {
                        setHint(hint);
                    }
                    this.f20760a.setHint((CharSequence) null);
                }
                this.f20794r = true;
            }
            if (this.f20760a == null) {
                return;
            }
            m2334k();
        }
    }

    public void setHintTextAppearance(int i) {
        this.f20780c.m2875c(i);
        this.f20766af = this.f20780c.m2863i();
        if (this.f20760a != null) {
            m2354a(false);
            m2334k();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f20766af != colorStateList) {
            if (this.f20765ae == null) {
                this.f20780c.m2896a(colorStateList);
            }
            this.f20766af = colorStateList;
            if (this.f20760a == null) {
                return;
            }
            m2354a(false);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f20754R.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? C0094a.m22275b(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f20754R.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.f20752P != 1) {
            setEndIconMode(1);
        } else if (z) {
        } else {
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f20756T = colorStateList;
        this.f20757U = true;
        m2319z();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f20758V = mode;
        this.f20759W = true;
        m2319z();
    }

    public void setStartIconCheckable(boolean z) {
        this.f20744H.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f20744H.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? C0094a.m22275b(getContext(), i) : null);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f20744H.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            m2321x();
            return;
        }
        setStartIconVisible(false);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        setStartIconContentDescription((CharSequence) null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        m2360a(this.f20744H, onClickListener, this.f20750N);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f20750N = onLongClickListener;
        m2359a(this.f20744H, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.f20745I != colorStateList) {
            this.f20745I = colorStateList;
            this.f20746J = true;
            m2321x();
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.f20747K != mode) {
            this.f20747K = mode;
            this.f20748L = true;
            m2321x();
        }
    }

    public void setStartIconVisible(boolean z) {
        if (m2342d() != z) {
            this.f20744H.setVisibility(z ? 0 : 8);
            m2375A();
        }
    }

    public void setTextInputAccessibilityDelegate(C4808a c4808a) {
        if (this.f20760a != null) {
            C0595u.m20345a(this.f20760a, c4808a);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f20743G) {
            this.f20743G = typeface;
            this.f20780c.m2880b(typeface);
            this.f20784h.m2263a(typeface);
            if (this.f20787k == null) {
                return;
            }
            this.f20787k.setTypeface(typeface);
        }
    }
}
