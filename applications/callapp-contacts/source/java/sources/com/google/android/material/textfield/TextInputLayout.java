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
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0392f;
import androidx.appcompat.widget.C0407p;
import androidx.core.content.C0790b;
import androidx.core.graphics.C0834a;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p035d.C0811a;
import androidx.core.view.C0865a;
import androidx.core.view.C0912h;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.core.widget.C0959h;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14616a;
import com.google.android.material.internal.C14619b;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p365b.C14416a;
import com.google.android.material.p371h.C14598c;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputLayout.class */
public class TextInputLayout extends LinearLayout {

    /* renamed from: n */
    private static final int f53981n = C14376a.C14387k.Widget_Design_TextInputLayout;

    /* renamed from: A */
    private int f53982A;

    /* renamed from: B */
    private ColorStateList f53983B;

    /* renamed from: C */
    private ColorStateList f53984C;

    /* renamed from: D */
    private CharSequence f53985D;

    /* renamed from: E */
    private final TextView f53986E;

    /* renamed from: F */
    private final TextView f53987F;

    /* renamed from: G */
    private boolean f53988G;

    /* renamed from: H */
    private CharSequence f53989H;

    /* renamed from: I */
    private C14670h f53990I;

    /* renamed from: J */
    private C14678m f53991J;

    /* renamed from: K */
    private final int f53992K;

    /* renamed from: L */
    private int f53993L;

    /* renamed from: M */
    private int f53994M;

    /* renamed from: N */
    private int f53995N;

    /* renamed from: O */
    private int f53996O;

    /* renamed from: P */
    private int f53997P;

    /* renamed from: Q */
    private final Rect f53998Q;

    /* renamed from: R */
    private final Rect f53999R;

    /* renamed from: S */
    private final RectF f54000S;

    /* renamed from: T */
    private Typeface f54001T;

    /* renamed from: U */
    private final CheckableImageButton f54002U;

    /* renamed from: V */
    private ColorStateList f54003V;

    /* renamed from: W */
    private boolean f54004W;

    /* renamed from: a */
    public EditText f54005a;

    /* renamed from: aA */
    private int f54006aA;

    /* renamed from: aB */
    private int f54007aB;

    /* renamed from: aC */
    private int f54008aC;

    /* renamed from: aD */
    private int f54009aD;

    /* renamed from: aE */
    private int f54010aE;

    /* renamed from: aF */
    private boolean f54011aF;

    /* renamed from: aG */
    private boolean f54012aG;

    /* renamed from: aH */
    private ValueAnimator f54013aH;

    /* renamed from: aI */
    private boolean f54014aI;

    /* renamed from: aJ */
    private boolean f54015aJ;

    /* renamed from: aa */
    private PorterDuff.Mode f54016aa;

    /* renamed from: ab */
    private boolean f54017ab;

    /* renamed from: ac */
    private Drawable f54018ac;

    /* renamed from: ad */
    private int f54019ad;

    /* renamed from: ae */
    private View.OnLongClickListener f54020ae;

    /* renamed from: af */
    private final LinkedHashSet<AbstractC14790b> f54021af;

    /* renamed from: ag */
    private int f54022ag;

    /* renamed from: ah */
    private final SparseArray<AbstractC14818e> f54023ah;

    /* renamed from: ai */
    private final LinkedHashSet<AbstractC14791c> f54024ai;

    /* renamed from: aj */
    private ColorStateList f54025aj;

    /* renamed from: ak */
    private boolean f54026ak;

    /* renamed from: al */
    private PorterDuff.Mode f54027al;

    /* renamed from: am */
    private boolean f54028am;

    /* renamed from: an */
    private Drawable f54029an;

    /* renamed from: ao */
    private int f54030ao;

    /* renamed from: ap */
    private Drawable f54031ap;

    /* renamed from: aq */
    private View.OnLongClickListener f54032aq;

    /* renamed from: ar */
    private View.OnLongClickListener f54033ar;

    /* renamed from: as */
    private final CheckableImageButton f54034as;

    /* renamed from: at */
    private ColorStateList f54035at;

    /* renamed from: au */
    private ColorStateList f54036au;

    /* renamed from: av */
    private ColorStateList f54037av;

    /* renamed from: aw */
    private int f54038aw;

    /* renamed from: ax */
    private int f54039ax;

    /* renamed from: ay */
    private int f54040ay;

    /* renamed from: az */
    private ColorStateList f54041az;

    /* renamed from: b */
    boolean f54042b;

    /* renamed from: c */
    int f54043c;

    /* renamed from: d */
    boolean f54044d;

    /* renamed from: e */
    TextView f54045e;

    /* renamed from: f */
    CharSequence f54046f;

    /* renamed from: g */
    boolean f54047g;

    /* renamed from: h */
    C14670h f54048h;

    /* renamed from: i */
    int f54049i;

    /* renamed from: j */
    int f54050j;

    /* renamed from: k */
    final CheckableImageButton f54051k;

    /* renamed from: l */
    boolean f54052l;

    /* renamed from: m */
    final C14616a f54053m;

    /* renamed from: o */
    private final FrameLayout f54054o;

    /* renamed from: p */
    private final LinearLayout f54055p;

    /* renamed from: q */
    private final LinearLayout f54056q;

    /* renamed from: r */
    private final FrameLayout f54057r;

    /* renamed from: s */
    private CharSequence f54058s;

    /* renamed from: t */
    private final C14819f f54059t;

    /* renamed from: u */
    private int f54060u;

    /* renamed from: v */
    private int f54061v;

    /* renamed from: w */
    private CharSequence f54062w;

    /* renamed from: x */
    private boolean f54063x;

    /* renamed from: y */
    private TextView f54064y;

    /* renamed from: z */
    private ColorStateList f54065z;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.textfield.TextInputLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        CharSequence error;
        CharSequence helperText;
        CharSequence hintText;
        boolean isEndIconChecked;
        CharSequence placeholderText;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.error = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.isEndIconChecked = parcel.readInt() != 1 ? false : true;
            this.hintText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.helperText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.placeholderText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.error) + " hint=" + ((Object) this.hintText) + " helperText=" + ((Object) this.helperText) + " placeholderText=" + ((Object) this.placeholderText) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.error, parcel, i);
            parcel.writeInt(this.isEndIconChecked ? 1 : 0);
            TextUtils.writeToParcel(this.hintText, parcel, i);
            TextUtils.writeToParcel(this.helperText, parcel, i);
            TextUtils.writeToParcel(this.placeholderText, parcel, i);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$a.class */
    public static class C14789a extends C0865a {

        /* renamed from: b */
        private final TextInputLayout f54070b;

        public C14789a(TextInputLayout textInputLayout) {
            this.f54070b = textInputLayout;
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public void mo9886a(View view, C0869c c0869c) {
            super.mo9886a(view, c0869c);
            EditText editText = this.f54070b.f54005a;
            Editable text = editText != null ? editText.getText() : null;
            CharSequence m10045a = this.f54070b.m10045a();
            CharSequence m10015d = this.f54070b.m10015d();
            CharSequence m10025b = this.f54070b.m10025b();
            int i = this.f54070b.f54043c;
            TextInputLayout textInputLayout = this.f54070b;
            CharSequence charSequence = null;
            if (textInputLayout.f54042b) {
                charSequence = null;
                if (textInputLayout.f54044d) {
                    charSequence = null;
                    if (textInputLayout.f54045e != null) {
                        charSequence = textInputLayout.f54045e.getContentDescription();
                    }
                }
            }
            boolean z = !TextUtils.isEmpty(text);
            boolean isEmpty = TextUtils.isEmpty(m10045a);
            boolean z2 = this.f54070b.f54052l;
            boolean z3 = !TextUtils.isEmpty(m10015d);
            boolean z4 = z3 || !TextUtils.isEmpty(charSequence);
            String charSequence2 = isEmpty ^ true ? m10045a.toString() : "";
            if (z) {
                c0869c.m44259c(text);
            } else if (!TextUtils.isEmpty(charSequence2)) {
                c0869c.m44259c(charSequence2);
                if ((!z2) && m10025b != null) {
                    c0869c.m44259c(charSequence2 + ", " + ((Object) m10025b));
                }
            } else if (m10025b != null) {
                c0869c.m44259c(m10025b);
            }
            if (!TextUtils.isEmpty(charSequence2)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    c0869c.m44246f(charSequence2);
                } else {
                    String str = charSequence2;
                    if (z) {
                        str = ((Object) text) + ", " + charSequence2;
                    }
                    c0869c.m44259c(str);
                }
                boolean z5 = !z;
                if (Build.VERSION.SDK_INT >= 26) {
                    c0869c.f3644a.setShowingHintText(z5);
                } else {
                    c0869c.m44283a(4, z5);
                }
            }
            if (text == null || text.length() != i) {
                i = -1;
            }
            if (Build.VERSION.SDK_INT >= 21) {
                c0869c.f3644a.setMaxTextLength(i);
            }
            if (z4) {
                if (z3) {
                    charSequence = m10015d;
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    c0869c.f3644a.setError(charSequence);
                }
            }
            if (Build.VERSION.SDK_INT < 17 || editText == null) {
                return;
            }
            editText.setLabelFor(C14376a.C14382f.textinput_helper_text);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$b.class */
    public interface AbstractC14790b {
        /* renamed from: a */
        void mo9933a(TextInputLayout textInputLayout);
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$c.class */
    public interface AbstractC14791c {
        /* renamed from: a */
        void mo9932a(TextInputLayout textInputLayout, int i);
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.textInputStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInputLayout(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 2331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: A */
    private boolean m10067A() {
        if (this.f54049i == 1) {
            return Build.VERSION.SDK_INT < 16 || this.f54005a.getMinLines() <= 1;
        }
        return false;
    }

    /* renamed from: B */
    private int m10066B() {
        int i = this.f54050j;
        if (this.f54049i == 1) {
            i = C0834a.m44403a(this.f54050j, C14416a.m11240a(getContext(), C14376a.C14378b.colorSurface, 0));
        }
        return i;
    }

    /* renamed from: C */
    private void m10065C() {
        C14670h c14670h = this.f54048h;
        if (c14670h == null) {
            return;
        }
        c14670h.setShapeAppearanceModel(this.f53991J);
        if (m10063E()) {
            this.f54048h.m10482a(this.f53994M, this.f53997P);
        }
        int m10066B = m10066B();
        this.f54050j = m10066B;
        this.f54048h.m10456g(ColorStateList.valueOf(m10066B));
        if (this.f54022ag == 3) {
            this.f54005a.getBackground().invalidateSelf();
        }
        m10064D();
        invalidate();
    }

    /* renamed from: D */
    private void m10064D() {
        if (this.f53990I == null) {
            return;
        }
        if (m10062F()) {
            this.f53990I.m10456g(ColorStateList.valueOf(this.f53997P));
        }
        invalidate();
    }

    /* renamed from: E */
    private boolean m10063E() {
        return this.f54049i == 2 && m10062F();
    }

    /* renamed from: F */
    private boolean m10062F() {
        return this.f53994M >= 0 && this.f53997P != 0;
    }

    /* renamed from: G */
    private boolean m10061G() {
        return this.f54002U.getVisibility() == 0;
    }

    /* renamed from: H */
    private void m10060H() {
        m10036a(this.f54002U, this.f54003V);
    }

    /* renamed from: I */
    private void m10059I() {
        m10036a(this.f54034as, this.f54035at);
    }

    /* renamed from: J */
    private AbstractC14818e m10058J() {
        AbstractC14818e abstractC14818e = this.f54023ah.get(this.f54022ag);
        return abstractC14818e != null ? abstractC14818e : this.f54023ah.get(0);
    }

    /* renamed from: K */
    private void m10057K() {
        Iterator<AbstractC14790b> it2 = this.f54021af.iterator();
        while (it2.hasNext()) {
            it2.next().mo9933a(this);
        }
    }

    /* renamed from: L */
    private void m10056L() {
        m10033a(this.f54002U, this.f54004W, this.f54003V, this.f54017ab, this.f54016aa);
    }

    /* renamed from: M */
    private boolean m10055M() {
        return this.f54022ag != 0;
    }

    /* renamed from: N */
    private void m10054N() {
        m10033a(this.f54051k, this.f54026ak, this.f54025aj, this.f54028am, this.f54027al);
    }

    /* renamed from: O */
    private boolean m10053O() {
        boolean z;
        if (this.f54005a == null) {
            return false;
        }
        if (m10052P()) {
            int measuredWidth = this.f54055p.getMeasuredWidth() - this.f54005a.getPaddingLeft();
            if (this.f54018ac == null || this.f54019ad != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f54018ac = colorDrawable;
                this.f54019ad = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] m43957b = C0959h.m43957b(this.f54005a);
            Drawable drawable = m43957b[0];
            Drawable drawable2 = this.f54018ac;
            if (drawable != drawable2) {
                C0959h.m43962a(this.f54005a, drawable2, m43957b[1], m43957b[2], m43957b[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.f54018ac != null) {
                Drawable[] m43957b2 = C0959h.m43957b(this.f54005a);
                C0959h.m43962a(this.f54005a, null, m43957b2[1], m43957b2[2], m43957b2[3]);
                this.f54018ac = null;
                z = true;
            }
            z = false;
        }
        if (m10051Q()) {
            int measuredWidth2 = this.f53987F.getMeasuredWidth() - this.f54005a.getPaddingRight();
            CheckableImageButton m10050R = m10050R();
            int i = measuredWidth2;
            if (m10050R != null) {
                i = measuredWidth2 + m10050R.getMeasuredWidth() + C0912h.m44187a((ViewGroup.MarginLayoutParams) m10050R.getLayoutParams());
            }
            Drawable[] m43957b3 = C0959h.m43957b(this.f54005a);
            Drawable drawable3 = this.f54029an;
            if (drawable3 == null || this.f54030ao == i) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f54029an = colorDrawable2;
                    this.f54030ao = i;
                    colorDrawable2.setBounds(0, 0, i, 1);
                }
                Drawable drawable4 = m43957b3[2];
                Drawable drawable5 = this.f54029an;
                if (drawable4 != drawable5) {
                    this.f54031ap = m43957b3[2];
                    C0959h.m43962a(this.f54005a, m43957b3[0], m43957b3[1], drawable5, m43957b3[3]);
                    z = true;
                }
            } else {
                this.f54030ao = i;
                drawable3.setBounds(0, 0, i, 1);
                C0959h.m43962a(this.f54005a, m43957b3[0], m43957b3[1], this.f54029an, m43957b3[3]);
                z = true;
            }
        } else if (this.f54029an != null) {
            Drawable[] m43957b4 = C0959h.m43957b(this.f54005a);
            if (m43957b4[2] == this.f54029an) {
                C0959h.m43962a(this.f54005a, m43957b4[0], m43957b4[1], this.f54031ap, m43957b4[3]);
                z = true;
            }
            this.f54029an = null;
        }
        return z;
    }

    /* renamed from: P */
    private boolean m10052P() {
        return !(this.f54002U.getDrawable() == null && this.f53985D == null) && this.f54055p.getMeasuredWidth() > 0;
    }

    /* renamed from: Q */
    private boolean m10051Q() {
        return (this.f54034as.getVisibility() == 0 || ((m10055M() && m10013e()) || this.f54046f != null)) && this.f54056q.getMeasuredWidth() > 0;
    }

    /* renamed from: R */
    private CheckableImageButton m10050R() {
        if (this.f54034as.getVisibility() == 0) {
            return this.f54034as;
        }
        if (m10055M() && m10013e()) {
            return this.f54051k;
        }
        return null;
    }

    /* renamed from: S */
    private boolean m10049S() {
        return this.f53988G && !TextUtils.isEmpty(this.f53989H) && (this.f54048h instanceof C14804c);
    }

    /* renamed from: T */
    private void m10048T() {
        if (!m10049S()) {
            return;
        }
        RectF rectF = this.f54000S;
        this.f54053m.m10595a(rectF, this.f54005a.getWidth(), this.f54005a.getGravity());
        m10040a(rectF);
        rectF.offset(-getPaddingLeft(), -getPaddingTop());
        ((C14804c) this.f54048h).m9985a(rectF);
    }

    /* renamed from: U */
    private void m10047U() {
        if (m10049S()) {
            ((C14804c) this.f54048h).m9986a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* renamed from: V */
    private boolean m10046V() {
        return this.f54034as.getVisibility() == 0;
    }

    /* renamed from: a */
    private int m10042a(int i, boolean z) {
        int compoundPaddingLeft = i + this.f54005a.getCompoundPaddingLeft();
        int i2 = compoundPaddingLeft;
        if (this.f53985D != null) {
            i2 = compoundPaddingLeft;
            if (!z) {
                i2 = (compoundPaddingLeft - this.f53986E.getMeasuredWidth()) + this.f53986E.getPaddingLeft();
            }
        }
        return i2;
    }

    /* renamed from: a */
    private void m10044a(float f) {
        if (this.f54053m.f53343a == f) {
            return;
        }
        if (this.f54013aH == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f54013aH = valueAnimator;
            valueAnimator.setInterpolator(C14389a.f52369b);
            this.f54013aH.setDuration(167L);
            this.f54013aH.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.TextInputLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TextInputLayout.this.f54053m.m10589b(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
        }
        this.f54013aH.setFloatValues(this.f54053m.f53343a, f);
        this.f54013aH.start();
    }

    /* renamed from: a */
    private static void m10041a(Context context, TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? C14376a.C14386j.character_counter_overflowed_content_description : C14376a.C14386j.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* renamed from: a */
    private void m10040a(RectF rectF) {
        rectF.left -= this.f53992K;
        rectF.top -= this.f53992K;
        rectF.right += this.f53992K;
        rectF.bottom += this.f53992K;
    }

    /* renamed from: a */
    private static void m10039a(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m10039a((ViewGroup) childAt, z);
            }
        }
    }

    /* renamed from: a */
    private void m10036a(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(m10037a(checkableImageButton), colorStateList.getDefaultColor());
        Drawable mutate = C0840a.m44345f(drawable).mutate();
        C0840a.m44355a(mutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    /* renamed from: a */
    private static void m10035a(CheckableImageButton checkableImageButton, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        m10022b(checkableImageButton, onLongClickListener);
    }

    /* renamed from: a */
    private static void m10034a(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m10022b(checkableImageButton, onLongClickListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r6 != false) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m10033a(com.google.android.material.internal.CheckableImageButton r3, boolean r4, android.content.res.ColorStateList r5, boolean r6, android.graphics.PorterDuff.Mode r7) {
        /*
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L42
            r0 = r4
            if (r0 != 0) goto L1b
            r0 = r8
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L42
        L1b:
            r0 = r8
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0840a.m44345f(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r8 = r0
            r0 = r4
            if (r0 == 0) goto L2f
            r0 = r8
            r1 = r5
            androidx.core.graphics.drawable.C0840a.m44355a(r0, r1)
        L2f:
            r0 = r8
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L42
            r0 = r8
            r1 = r7
            androidx.core.graphics.drawable.C0840a.m44352a(r0, r1)
            r0 = r8
            r9 = r0
        L42:
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r1 = r9
            if (r0 == r1) goto L51
            r0 = r3
            r1 = r9
            r0.setImageDrawable(r1)
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m10033a(com.google.android.material.internal.CheckableImageButton, boolean, android.content.res.ColorStateList, boolean, android.graphics.PorterDuff$Mode):void");
    }

    /* renamed from: a */
    private void m10028a(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f53989H)) {
            this.f53989H = charSequence;
            this.f54053m.m10592a(charSequence);
            if (this.f54052l) {
                return;
            }
            m10048T();
        }
    }

    /* renamed from: a */
    private void m10027a(boolean z) {
        if (this.f54063x == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f54064y = appCompatTextView;
            appCompatTextView.setId(C14376a.C14382f.textinput_placeholder);
            C0926v.m44093h(this.f54064y);
            setPlaceholderTextAppearance(this.f53982A);
            setPlaceholderTextColor(this.f54065z);
            m9998s();
        } else {
            m9997t();
            this.f54064y = null;
        }
        this.f54063x = z;
    }

    /* renamed from: a */
    private int[] m10037a(CheckableImageButton checkableImageButton) {
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        return copyOf;
    }

    /* renamed from: b */
    private int m10023b(int i, boolean z) {
        int compoundPaddingRight = i - this.f54005a.getCompoundPaddingRight();
        int i2 = compoundPaddingRight;
        if (this.f53985D != null) {
            i2 = compoundPaddingRight;
            if (z) {
                i2 = compoundPaddingRight + (this.f53986E.getMeasuredWidth() - this.f53986E.getPaddingRight());
            }
        }
        return i2;
    }

    /* renamed from: b */
    public void m10024b(int i) {
        if (i != 0 || this.f54052l) {
            m9999r();
        } else {
            m10000q();
        }
    }

    /* renamed from: b */
    private static void m10022b(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean m44153F = C0926v.m44153F(checkableImageButton);
        boolean z = false;
        int i = 1;
        boolean z2 = onLongClickListener != null;
        if (m44153F || z2) {
            z = true;
        }
        checkableImageButton.setFocusable(z);
        checkableImageButton.setClickable(m44153F);
        checkableImageButton.setPressable(m44153F);
        checkableImageButton.setLongClickable(z2);
        if (!z) {
            i = 2;
        }
        C0926v.m44102c((View) checkableImageButton, i);
    }

    /* renamed from: b */
    private void m10020b(boolean z) {
        if (!z || this.f54051k.getDrawable() == null) {
            m10054N();
            return;
        }
        Drawable mutate = C0840a.m44345f(this.f54051k.getDrawable()).mutate();
        C0840a.m44357a(mutate, this.f54059t.m9937e());
        this.f54051k.setImageDrawable(mutate);
    }

    /* renamed from: b */
    private void m10019b(boolean z, boolean z2) {
        int defaultColor = this.f54041az.getDefaultColor();
        int colorForState = this.f54041az.getColorForState(new int[]{16843623, 16842910}, defaultColor);
        int colorForState2 = this.f54041az.getColorForState(new int[]{16843518, 16842910}, defaultColor);
        if (z) {
            this.f53997P = colorForState2;
        } else if (z2) {
            this.f53997P = colorForState;
        } else {
            this.f53997P = defaultColor;
        }
    }

    /* renamed from: c */
    private void m10016c(boolean z) {
        ValueAnimator valueAnimator = this.f54013aH;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f54013aH.cancel();
        }
        if (!z || !this.f54012aG) {
            this.f54053m.m10589b(1.0f);
        } else {
            m10044a(1.0f);
        }
        this.f54052l = false;
        if (m10049S()) {
            m10048T();
        }
        m10001p();
        m9996u();
        m9994w();
    }

    /* renamed from: d */
    private void m10014d(boolean z) {
        this.f54034as.setVisibility(z ? 0 : 8);
        FrameLayout frameLayout = this.f54057r;
        int i = 0;
        if (z) {
            i = 8;
        }
        frameLayout.setVisibility(i);
        m9993x();
        if (!m10055M()) {
            m10053O();
        }
    }

    /* renamed from: e */
    private void m10012e(boolean z) {
        ValueAnimator valueAnimator = this.f54013aH;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f54013aH.cancel();
        }
        if (!z || !this.f54012aG) {
            this.f54053m.m10589b(BitmapDescriptorFactory.HUE_RED);
        } else {
            m10044a(BitmapDescriptorFactory.HUE_RED);
        }
        if (m10049S() && ((C14804c) this.f54048h).m9987a()) {
            m10047U();
        }
        this.f54052l = true;
        m9999r();
        m9996u();
        m9994w();
    }

    /* renamed from: h */
    private void m10009h() {
        m10008i();
        m10007j();
        m10010g();
        m10005l();
        m10004m();
        if (this.f54049i != 0) {
            m10003n();
        }
    }

    /* renamed from: i */
    private void m10008i() {
        int i = this.f54049i;
        if (i == 0) {
            this.f54048h = null;
            this.f53990I = null;
        } else if (i == 1) {
            this.f54048h = new C14670h(this.f53991J);
            this.f53990I = new C14670h();
        } else if (i != 2) {
            throw new IllegalArgumentException(this.f54049i + " is illegal; only @BoxBackgroundMode constants are supported.");
        } else {
            if (!this.f53988G || (this.f54048h instanceof C14804c)) {
                this.f54048h = new C14670h(this.f53991J);
            } else {
                this.f54048h = new C14804c(this.f53991J);
            }
            this.f53990I = null;
        }
    }

    /* renamed from: j */
    private void m10007j() {
        if (m10006k()) {
            C0926v.m44128a(this.f54005a, this.f54048h);
        }
    }

    /* renamed from: k */
    private boolean m10006k() {
        EditText editText = this.f54005a;
        return (editText == null || this.f54048h == null || editText.getBackground() != null || this.f54049i == 0) ? false : true;
    }

    /* renamed from: l */
    private void m10005l() {
        if (this.f54049i == 1) {
            if (C14598c.m10650b(getContext())) {
                this.f53993L = getResources().getDimensionPixelSize(C14376a.C14380d.material_font_2_0_box_collapsed_padding_top);
            } else if (!C14598c.m10654a(getContext())) {
            } else {
                this.f53993L = getResources().getDimensionPixelSize(C14376a.C14380d.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    /* renamed from: m */
    private void m10004m() {
        if (this.f54005a == null || this.f54049i != 1) {
            return;
        }
        if (C14598c.m10650b(getContext())) {
            EditText editText = this.f54005a;
            C0926v.m44109b(editText, C0926v.m44091i(editText), getResources().getDimensionPixelSize(C14376a.C14380d.material_filled_edittext_font_2_0_padding_top), C0926v.m44089j(this.f54005a), getResources().getDimensionPixelSize(C14376a.C14380d.material_filled_edittext_font_2_0_padding_bottom));
        } else if (!C14598c.m10654a(getContext())) {
        } else {
            EditText editText2 = this.f54005a;
            C0926v.m44109b(editText2, C0926v.m44091i(editText2), getResources().getDimensionPixelSize(C14376a.C14380d.material_filled_edittext_font_1_3_padding_top), C0926v.m44089j(this.f54005a), getResources().getDimensionPixelSize(C14376a.C14380d.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    /* renamed from: n */
    private void m10003n() {
        if (this.f54049i != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f54054o.getLayoutParams();
            int m9991z = m9991z();
            if (m9991z == layoutParams.topMargin) {
                return;
            }
            layoutParams.topMargin = m9991z;
            this.f54054o.requestLayout();
        }
    }

    /* renamed from: o */
    private void m10002o() {
        if (this.f54045e != null) {
            EditText editText = this.f54005a;
            m10043a(editText == null ? 0 : editText.getText().length());
        }
    }

    /* renamed from: p */
    private void m10001p() {
        EditText editText = this.f54005a;
        m10024b(editText == null ? 0 : editText.getText().length());
    }

    /* renamed from: q */
    private void m10000q() {
        TextView textView = this.f54064y;
        if (textView == null || !this.f54063x) {
            return;
        }
        textView.setText(this.f54062w);
        this.f54064y.setVisibility(0);
        this.f54064y.bringToFront();
    }

    /* renamed from: r */
    private void m9999r() {
        TextView textView = this.f54064y;
        if (textView == null || !this.f54063x) {
            return;
        }
        textView.setText((CharSequence) null);
        this.f54064y.setVisibility(4);
    }

    /* renamed from: s */
    private void m9998s() {
        TextView textView = this.f54064y;
        if (textView != null) {
            this.f54054o.addView(textView);
            this.f54064y.setVisibility(0);
        }
    }

    /* renamed from: t */
    private void m9997t() {
        TextView textView = this.f54064y;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* renamed from: u */
    private void m9996u() {
        this.f53986E.setVisibility((this.f53985D == null || this.f54052l) ? 8 : 0);
        m10053O();
    }

    /* renamed from: v */
    private void m9995v() {
        if (this.f54005a == null) {
            return;
        }
        C0926v.m44109b(this.f53986E, m10061G() ? 0 : C0926v.m44091i(this.f54005a), this.f54005a.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(C14376a.C14380d.material_input_text_to_prefix_suffix_padding), this.f54005a.getCompoundPaddingBottom());
    }

    /* renamed from: w */
    private void m9994w() {
        int visibility = this.f53987F.getVisibility();
        int i = 0;
        boolean z = this.f54046f != null && !this.f54052l;
        TextView textView = this.f53987F;
        if (!z) {
            i = 8;
        }
        textView.setVisibility(i);
        if (visibility != this.f53987F.getVisibility()) {
            m10058J().mo9960a(z);
        }
        m10053O();
    }

    /* renamed from: x */
    private void m9993x() {
        if (this.f54005a == null) {
            return;
        }
        C0926v.m44109b(this.f53987F, getContext().getResources().getDimensionPixelSize(C14376a.C14380d.material_input_text_to_prefix_suffix_padding), this.f54005a.getPaddingTop(), (m10013e() || m10046V()) ? 0 : C0926v.m44089j(this.f54005a), this.f54005a.getPaddingBottom());
    }

    /* renamed from: y */
    private void m9992y() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f54045e;
        if (textView != null) {
            m10038a(textView, this.f54044d ? this.f54060u : this.f54061v);
            if (!this.f54044d && (colorStateList2 = this.f53983B) != null) {
                this.f54045e.setTextColor(colorStateList2);
            }
            if (!this.f54044d || (colorStateList = this.f53984C) == null) {
                return;
            }
            this.f54045e.setTextColor(colorStateList);
        }
    }

    /* renamed from: z */
    private int m9991z() {
        float m10608a;
        if (!this.f53988G) {
            return 0;
        }
        int i = this.f54049i;
        if (i == 0 || i == 1) {
            m10608a = this.f54053m.m10608a();
        } else if (i != 2) {
            return 0;
        } else {
            m10608a = this.f54053m.m10608a() / 2.0f;
        }
        return (int) m10608a;
    }

    /* renamed from: a */
    public final CharSequence m10045a() {
        if (this.f53988G) {
            return this.f53989H;
        }
        return null;
    }

    /* renamed from: a */
    final void m10043a(int i) {
        boolean z = this.f54044d;
        int i2 = this.f54043c;
        if (i2 == -1) {
            this.f54045e.setText(String.valueOf(i));
            this.f54045e.setContentDescription(null);
            this.f54044d = false;
        } else {
            this.f54044d = i > i2;
            m10041a(getContext(), this.f54045e, i, this.f54043c, this.f54044d);
            if (z != this.f54044d) {
                m9992y();
            }
            this.f54045e.setText(C0811a.m44449a().m44445a(getContext().getString(C14376a.C14386j.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f54043c))));
        }
        if (this.f54005a == null || z == this.f54044d) {
            return;
        }
        m10026a(false, false);
        m10010g();
        m10018c();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10038a(android.widget.TextView r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            androidx.core.widget.C0959h.m43965a(r0, r1)     // Catch: java.lang.Exception -> L28
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L28
            r1 = 23
            if (r0 < r1) goto L23
            r0 = r5
            android.content.res.ColorStateList r0 = r0.getTextColors()     // Catch: java.lang.Exception -> L28
            int r0 = r0.getDefaultColor()     // Catch: java.lang.Exception -> L28
            r6 = r0
            r0 = r6
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r0 != r1) goto L23
            r0 = r7
            r6 = r0
            goto L2c
        L23:
            r0 = 0
            r6 = r0
            goto L2c
        L28:
            r8 = move-exception
            r0 = r7
            r6 = r0
        L2c:
            r0 = r6
            if (r0 == 0) goto L45
            r0 = r5
            int r1 = com.google.android.material.C14376a.C14387k.TextAppearance_AppCompat_Caption
            androidx.core.widget.C0959h.m43965a(r0, r1)
            r0 = r5
            r1 = r4
            android.content.Context r1 = r1.getContext()
            int r2 = com.google.android.material.C14376a.C14379c.design_error
            int r1 = androidx.core.content.C0790b.m44492c(r1, r2)
            r0.setTextColor(r1)
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m10038a(android.widget.TextView, int):void");
    }

    /* renamed from: a */
    public final void m10032a(AbstractC14790b abstractC14790b) {
        this.f54021af.add(abstractC14790b);
        if (this.f54005a != null) {
            abstractC14790b.mo9933a(this);
        }
    }

    /* renamed from: a */
    public final void m10031a(AbstractC14791c abstractC14791c) {
        this.f54024ai.add(abstractC14791c);
    }

    /* renamed from: a */
    public final void m10026a(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f54005a;
        boolean z3 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f54005a;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean m9939d = this.f54059t.m9939d();
        ColorStateList colorStateList2 = this.f54036au;
        if (colorStateList2 != null) {
            this.f54053m.m10599a(colorStateList2);
            this.f54053m.m10586b(this.f54036au);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.f54036au;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f54010aE) : this.f54010aE;
            this.f54053m.m10599a(ColorStateList.valueOf(colorForState));
            this.f54053m.m10586b(ColorStateList.valueOf(colorForState));
        } else if (m9939d) {
            this.f54053m.m10599a(this.f54059t.m9936f());
        } else if (this.f54044d && (textView = this.f54045e) != null) {
            this.f54053m.m10599a(textView.getTextColors());
        } else if (z4 && (colorStateList = this.f54037av) != null) {
            this.f54053m.m10599a(colorStateList);
        }
        if (z3 || !this.f54011aF || (isEnabled() && z4)) {
            if (!z2 && !this.f54052l) {
                return;
            }
            m10016c(z);
        } else if (!z2 && this.f54052l) {
        } else {
            m10012e(z);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f54054o.addView(view, layoutParams2);
        this.f54054o.setLayoutParams(layoutParams);
        m10003n();
        EditText editText = (EditText) view;
        if (this.f54005a != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        this.f54005a = editText;
        m10009h();
        setTextInputAccessibilityDelegate(new C14789a(this));
        this.f54053m.m10579c(this.f54005a.getTypeface());
        this.f54053m.m10607a(this.f54005a.getTextSize());
        int gravity = this.f54005a.getGravity();
        this.f54053m.m10588b((gravity & (-113)) | 48);
        this.f54053m.m10604a(gravity);
        this.f54005a.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.textfield.TextInputLayout.1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                TextInputLayout textInputLayout = TextInputLayout.this;
                textInputLayout.m10026a(!textInputLayout.f54015aJ, false);
                if (TextInputLayout.this.f54042b) {
                    TextInputLayout.this.m10043a(editable.length());
                }
                if (TextInputLayout.this.f54063x) {
                    TextInputLayout.this.m10024b(editable.length());
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        });
        if (this.f54036au == null) {
            this.f54036au = this.f54005a.getHintTextColors();
        }
        if (this.f53988G) {
            if (TextUtils.isEmpty(this.f53989H)) {
                CharSequence hint = this.f54005a.getHint();
                this.f54058s = hint;
                setHint(hint);
                this.f54005a.setHint((CharSequence) null);
            }
            this.f54047g = true;
        }
        if (this.f54045e != null) {
            m10043a(this.f54005a.getText().length());
        }
        m10018c();
        this.f54059t.m9941c();
        this.f54055p.bringToFront();
        this.f54056q.bringToFront();
        this.f54057r.bringToFront();
        this.f54034as.bringToFront();
        m10057K();
        m9995v();
        m9993x();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        m10026a(false, true);
    }

    /* renamed from: b */
    public final CharSequence m10025b() {
        if (this.f54063x) {
            return this.f54062w;
        }
        return null;
    }

    /* renamed from: c */
    public final void m10018c() {
        Drawable background;
        TextView textView;
        EditText editText = this.f54005a;
        if (editText == null || this.f54049i != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        Drawable drawable = background;
        if (C0407p.m45619c(background)) {
            drawable = background.mutate();
        }
        if (this.f54059t.m9939d()) {
            drawable.setColorFilter(C0392f.m45731a(this.f54059t.m9937e(), PorterDuff.Mode.SRC_IN));
        } else if (this.f54044d && (textView = this.f54045e) != null) {
            drawable.setColorFilter(C0392f.m45731a(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            C0840a.m44346e(drawable);
            this.f54005a.refreshDrawableState();
        }
    }

    /* renamed from: d */
    public final CharSequence m10015d() {
        if (this.f54059t.f54129g) {
            return this.f54059t.f54128f;
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.f54005a;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f54058s != null) {
            boolean z = this.f54047g;
            this.f54047g = false;
            CharSequence hint = editText.getHint();
            this.f54005a.setHint(this.f54058s);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f54005a.setHint(hint);
                this.f54047g = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.f54054o.getChildCount());
        for (int i2 = 0; i2 < this.f54054o.getChildCount(); i2++) {
            View childAt = this.f54054o.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.f54005a) {
                newChild.setHint(m10045a());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f54015aJ = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f54015aJ = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f53988G) {
            this.f54053m.m10598a(canvas);
        }
        C14670h c14670h = this.f53990I;
        if (c14670h != null) {
            Rect bounds = c14670h.getBounds();
            bounds.top = bounds.bottom - this.f53994M;
            this.f53990I.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f54014aI) {
            return;
        }
        boolean z = true;
        this.f54014aI = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        C14616a c14616a = this.f54053m;
        boolean m10591a = c14616a != null ? c14616a.m10591a(drawableState) | false : false;
        if (this.f54005a != null) {
            if (!C0926v.m44157B(this) || !isEnabled()) {
                z = false;
            }
            m10026a(z, false);
        }
        m10018c();
        m10010g();
        if (m10591a) {
            invalidate();
        }
        this.f54014aI = false;
    }

    /* renamed from: e */
    public final boolean m10013e() {
        return this.f54057r.getVisibility() == 0 && this.f54051k.getVisibility() == 0;
    }

    /* renamed from: f */
    public final void m10011f() {
        m10036a(this.f54051k, this.f54025aj);
    }

    /* renamed from: g */
    public final void m10010g() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.f54048h == null || this.f54049i == 0) {
            return;
        }
        boolean z = isFocused() || ((editText2 = this.f54005a) != null && editText2.hasFocus());
        boolean z2 = isHovered() || ((editText = this.f54005a) != null && editText.isHovered());
        if (!isEnabled()) {
            this.f53997P = this.f54010aE;
        } else if (this.f54059t.m9939d()) {
            if (this.f54041az != null) {
                m10019b(z, z2);
            } else {
                this.f53997P = this.f54059t.m9937e();
            }
        } else if (!this.f54044d || (textView = this.f54045e) == null) {
            if (z) {
                this.f53997P = this.f54040ay;
            } else if (z2) {
                this.f53997P = this.f54039ax;
            } else {
                this.f53997P = this.f54038aw;
            }
        } else if (this.f54041az != null) {
            m10019b(z, z2);
        } else {
            this.f53997P = textView.getCurrentTextColor();
        }
        boolean z3 = false;
        if (this.f54034as.getDrawable() != null) {
            z3 = false;
            if (this.f54059t.f54129g) {
                z3 = false;
                if (this.f54059t.m9939d()) {
                    z3 = true;
                }
            }
        }
        m10014d(z3);
        m10059I();
        m10060H();
        m10011f();
        if (m10058J().mo9959b()) {
            m10020b(this.f54059t.m9939d());
        }
        if (!z || !isEnabled()) {
            this.f53994M = this.f53995N;
        } else {
            this.f53994M = this.f53996O;
        }
        if (this.f54049i == 1) {
            if (!isEnabled()) {
                this.f54050j = this.f54007aB;
            } else if (z2 && !z) {
                this.f54050j = this.f54009aD;
            } else if (z) {
                this.f54050j = this.f54008aC;
            } else {
                this.f54050j = this.f54006aA;
            }
        }
        m10065C();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f54005a;
        return editText != null ? editText.getBaseline() + getPaddingTop() + m9991z() : super.getBaseline();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f54005a;
        if (editText != null) {
            Rect rect = this.f53998Q;
            C14619b.m10556b(this, editText, rect);
            if (this.f53990I != null) {
                this.f53990I.setBounds(rect.left, rect.bottom - this.f53996O, rect.right, rect.bottom);
            }
            if (!this.f53988G) {
                return;
            }
            this.f54053m.m10607a(this.f54005a.getTextSize());
            int gravity = this.f54005a.getGravity();
            this.f54053m.m10588b((gravity & (-113)) | 48);
            this.f54053m.m10604a(gravity);
            C14616a c14616a = this.f54053m;
            if (this.f54005a == null) {
                throw new IllegalStateException();
            }
            Rect rect2 = this.f53999R;
            boolean z2 = C0926v.m44097f(this) == 1;
            rect2.bottom = rect.bottom;
            int i5 = this.f54049i;
            if (i5 == 1) {
                rect2.left = m10042a(rect.left, z2);
                rect2.top = rect.top + this.f53993L;
                rect2.right = m10023b(rect.right, z2);
            } else if (i5 != 2) {
                rect2.left = m10042a(rect.left, z2);
                rect2.top = getPaddingTop();
                rect2.right = m10023b(rect.right, z2);
            } else {
                rect2.left = rect.left + this.f54005a.getPaddingLeft();
                rect2.top = rect.top - m9991z();
                rect2.right = rect.right - this.f54005a.getPaddingRight();
            }
            c14616a.m10587b(rect2.left, rect2.top, rect2.right, rect2.bottom);
            C14616a c14616a2 = this.f54053m;
            if (this.f54005a == null) {
                throw new IllegalStateException();
            }
            Rect rect3 = this.f53999R;
            TextPaint textPaint = c14616a2.f53351f;
            textPaint.setTextSize(c14616a2.f53347b);
            textPaint.setTypeface(c14616a2.f53349d);
            if (Build.VERSION.SDK_INT >= 21) {
                textPaint.setLetterSpacing(c14616a2.f53353h);
            }
            float f = -c14616a2.f53351f.ascent();
            rect3.left = rect.left + this.f54005a.getCompoundPaddingLeft();
            rect3.top = m10067A() ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f54005a.getCompoundPaddingTop();
            rect3.right = rect.right - this.f54005a.getCompoundPaddingRight();
            rect3.bottom = m10067A() ? (int) (rect3.top + f) : rect.bottom - this.f54005a.getCompoundPaddingBottom();
            c14616a2.m10601a(rect3.left, rect3.top, rect3.right, rect3.bottom);
            this.f54053m.m10590b();
            if (!m10049S() || this.f54052l) {
                return;
            }
            m10048T();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z;
        EditText editText;
        int max;
        super.onMeasure(i, i2);
        if (this.f54005a == null || this.f54005a.getMeasuredHeight() >= (max = Math.max(this.f54056q.getMeasuredHeight(), this.f54055p.getMeasuredHeight()))) {
            z = false;
        } else {
            this.f54005a.setMinimumHeight(max);
            z = true;
        }
        boolean m10053O = m10053O();
        if (z || m10053O) {
            this.f54005a.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.3
                @Override // java.lang.Runnable
                public final void run() {
                    TextInputLayout.this.f54005a.requestLayout();
                }
            });
        }
        if (this.f54064y != null && (editText = this.f54005a) != null) {
            this.f54064y.setGravity(editText.getGravity());
            this.f54064y.setPadding(this.f54005a.getCompoundPaddingLeft(), this.f54005a.getCompoundPaddingTop(), this.f54005a.getCompoundPaddingRight(), this.f54005a.getCompoundPaddingBottom());
        }
        m9995v();
        m9993x();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.error);
        if (savedState.isEndIconChecked) {
            this.f54051k.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.2
                @Override // java.lang.Runnable
                public final void run() {
                    TextInputLayout.this.f54051k.performClick();
                    TextInputLayout.this.f54051k.jumpDrawablesToCurrentState();
                }
            });
        }
        setHint(savedState.hintText);
        setHelperText(savedState.helperText);
        setPlaceholderText(savedState.placeholderText);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f54059t.m9939d()) {
            savedState.error = m10015d();
        }
        savedState.isEndIconChecked = m10055M() && this.f54051k.isChecked();
        savedState.hintText = m10045a();
        savedState.helperText = this.f54059t.f54135m ? this.f54059t.f54134l : null;
        savedState.placeholderText = m10025b();
        return savedState;
    }

    public void setBoxBackgroundColor(int i) {
        if (this.f54050j != i) {
            this.f54050j = i;
            this.f54006aA = i;
            this.f54008aC = i;
            this.f54009aD = i;
            m10065C();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(C0790b.m44492c(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f54006aA = defaultColor;
        this.f54050j = defaultColor;
        this.f54007aB = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f54008aC = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        this.f54009aD = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
        m10065C();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f54049i) {
            return;
        }
        this.f54049i = i;
        if (this.f54005a == null) {
            return;
        }
        m10009h();
    }

    public void setBoxCornerRadii(float f, float f2, float f3, float f4) {
        C14670h c14670h = this.f54048h;
        if (c14670h != null && c14670h.m10451k() == f && this.f54048h.m10450l() == f2 && this.f54048h.m10448n() == f4 && this.f54048h.m10449m() == f3) {
            return;
        }
        this.f53991J = this.f53991J.m10422b().m10418b(f).m10416c(f2).m10414d(f4).m10412e(f3).m10421a();
        m10065C();
    }

    public void setBoxCornerRadiiResources(int i, int i2, int i3, int i4) {
        setBoxCornerRadii(getContext().getResources().getDimension(i), getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i3));
    }

    public void setBoxStrokeColor(int i) {
        if (this.f54040ay != i) {
            this.f54040ay = i;
            m10010g();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f54038aw = colorStateList.getDefaultColor();
            this.f54010aE = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f54039ax = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
            this.f54040ay = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        } else if (this.f54040ay != colorStateList.getDefaultColor()) {
            this.f54040ay = colorStateList.getDefaultColor();
        }
        m10010g();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f54041az != colorStateList) {
            this.f54041az = colorStateList;
            m10010g();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.f53995N = i;
        m10010g();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.f53996O = i;
        m10010g();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f54042b != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f54045e = appCompatTextView;
                appCompatTextView.setId(C14376a.C14382f.textinput_counter);
                Typeface typeface = this.f54001T;
                if (typeface != null) {
                    this.f54045e.setTypeface(typeface);
                }
                this.f54045e.setMaxLines(1);
                this.f54059t.m9952a(this.f54045e, 2);
                C0912h.m44186a((ViewGroup.MarginLayoutParams) this.f54045e.getLayoutParams(), getResources().getDimensionPixelOffset(C14376a.C14380d.mtrl_textinput_counter_margin_start));
                m9992y();
                m10002o();
            } else {
                this.f54059t.m9942b(this.f54045e, 2);
                this.f54045e = null;
            }
            this.f54042b = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f54043c != i) {
            if (i > 0) {
                this.f54043c = i;
            } else {
                this.f54043c = -1;
            }
            if (!this.f54042b) {
                return;
            }
            m10002o();
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f54060u != i) {
            this.f54060u = i;
            m9992y();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f53984C != colorStateList) {
            this.f53984C = colorStateList;
            m9992y();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f54061v != i) {
            this.f54061v = i;
            m9992y();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f53983B != colorStateList) {
            this.f53983B = colorStateList;
            m9992y();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f54036au = colorStateList;
        this.f54037av = colorStateList;
        if (this.f54005a != null) {
            m10026a(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m10039a(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f54051k.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f54051k.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (this.f54051k.getContentDescription() != charSequence) {
            this.f54051k.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(int i) {
        setEndIconDrawable(i != 0 ? C0153a.m46374b(getContext(), i) : null);
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f54051k.setImageDrawable(drawable);
        m10011f();
    }

    public void setEndIconMode(int i) {
        int i2 = this.f54022ag;
        this.f54022ag = i;
        Iterator<AbstractC14791c> it2 = this.f54024ai.iterator();
        while (it2.hasNext()) {
            it2.next().mo9932a(this, i2);
        }
        setEndIconVisible(i != 0);
        if (m10058J().mo9961a(this.f54049i)) {
            m10058J().mo9935a();
            m10054N();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.f54049i + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        m10035a(this.f54051k, onClickListener, this.f54032aq);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f54032aq = onLongClickListener;
        m10034a(this.f54051k, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f54025aj != colorStateList) {
            this.f54025aj = colorStateList;
            this.f54026ak = true;
            m10054N();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f54027al != mode) {
            this.f54027al = mode;
            this.f54028am = true;
            m10054N();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (m10013e() != z) {
            this.f54051k.setVisibility(z ? 0 : 8);
            m9993x();
            m10053O();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.f54059t.f54129g) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            setErrorEnabled(true);
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f54059t.m9958a();
            return;
        }
        C14819f c14819f = this.f54059t;
        c14819f.m9945b();
        c14819f.f54128f = charSequence;
        c14819f.f54130h.setText(charSequence);
        if (c14819f.f54126d != 1) {
            c14819f.f54127e = 1;
        }
        c14819f.m9955a(c14819f.f54126d, c14819f.f54127e, c14819f.m9950a(c14819f.f54130h, charSequence));
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        this.f54059t.m9948a(charSequence);
    }

    public void setErrorEnabled(boolean z) {
        C14819f c14819f = this.f54059t;
        if (c14819f.f54129g != z) {
            c14819f.m9945b();
            if (z) {
                c14819f.f54130h = new AppCompatTextView(c14819f.f54123a);
                c14819f.f54130h.setId(C14376a.C14382f.textinput_error);
                if (Build.VERSION.SDK_INT >= 17) {
                    c14819f.f54130h.setTextAlignment(5);
                }
                if (c14819f.f54139q != null) {
                    c14819f.f54130h.setTypeface(c14819f.f54139q);
                }
                c14819f.m9957a(c14819f.f54132j);
                c14819f.m9954a(c14819f.f54133k);
                c14819f.m9948a(c14819f.f54131i);
                c14819f.f54130h.setVisibility(4);
                C0926v.m44093h(c14819f.f54130h);
                c14819f.m9952a(c14819f.f54130h, 0);
            } else {
                c14819f.m9958a();
                c14819f.m9942b(c14819f.f54130h, 0);
                c14819f.f54130h = null;
                c14819f.f54124b.m10018c();
                c14819f.f54124b.m10010g();
            }
            c14819f.f54129g = z;
        }
    }

    public void setErrorIconDrawable(int i) {
        setErrorIconDrawable(i != 0 ? C0153a.m46374b(getContext(), i) : null);
        m10059I();
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f54034as.setImageDrawable(drawable);
        m10014d(drawable != null && this.f54059t.f54129g);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        m10035a(this.f54034as, onClickListener, this.f54033ar);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f54033ar = onLongClickListener;
        m10034a(this.f54034as, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.f54035at = colorStateList;
        Drawable drawable = this.f54034as.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = C0840a.m44345f(drawable).mutate();
            C0840a.m44355a(drawable2, colorStateList);
        }
        if (this.f54034as.getDrawable() != drawable2) {
            this.f54034as.setImageDrawable(drawable2);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f54034as.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = C0840a.m44345f(drawable).mutate();
            C0840a.m44352a(drawable2, mode);
        }
        if (this.f54034as.getDrawable() != drawable2) {
            this.f54034as.setImageDrawable(drawable2);
        }
    }

    public void setErrorTextAppearance(int i) {
        this.f54059t.m9957a(i);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        this.f54059t.m9954a(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.f54011aF != z) {
            this.f54011aF = z;
            m10026a(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (!this.f54059t.f54135m) {
                return;
            }
            setHelperTextEnabled(false);
            return;
        }
        if (!this.f54059t.f54135m) {
            setHelperTextEnabled(true);
        }
        C14819f c14819f = this.f54059t;
        c14819f.m9945b();
        c14819f.f54134l = charSequence;
        c14819f.f54136n.setText(charSequence);
        if (c14819f.f54126d != 2) {
            c14819f.f54127e = 2;
        }
        c14819f.m9955a(c14819f.f54126d, c14819f.f54127e, c14819f.m9950a(c14819f.f54136n, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        this.f54059t.m9943b(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        C14819f c14819f = this.f54059t;
        if (c14819f.f54135m != z) {
            c14819f.m9945b();
            if (z) {
                c14819f.f54136n = new AppCompatTextView(c14819f.f54123a);
                c14819f.f54136n.setId(C14376a.C14382f.textinput_helper_text);
                if (Build.VERSION.SDK_INT >= 17) {
                    c14819f.f54136n.setTextAlignment(5);
                }
                if (c14819f.f54139q != null) {
                    c14819f.f54136n.setTypeface(c14819f.f54139q);
                }
                c14819f.f54136n.setVisibility(4);
                C0926v.m44093h(c14819f.f54136n);
                c14819f.m9944b(c14819f.f54137o);
                c14819f.m9943b(c14819f.f54138p);
                c14819f.m9952a(c14819f.f54136n, 1);
            } else {
                c14819f.m9945b();
                if (c14819f.f54126d == 2) {
                    c14819f.f54127e = 0;
                }
                c14819f.m9955a(c14819f.f54126d, c14819f.f54127e, c14819f.m9950a(c14819f.f54136n, (CharSequence) null));
                c14819f.m9942b(c14819f.f54136n, 1);
                c14819f.f54136n = null;
                c14819f.f54124b.m10018c();
                c14819f.f54124b.m10010g();
            }
            c14819f.f54135m = z;
        }
    }

    public void setHelperTextTextAppearance(int i) {
        this.f54059t.m9944b(i);
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHint(CharSequence charSequence) {
        if (this.f53988G) {
            m10028a(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f54012aG = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f53988G) {
            this.f53988G = z;
            if (!z) {
                this.f54047g = false;
                if (!TextUtils.isEmpty(this.f53989H) && TextUtils.isEmpty(this.f54005a.getHint())) {
                    this.f54005a.setHint(this.f53989H);
                }
                m10028a((CharSequence) null);
            } else {
                CharSequence hint = this.f54005a.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f53989H)) {
                        setHint(hint);
                    }
                    this.f54005a.setHint((CharSequence) null);
                }
                this.f54047g = true;
            }
            if (this.f54005a == null) {
                return;
            }
            m10003n();
        }
    }

    public void setHintTextAppearance(int i) {
        this.f54053m.m10581c(i);
        this.f54037av = this.f54053m.f53348c;
        if (this.f54005a != null) {
            m10026a(false, false);
            m10003n();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f54037av != colorStateList) {
            if (this.f54036au == null) {
                this.f54053m.m10599a(colorStateList);
            }
            this.f54037av = colorStateList;
            if (this.f54005a == null) {
                return;
            }
            m10026a(false, false);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f54051k.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? C0153a.m46374b(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f54051k.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.f54022ag != 1) {
            setEndIconMode(1);
        } else if (z) {
        } else {
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f54025aj = colorStateList;
        this.f54026ak = true;
        m10054N();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f54027al = mode;
        this.f54028am = true;
        m10054N();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (!this.f54063x || !TextUtils.isEmpty(charSequence)) {
            if (!this.f54063x) {
                m10027a(true);
            }
            this.f54062w = charSequence;
        } else {
            m10027a(false);
        }
        m10001p();
    }

    public void setPlaceholderTextAppearance(int i) {
        this.f53982A = i;
        TextView textView = this.f54064y;
        if (textView != null) {
            C0959h.m43965a(textView, i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f54065z != colorStateList) {
            this.f54065z = colorStateList;
            TextView textView = this.f54064y;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.f53985D = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f53986E.setText(charSequence);
        m9996u();
    }

    public void setPrefixTextAppearance(int i) {
        C0959h.m43965a(this.f53986E, i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f53986E.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.f54002U.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (this.f54002U.getContentDescription() != charSequence) {
            this.f54002U.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? C0153a.m46374b(getContext(), i) : null);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f54002U.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            m10060H();
            return;
        }
        setStartIconVisible(false);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        setStartIconContentDescription((CharSequence) null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        m10035a(this.f54002U, onClickListener, this.f54020ae);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f54020ae = onLongClickListener;
        m10034a(this.f54002U, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.f54003V != colorStateList) {
            this.f54003V = colorStateList;
            this.f54004W = true;
            m10056L();
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.f54016aa != mode) {
            this.f54016aa = mode;
            this.f54017ab = true;
            m10056L();
        }
    }

    public void setStartIconVisible(boolean z) {
        if (m10061G() != z) {
            this.f54002U.setVisibility(z ? 0 : 8);
            m9995v();
            m10053O();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.f54046f = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f53987F.setText(charSequence);
        m9994w();
    }

    public void setSuffixTextAppearance(int i) {
        C0959h.m43965a(this.f53987F, i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f53987F.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(C14789a c14789a) {
        EditText editText = this.f54005a;
        if (editText != null) {
            C0926v.m44123a(editText, c14789a);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f54001T) {
            this.f54001T = typeface;
            this.f54053m.m10579c(typeface);
            C14819f c14819f = this.f54059t;
            if (typeface != c14819f.f54139q) {
                c14819f.f54139q = typeface;
                C14819f.m9951a(c14819f.f54130h, typeface);
                C14819f.m9951a(c14819f.f54136n, typeface);
            }
            TextView textView = this.f54045e;
            if (textView == null) {
                return;
            }
            textView.setTypeface(typeface);
        }
    }
}
