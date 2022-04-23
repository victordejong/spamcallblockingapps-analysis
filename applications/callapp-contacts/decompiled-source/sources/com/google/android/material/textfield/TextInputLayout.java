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
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.f;
import androidx.appcompat.widget.p;
import androidx.core.view.v;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.k.h;
import com.google.android.material.k.m;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputLayout.class */
public class TextInputLayout extends LinearLayout {
    private static final int n = a.k.Widget_Design_TextInputLayout;
    private int A;
    private ColorStateList B;
    private ColorStateList C;
    private CharSequence D;
    private final TextView E;
    private final TextView F;
    private boolean G;
    private CharSequence H;
    private h I;
    private m J;
    private final int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private int P;
    private final Rect Q;
    private final Rect R;
    private final RectF S;
    private Typeface T;
    private final CheckableImageButton U;
    private ColorStateList V;
    private boolean W;

    /* renamed from: a  reason: collision with root package name */
    public EditText f30880a;
    private int aA;
    private int aB;
    private int aC;
    private int aD;
    private int aE;
    private boolean aF;
    private boolean aG;
    private ValueAnimator aH;
    private boolean aI;
    private boolean aJ;
    private PorterDuff.Mode aa;
    private boolean ab;
    private Drawable ac;
    private int ad;
    private View.OnLongClickListener ae;
    private final LinkedHashSet<b> af;
    private int ag;
    private final SparseArray<e> ah;
    private final LinkedHashSet<c> ai;
    private ColorStateList aj;
    private boolean ak;
    private PorterDuff.Mode al;
    private boolean am;
    private Drawable an;
    private int ao;
    private Drawable ap;
    private View.OnLongClickListener aq;
    private View.OnLongClickListener ar;
    private final CheckableImageButton as;
    private ColorStateList at;
    private ColorStateList au;
    private ColorStateList av;
    private int aw;
    private int ax;
    private int ay;
    private ColorStateList az;

    /* renamed from: b  reason: collision with root package name */
    boolean f30881b;

    /* renamed from: c  reason: collision with root package name */
    int f30882c;

    /* renamed from: d  reason: collision with root package name */
    boolean f30883d;
    TextView e;
    CharSequence f;
    boolean g;
    h h;
    int i;
    int j;
    final CheckableImageButton k;
    boolean l;
    final com.google.android.material.internal.a m;
    private final FrameLayout o;
    private final LinearLayout p;
    private final LinearLayout q;
    private final FrameLayout r;
    private CharSequence s;
    private final f t;
    private int u;
    private int v;
    private CharSequence w;
    private boolean x;
    private TextView y;
    private ColorStateList z;

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

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$a.class */
    public static class a extends androidx.core.view.a {

        /* renamed from: b  reason: collision with root package name */
        private final TextInputLayout f30888b;

        public a(TextInputLayout textInputLayout) {
            this.f30888b = textInputLayout;
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.a.c cVar) {
            super.a(view, cVar);
            EditText editText = this.f30888b.f30880a;
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence a2 = this.f30888b.a();
            CharSequence d2 = this.f30888b.d();
            CharSequence b2 = this.f30888b.b();
            int i = this.f30888b.f30882c;
            TextInputLayout textInputLayout = this.f30888b;
            CharSequence charSequence = null;
            if (textInputLayout.f30881b) {
                charSequence = null;
                if (textInputLayout.f30883d) {
                    charSequence = null;
                    if (textInputLayout.e != null) {
                        charSequence = textInputLayout.e.getContentDescription();
                    }
                }
            }
            boolean z = !TextUtils.isEmpty(text);
            boolean isEmpty = TextUtils.isEmpty(a2);
            boolean z2 = this.f30888b.l;
            boolean z3 = !TextUtils.isEmpty(d2);
            boolean z4 = z3 || !TextUtils.isEmpty(charSequence);
            String charSequence2 = isEmpty ^ true ? a2.toString() : "";
            if (z) {
                cVar.c(text);
            } else if (!TextUtils.isEmpty(charSequence2)) {
                cVar.c(charSequence2);
                if ((!z2) && b2 != null) {
                    cVar.c(charSequence2 + ", " + ((Object) b2));
                }
            } else if (b2 != null) {
                cVar.c(b2);
            }
            if (!TextUtils.isEmpty(charSequence2)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    cVar.f(charSequence2);
                } else {
                    CharSequence charSequence3 = charSequence2;
                    if (z) {
                        charSequence3 = ((Object) text) + ", " + charSequence2;
                    }
                    cVar.c(charSequence3);
                }
                boolean z5 = !z;
                if (Build.VERSION.SDK_INT >= 26) {
                    cVar.f1959a.setShowingHintText(z5);
                } else {
                    cVar.a(4, z5);
                }
            }
            if (text == null || text.length() != i) {
                i = -1;
            }
            if (Build.VERSION.SDK_INT >= 21) {
                cVar.f1959a.setMaxTextLength(i);
            }
            if (z4) {
                if (z3) {
                    charSequence = d2;
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    cVar.f1959a.setError(charSequence);
                }
            }
            if (Build.VERSION.SDK_INT >= 17 && editText != null) {
                editText.setLabelFor(a.f.textinput_helper_text);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$b.class */
    public interface b {
        void a(TextInputLayout textInputLayout);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$c.class */
    public interface c {
        void a(TextInputLayout textInputLayout, int i);
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.textInputStyle);
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

    private boolean A() {
        if (this.i == 1) {
            return Build.VERSION.SDK_INT < 16 || this.f30880a.getMinLines() <= 1;
        }
        return false;
    }

    private int B() {
        int i = this.j;
        if (this.i == 1) {
            i = androidx.core.graphics.a.a(this.j, com.google.android.material.b.a.a(getContext(), a.b.colorSurface, 0));
        }
        return i;
    }

    private void C() {
        h hVar = this.h;
        if (hVar != null) {
            hVar.setShapeAppearanceModel(this.J);
            if (E()) {
                this.h.a(this.M, this.P);
            }
            int B = B();
            this.j = B;
            this.h.g(ColorStateList.valueOf(B));
            if (this.ag == 3) {
                this.f30880a.getBackground().invalidateSelf();
            }
            D();
            invalidate();
        }
    }

    private void D() {
        if (this.I != null) {
            if (F()) {
                this.I.g(ColorStateList.valueOf(this.P));
            }
            invalidate();
        }
    }

    private boolean E() {
        return this.i == 2 && F();
    }

    private boolean F() {
        return this.M >= 0 && this.P != 0;
    }

    private boolean G() {
        return this.U.getVisibility() == 0;
    }

    private void H() {
        a(this.U, this.V);
    }

    private void I() {
        a(this.as, this.at);
    }

    private e J() {
        e eVar = this.ah.get(this.ag);
        return eVar != null ? eVar : this.ah.get(0);
    }

    private void K() {
        Iterator<b> it2 = this.af.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
    }

    private void L() {
        a(this.U, this.W, this.V, this.ab, this.aa);
    }

    private boolean M() {
        return this.ag != 0;
    }

    private void N() {
        a(this.k, this.ak, this.aj, this.am, this.al);
    }

    private boolean O() {
        if (this.f30880a == null) {
            return false;
        }
        boolean z = true;
        if (P()) {
            int measuredWidth = this.p.getMeasuredWidth() - this.f30880a.getPaddingLeft();
            if (this.ac == null || this.ad != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.ac = colorDrawable;
                this.ad = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] b2 = androidx.core.widget.h.b(this.f30880a);
            Drawable drawable = b2[0];
            Drawable drawable2 = this.ac;
            if (drawable != drawable2) {
                androidx.core.widget.h.a(this.f30880a, drawable2, b2[1], b2[2], b2[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.ac != null) {
                Drawable[] b3 = androidx.core.widget.h.b(this.f30880a);
                androidx.core.widget.h.a(this.f30880a, null, b3[1], b3[2], b3[3]);
                this.ac = null;
                z = true;
            }
            z = false;
        }
        if (Q()) {
            int measuredWidth2 = this.F.getMeasuredWidth() - this.f30880a.getPaddingRight();
            CheckableImageButton R = R();
            int i = measuredWidth2;
            if (R != null) {
                i = measuredWidth2 + R.getMeasuredWidth() + androidx.core.view.h.a((ViewGroup.MarginLayoutParams) R.getLayoutParams());
            }
            Drawable[] b4 = androidx.core.widget.h.b(this.f30880a);
            Drawable drawable3 = this.an;
            if (drawable3 == null || this.ao == i) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.an = colorDrawable2;
                    this.ao = i;
                    colorDrawable2.setBounds(0, 0, i, 1);
                }
                Drawable drawable4 = b4[2];
                Drawable drawable5 = this.an;
                if (drawable4 != drawable5) {
                    this.ap = b4[2];
                    androidx.core.widget.h.a(this.f30880a, b4[0], b4[1], drawable5, b4[3]);
                    z = true;
                }
            } else {
                this.ao = i;
                drawable3.setBounds(0, 0, i, 1);
                androidx.core.widget.h.a(this.f30880a, b4[0], b4[1], this.an, b4[3]);
                z = true;
            }
        } else if (this.an != null) {
            Drawable[] b5 = androidx.core.widget.h.b(this.f30880a);
            if (b5[2] == this.an) {
                androidx.core.widget.h.a(this.f30880a, b5[0], b5[1], this.ap, b5[3]);
            }
            this.an = null;
        }
        return z;
    }

    private boolean P() {
        return !(this.U.getDrawable() == null && this.D == null) && this.p.getMeasuredWidth() > 0;
    }

    private boolean Q() {
        return (this.as.getVisibility() == 0 || ((M() && e()) || this.f != null)) && this.q.getMeasuredWidth() > 0;
    }

    private CheckableImageButton R() {
        if (this.as.getVisibility() == 0) {
            return this.as;
        }
        if (!M() || !e()) {
            return null;
        }
        return this.k;
    }

    private boolean S() {
        return this.G && !TextUtils.isEmpty(this.H) && (this.h instanceof com.google.android.material.textfield.c);
    }

    private void T() {
        if (S()) {
            RectF rectF = this.S;
            this.m.a(rectF, this.f30880a.getWidth(), this.f30880a.getGravity());
            a(rectF);
            rectF.offset(-getPaddingLeft(), -getPaddingTop());
            ((com.google.android.material.textfield.c) this.h).a(rectF);
        }
    }

    private void U() {
        if (S()) {
            ((com.google.android.material.textfield.c) this.h).a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
    }

    private boolean V() {
        return this.as.getVisibility() == 0;
    }

    private int a(int i, boolean z) {
        int compoundPaddingLeft = i + this.f30880a.getCompoundPaddingLeft();
        int i2 = compoundPaddingLeft;
        if (this.D != null) {
            i2 = compoundPaddingLeft;
            if (!z) {
                i2 = (compoundPaddingLeft - this.E.getMeasuredWidth()) + this.E.getPaddingLeft();
            }
        }
        return i2;
    }

    private void a(float f) {
        if (this.m.f30608a != f) {
            if (this.aH == null) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.aH = valueAnimator;
                valueAnimator.setInterpolator(com.google.android.material.a.a.f30174b);
                this.aH.setDuration(167L);
                this.aH.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.TextInputLayout.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        TextInputLayout.this.m.b(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                    }
                });
            }
            this.aH.setFloatValues(this.m.f30608a, f);
            this.aH.start();
        }
    }

    private static void a(Context context, TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? a.j.character_counter_overflowed_content_description : a.j.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    private void a(RectF rectF) {
        rectF.left -= this.K;
        rectF.top -= this.K;
        rectF.right += this.K;
        rectF.bottom += this.K;
    }

    private static void a(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt, z);
            }
        }
    }

    private void a(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() != null && colorStateList != null && colorStateList.isStateful()) {
            int colorForState = colorStateList.getColorForState(a(checkableImageButton), colorStateList.getDefaultColor());
            Drawable mutate = androidx.core.graphics.drawable.a.f(drawable).mutate();
            androidx.core.graphics.drawable.a.a(mutate, ColorStateList.valueOf(colorForState));
            checkableImageButton.setImageDrawable(mutate);
        }
    }

    private static void a(CheckableImageButton checkableImageButton, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        b(checkableImageButton, onLongClickListener);
    }

    private static void a(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        b(checkableImageButton, onLongClickListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r6 != false) goto L_0x001b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.google.android.material.internal.CheckableImageButton r3, boolean r4, android.content.res.ColorStateList r5, boolean r6, android.graphics.PorterDuff.Mode r7) {
        /*
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0042
            r0 = r4
            if (r0 != 0) goto L_0x001b
            r0 = r8
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0042
        L_0x001b:
            r0 = r8
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.a.f(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r8 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002f
            r0 = r8
            r1 = r5
            androidx.core.graphics.drawable.a.a(r0, r1)
        L_0x002f:
            r0 = r8
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0042
            r0 = r8
            r1 = r7
            androidx.core.graphics.drawable.a.a(r0, r1)
            r0 = r8
            r9 = r0
        L_0x0042:
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r1 = r9
            if (r0 == r1) goto L_0x0051
            r0 = r3
            r1 = r9
            r0.setImageDrawable(r1)
        L_0x0051:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.a(com.google.android.material.internal.CheckableImageButton, boolean, android.content.res.ColorStateList, boolean, android.graphics.PorterDuff$Mode):void");
    }

    private void a(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.H)) {
            this.H = charSequence;
            this.m.a(charSequence);
            if (!this.l) {
                T();
            }
        }
    }

    private void a(boolean z) {
        if (this.x != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.y = appCompatTextView;
                appCompatTextView.setId(a.f.textinput_placeholder);
                v.h(this.y);
                setPlaceholderTextAppearance(this.A);
                setPlaceholderTextColor(this.z);
                s();
            } else {
                t();
                this.y = null;
            }
            this.x = z;
        }
    }

    private int[] a(CheckableImageButton checkableImageButton) {
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        return copyOf;
    }

    private int b(int i, boolean z) {
        int compoundPaddingRight = i - this.f30880a.getCompoundPaddingRight();
        int i2 = compoundPaddingRight;
        if (this.D != null) {
            i2 = compoundPaddingRight;
            if (z) {
                i2 = compoundPaddingRight + (this.E.getMeasuredWidth() - this.E.getPaddingRight());
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        if (i != 0 || this.l) {
            r();
        } else {
            q();
        }
    }

    private static void b(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean F = v.F(checkableImageButton);
        boolean z = false;
        int i = 1;
        boolean z2 = onLongClickListener != null;
        if (F || z2) {
            z = true;
        }
        checkableImageButton.setFocusable(z);
        checkableImageButton.setClickable(F);
        checkableImageButton.setPressable(F);
        checkableImageButton.setLongClickable(z2);
        if (!z) {
            i = 2;
        }
        v.c((View) checkableImageButton, i);
    }

    private void b(boolean z) {
        if (!z || this.k.getDrawable() == null) {
            N();
            return;
        }
        Drawable mutate = androidx.core.graphics.drawable.a.f(this.k.getDrawable()).mutate();
        androidx.core.graphics.drawable.a.a(mutate, this.t.e());
        this.k.setImageDrawable(mutate);
    }

    private void b(boolean z, boolean z2) {
        int defaultColor = this.az.getDefaultColor();
        int colorForState = this.az.getColorForState(new int[]{16843623, 16842910}, defaultColor);
        int colorForState2 = this.az.getColorForState(new int[]{16843518, 16842910}, defaultColor);
        if (z) {
            this.P = colorForState2;
        } else if (z2) {
            this.P = colorForState;
        } else {
            this.P = defaultColor;
        }
    }

    private void c(boolean z) {
        ValueAnimator valueAnimator = this.aH;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.aH.cancel();
        }
        if (!z || !this.aG) {
            this.m.b(1.0f);
        } else {
            a(1.0f);
        }
        this.l = false;
        if (S()) {
            T();
        }
        p();
        u();
        w();
    }

    private void d(boolean z) {
        int i = 0;
        this.as.setVisibility(z ? 0 : 8);
        FrameLayout frameLayout = this.r;
        if (z) {
            i = 8;
        }
        frameLayout.setVisibility(i);
        x();
        if (!M()) {
            O();
        }
    }

    private void e(boolean z) {
        ValueAnimator valueAnimator = this.aH;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.aH.cancel();
        }
        if (!z || !this.aG) {
            this.m.b(BitmapDescriptorFactory.HUE_RED);
        } else {
            a(BitmapDescriptorFactory.HUE_RED);
        }
        if (S() && ((com.google.android.material.textfield.c) this.h).a()) {
            U();
        }
        this.l = true;
        r();
        u();
        w();
    }

    private void h() {
        i();
        j();
        g();
        l();
        m();
        if (this.i != 0) {
            n();
        }
    }

    private void i() {
        int i = this.i;
        if (i == 0) {
            this.h = null;
            this.I = null;
        } else if (i == 1) {
            this.h = new h(this.J);
            this.I = new h();
        } else if (i == 2) {
            if (!this.G || (this.h instanceof com.google.android.material.textfield.c)) {
                this.h = new h(this.J);
            } else {
                this.h = new com.google.android.material.textfield.c(this.J);
            }
            this.I = null;
        } else {
            throw new IllegalArgumentException(this.i + " is illegal; only @BoxBackgroundMode constants are supported.");
        }
    }

    private void j() {
        if (k()) {
            v.a(this.f30880a, this.h);
        }
    }

    private boolean k() {
        EditText editText = this.f30880a;
        return (editText == null || this.h == null || editText.getBackground() != null || this.i == 0) ? false : true;
    }

    private void l() {
        if (this.i != 1) {
            return;
        }
        if (com.google.android.material.h.c.b(getContext())) {
            this.L = getResources().getDimensionPixelSize(a.d.material_font_2_0_box_collapsed_padding_top);
        } else if (com.google.android.material.h.c.a(getContext())) {
            this.L = getResources().getDimensionPixelSize(a.d.material_font_1_3_box_collapsed_padding_top);
        }
    }

    private void m() {
        if (this.f30880a != null && this.i == 1) {
            if (com.google.android.material.h.c.b(getContext())) {
                EditText editText = this.f30880a;
                v.b(editText, v.i(editText), getResources().getDimensionPixelSize(a.d.material_filled_edittext_font_2_0_padding_top), v.j(this.f30880a), getResources().getDimensionPixelSize(a.d.material_filled_edittext_font_2_0_padding_bottom));
            } else if (com.google.android.material.h.c.a(getContext())) {
                EditText editText2 = this.f30880a;
                v.b(editText2, v.i(editText2), getResources().getDimensionPixelSize(a.d.material_filled_edittext_font_1_3_padding_top), v.j(this.f30880a), getResources().getDimensionPixelSize(a.d.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
    }

    private void n() {
        if (this.i != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.o.getLayoutParams();
            int z = z();
            if (z != layoutParams.topMargin) {
                layoutParams.topMargin = z;
                this.o.requestLayout();
            }
        }
    }

    private void o() {
        if (this.e != null) {
            EditText editText = this.f30880a;
            a(editText == null ? 0 : editText.getText().length());
        }
    }

    private void p() {
        EditText editText = this.f30880a;
        b(editText == null ? 0 : editText.getText().length());
    }

    private void q() {
        TextView textView = this.y;
        if (textView != null && this.x) {
            textView.setText(this.w);
            this.y.setVisibility(0);
            this.y.bringToFront();
        }
    }

    private void r() {
        TextView textView = this.y;
        if (textView != null && this.x) {
            textView.setText((CharSequence) null);
            this.y.setVisibility(4);
        }
    }

    private void s() {
        TextView textView = this.y;
        if (textView != null) {
            this.o.addView(textView);
            this.y.setVisibility(0);
        }
    }

    private void t() {
        TextView textView = this.y;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private void u() {
        this.E.setVisibility((this.D == null || this.l) ? 8 : 0);
        O();
    }

    private void v() {
        if (this.f30880a != null) {
            v.b(this.E, G() ? 0 : v.i(this.f30880a), this.f30880a.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(a.d.material_input_text_to_prefix_suffix_padding), this.f30880a.getCompoundPaddingBottom());
        }
    }

    private void w() {
        int visibility = this.F.getVisibility();
        int i = 0;
        boolean z = this.f != null && !this.l;
        TextView textView = this.F;
        if (!z) {
            i = 8;
        }
        textView.setVisibility(i);
        if (visibility != this.F.getVisibility()) {
            J().a(z);
        }
        O();
    }

    private void x() {
        if (this.f30880a != null) {
            v.b(this.F, getContext().getResources().getDimensionPixelSize(a.d.material_input_text_to_prefix_suffix_padding), this.f30880a.getPaddingTop(), (e() || V()) ? 0 : v.j(this.f30880a), this.f30880a.getPaddingBottom());
        }
    }

    private void y() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.e;
        if (textView != null) {
            a(textView, this.f30883d ? this.u : this.v);
            if (!this.f30883d && (colorStateList2 = this.B) != null) {
                this.e.setTextColor(colorStateList2);
            }
            if (this.f30883d && (colorStateList = this.C) != null) {
                this.e.setTextColor(colorStateList);
            }
        }
    }

    private int z() {
        float a2;
        if (!this.G) {
            return 0;
        }
        int i = this.i;
        if (i == 0 || i == 1) {
            a2 = this.m.a();
        } else if (i != 2) {
            return 0;
        } else {
            a2 = this.m.a() / 2.0f;
        }
        return (int) a2;
    }

    public final CharSequence a() {
        if (this.G) {
            return this.H;
        }
        return null;
    }

    final void a(int i) {
        boolean z = this.f30883d;
        int i2 = this.f30882c;
        if (i2 == -1) {
            this.e.setText(String.valueOf(i));
            this.e.setContentDescription(null);
            this.f30883d = false;
        } else {
            this.f30883d = i > i2;
            a(getContext(), this.e, i, this.f30882c, this.f30883d);
            if (z != this.f30883d) {
                y();
            }
            this.e.setText(androidx.core.d.a.a().a(getContext().getString(a.j.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f30882c))));
        }
        if (this.f30880a != null && z != this.f30883d) {
            a(false, false);
            g();
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.widget.TextView r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            androidx.core.widget.h.a(r0, r1)     // Catch: Exception -> 0x0028
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: Exception -> 0x0028
            r1 = 23
            if (r0 < r1) goto L_0x0023
            r0 = r5
            android.content.res.ColorStateList r0 = r0.getTextColors()     // Catch: Exception -> 0x0028
            int r0 = r0.getDefaultColor()     // Catch: Exception -> 0x0028
            r6 = r0
            r0 = r6
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r0 != r1) goto L_0x0023
            r0 = r7
            r6 = r0
            goto L_0x002c
        L_0x0023:
            r0 = 0
            r6 = r0
            goto L_0x002c
        L_0x0028:
            r8 = move-exception
            r0 = r7
            r6 = r0
        L_0x002c:
            r0 = r6
            if (r0 == 0) goto L_0x0045
            r0 = r5
            int r1 = com.google.android.material.a.k.TextAppearance_AppCompat_Caption
            androidx.core.widget.h.a(r0, r1)
            r0 = r5
            r1 = r4
            android.content.Context r1 = r1.getContext()
            int r2 = com.google.android.material.a.c.design_error
            int r1 = androidx.core.content.b.c(r1, r2)
            r0.setTextColor(r1)
        L_0x0045:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.a(android.widget.TextView, int):void");
    }

    public final void a(b bVar) {
        this.af.add(bVar);
        if (this.f30880a != null) {
            bVar.a(this);
        }
    }

    public final void a(c cVar) {
        this.ai.add(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f30880a;
        boolean z3 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f30880a;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean d2 = this.t.d();
        ColorStateList colorStateList2 = this.au;
        if (colorStateList2 != null) {
            this.m.a(colorStateList2);
            this.m.b(this.au);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.au;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.aE) : this.aE;
            this.m.a(ColorStateList.valueOf(colorForState));
            this.m.b(ColorStateList.valueOf(colorForState));
        } else if (d2) {
            this.m.a(this.t.f());
        } else if (this.f30883d && (textView = this.e) != null) {
            this.m.a(textView.getTextColors());
        } else if (z4 && (colorStateList = this.av) != null) {
            this.m.a(colorStateList);
        }
        if (z3 || !this.aF || (isEnabled() && z4)) {
            if (z2 || this.l) {
                c(z);
            }
        } else if (z2 || !this.l) {
            e(z);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.o.addView(view, layoutParams2);
            this.o.setLayoutParams(layoutParams);
            n();
            EditText editText = (EditText) view;
            if (this.f30880a == null) {
                this.f30880a = editText;
                h();
                setTextInputAccessibilityDelegate(new a(this));
                this.m.c(this.f30880a.getTypeface());
                this.m.a(this.f30880a.getTextSize());
                int gravity = this.f30880a.getGravity();
                this.m.b((gravity & (-113)) | 48);
                this.m.a(gravity);
                this.f30880a.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.textfield.TextInputLayout.1
                    @Override // android.text.TextWatcher
                    public final void afterTextChanged(Editable editable) {
                        TextInputLayout textInputLayout = TextInputLayout.this;
                        textInputLayout.a(!textInputLayout.aJ, false);
                        if (TextInputLayout.this.f30881b) {
                            TextInputLayout.this.a(editable.length());
                        }
                        if (TextInputLayout.this.x) {
                            TextInputLayout.this.b(editable.length());
                        }
                    }

                    @Override // android.text.TextWatcher
                    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }
                });
                if (this.au == null) {
                    this.au = this.f30880a.getHintTextColors();
                }
                if (this.G) {
                    if (TextUtils.isEmpty(this.H)) {
                        CharSequence hint = this.f30880a.getHint();
                        this.s = hint;
                        setHint(hint);
                        this.f30880a.setHint((CharSequence) null);
                    }
                    this.g = true;
                }
                if (this.e != null) {
                    a(this.f30880a.getText().length());
                }
                c();
                this.t.c();
                this.p.bringToFront();
                this.q.bringToFront();
                this.r.bringToFront();
                this.as.bringToFront();
                K();
                v();
                x();
                if (!isEnabled()) {
                    editText.setEnabled(false);
                }
                a(false, true);
                return;
            }
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        super.addView(view, i, layoutParams);
    }

    public final CharSequence b() {
        if (this.x) {
            return this.w;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        Drawable background;
        TextView textView;
        EditText editText = this.f30880a;
        if (editText != null && this.i == 0 && (background = editText.getBackground()) != null) {
            Drawable drawable = background;
            if (p.c(background)) {
                drawable = background.mutate();
            }
            if (this.t.d()) {
                drawable.setColorFilter(f.a(this.t.e(), PorterDuff.Mode.SRC_IN));
            } else if (!this.f30883d || (textView = this.e) == null) {
                androidx.core.graphics.drawable.a.e(drawable);
                this.f30880a.refreshDrawableState();
            } else {
                drawable.setColorFilter(f.a(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    public final CharSequence d() {
        if (this.t.g) {
            return this.t.f;
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.f30880a;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.s != null) {
            boolean z = this.g;
            this.g = false;
            CharSequence hint = editText.getHint();
            this.f30880a.setHint(this.s);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
            } finally {
                this.f30880a.setHint(hint);
                this.g = z;
            }
        } else {
            viewStructure.setAutofillId(getAutofillId());
            onProvideAutofillStructure(viewStructure, i);
            onProvideAutofillVirtualStructure(viewStructure, i);
            viewStructure.setChildCount(this.o.getChildCount());
            for (int i2 = 0; i2 < this.o.getChildCount(); i2++) {
                View childAt = this.o.getChildAt(i2);
                ViewStructure newChild = viewStructure.newChild(i2);
                childAt.dispatchProvideAutofillStructure(newChild, i);
                if (childAt == this.f30880a) {
                    newChild.setHint(a());
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.aJ = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.aJ = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.G) {
            this.m.a(canvas);
        }
        h hVar = this.I;
        if (hVar != null) {
            Rect bounds = hVar.getBounds();
            bounds.top = bounds.bottom - this.M;
            this.I.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (!this.aI) {
            boolean z = true;
            this.aI = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            com.google.android.material.internal.a aVar = this.m;
            boolean a2 = aVar != null ? aVar.a(drawableState) | false : false;
            if (this.f30880a != null) {
                if (!v.B(this) || !isEnabled()) {
                    z = false;
                }
                a(z, false);
            }
            c();
            g();
            if (a2) {
                invalidate();
            }
            this.aI = false;
        }
    }

    public final boolean e() {
        return this.r.getVisibility() == 0 && this.k.getVisibility() == 0;
    }

    public final void f() {
        a(this.k, this.aj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.h != null && this.i != 0) {
            boolean z = isFocused() || ((editText2 = this.f30880a) != null && editText2.hasFocus());
            boolean z2 = isHovered() || ((editText = this.f30880a) != null && editText.isHovered());
            if (!isEnabled()) {
                this.P = this.aE;
            } else if (this.t.d()) {
                if (this.az != null) {
                    b(z, z2);
                } else {
                    this.P = this.t.e();
                }
            } else if (!this.f30883d || (textView = this.e) == null) {
                if (z) {
                    this.P = this.ay;
                } else if (z2) {
                    this.P = this.ax;
                } else {
                    this.P = this.aw;
                }
            } else if (this.az != null) {
                b(z, z2);
            } else {
                this.P = textView.getCurrentTextColor();
            }
            boolean z3 = false;
            if (this.as.getDrawable() != null) {
                z3 = false;
                if (this.t.g) {
                    z3 = false;
                    if (this.t.d()) {
                        z3 = true;
                    }
                }
            }
            d(z3);
            I();
            H();
            f();
            if (J().b()) {
                b(this.t.d());
            }
            if (!z || !isEnabled()) {
                this.M = this.N;
            } else {
                this.M = this.O;
            }
            if (this.i == 1) {
                if (!isEnabled()) {
                    this.j = this.aB;
                } else if (z2 && !z) {
                    this.j = this.aD;
                } else if (z) {
                    this.j = this.aC;
                } else {
                    this.j = this.aA;
                }
            }
            C();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f30880a;
        return editText != null ? editText.getBaseline() + getPaddingTop() + z() : super.getBaseline();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f30880a;
        if (editText != null) {
            Rect rect = this.Q;
            com.google.android.material.internal.b.b(this, editText, rect);
            if (this.I != null) {
                this.I.setBounds(rect.left, rect.bottom - this.O, rect.right, rect.bottom);
            }
            if (this.G) {
                this.m.a(this.f30880a.getTextSize());
                int gravity = this.f30880a.getGravity();
                this.m.b((gravity & (-113)) | 48);
                this.m.a(gravity);
                com.google.android.material.internal.a aVar = this.m;
                if (this.f30880a != null) {
                    Rect rect2 = this.R;
                    boolean z2 = v.f(this) == 1;
                    rect2.bottom = rect.bottom;
                    int i5 = this.i;
                    if (i5 == 1) {
                        rect2.left = a(rect.left, z2);
                        rect2.top = rect.top + this.L;
                        rect2.right = b(rect.right, z2);
                    } else if (i5 != 2) {
                        rect2.left = a(rect.left, z2);
                        rect2.top = getPaddingTop();
                        rect2.right = b(rect.right, z2);
                    } else {
                        rect2.left = rect.left + this.f30880a.getPaddingLeft();
                        rect2.top = rect.top - z();
                        rect2.right = rect.right - this.f30880a.getPaddingRight();
                    }
                    aVar.b(rect2.left, rect2.top, rect2.right, rect2.bottom);
                    com.google.android.material.internal.a aVar2 = this.m;
                    if (this.f30880a != null) {
                        Rect rect3 = this.R;
                        TextPaint textPaint = aVar2.f;
                        textPaint.setTextSize(aVar2.f30609b);
                        textPaint.setTypeface(aVar2.f30611d);
                        if (Build.VERSION.SDK_INT >= 21) {
                            textPaint.setLetterSpacing(aVar2.h);
                        }
                        float f = -aVar2.f.ascent();
                        rect3.left = rect.left + this.f30880a.getCompoundPaddingLeft();
                        rect3.top = A() ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f30880a.getCompoundPaddingTop();
                        rect3.right = rect.right - this.f30880a.getCompoundPaddingRight();
                        rect3.bottom = A() ? (int) (rect3.top + f) : rect.bottom - this.f30880a.getCompoundPaddingBottom();
                        aVar2.a(rect3.left, rect3.top, rect3.right, rect3.bottom);
                        this.m.b();
                        if (S() && !this.l) {
                            T();
                            return;
                        }
                        return;
                    }
                    throw new IllegalStateException();
                }
                throw new IllegalStateException();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z;
        EditText editText;
        int max;
        super.onMeasure(i, i2);
        if (this.f30880a == null || this.f30880a.getMeasuredHeight() >= (max = Math.max(this.q.getMeasuredHeight(), this.p.getMeasuredHeight()))) {
            z = false;
        } else {
            this.f30880a.setMinimumHeight(max);
            z = true;
        }
        boolean O = O();
        if (z || O) {
            this.f30880a.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.3
                @Override // java.lang.Runnable
                public final void run() {
                    TextInputLayout.this.f30880a.requestLayout();
                }
            });
        }
        if (!(this.y == null || (editText = this.f30880a) == null)) {
            this.y.setGravity(editText.getGravity());
            this.y.setPadding(this.f30880a.getCompoundPaddingLeft(), this.f30880a.getCompoundPaddingTop(), this.f30880a.getCompoundPaddingRight(), this.f30880a.getCompoundPaddingBottom());
        }
        v();
        x();
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
            this.k.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.2
                @Override // java.lang.Runnable
                public final void run() {
                    TextInputLayout.this.k.performClick();
                    TextInputLayout.this.k.jumpDrawablesToCurrentState();
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
        if (this.t.d()) {
            savedState.error = d();
        }
        savedState.isEndIconChecked = M() && this.k.isChecked();
        savedState.hintText = a();
        savedState.helperText = this.t.m ? this.t.l : null;
        savedState.placeholderText = b();
        return savedState;
    }

    public void setBoxBackgroundColor(int i) {
        if (this.j != i) {
            this.j = i;
            this.aA = i;
            this.aC = i;
            this.aD = i;
            C();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(androidx.core.content.b.c(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.aA = defaultColor;
        this.j = defaultColor;
        this.aB = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.aC = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        this.aD = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
        C();
    }

    public void setBoxBackgroundMode(int i) {
        if (i != this.i) {
            this.i = i;
            if (this.f30880a != null) {
                h();
            }
        }
    }

    public void setBoxCornerRadii(float f, float f2, float f3, float f4) {
        h hVar = this.h;
        if (hVar == null || hVar.k() != f || this.h.l() != f2 || this.h.n() != f4 || this.h.m() != f3) {
            this.J = this.J.b().b(f).c(f2).d(f4).e(f3).a();
            C();
        }
    }

    public void setBoxCornerRadiiResources(int i, int i2, int i3, int i4) {
        setBoxCornerRadii(getContext().getResources().getDimension(i), getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i3));
    }

    public void setBoxStrokeColor(int i) {
        if (this.ay != i) {
            this.ay = i;
            g();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.aw = colorStateList.getDefaultColor();
            this.aE = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.ax = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
            this.ay = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        } else if (this.ay != colorStateList.getDefaultColor()) {
            this.ay = colorStateList.getDefaultColor();
        }
        g();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.az != colorStateList) {
            this.az = colorStateList;
            g();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.N = i;
        g();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.O = i;
        g();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f30881b != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.e = appCompatTextView;
                appCompatTextView.setId(a.f.textinput_counter);
                Typeface typeface = this.T;
                if (typeface != null) {
                    this.e.setTypeface(typeface);
                }
                this.e.setMaxLines(1);
                this.t.a(this.e, 2);
                androidx.core.view.h.a((ViewGroup.MarginLayoutParams) this.e.getLayoutParams(), getResources().getDimensionPixelOffset(a.d.mtrl_textinput_counter_margin_start));
                y();
                o();
            } else {
                this.t.b(this.e, 2);
                this.e = null;
            }
            this.f30881b = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f30882c != i) {
            if (i > 0) {
                this.f30882c = i;
            } else {
                this.f30882c = -1;
            }
            if (this.f30881b) {
                o();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.u != i) {
            this.u = i;
            y();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            y();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.v != i) {
            this.v = i;
            y();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            y();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.au = colorStateList;
        this.av = colorStateList;
        if (this.f30880a != null) {
            a(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        a(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.k.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.k.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (this.k.getContentDescription() != charSequence) {
            this.k.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(int i) {
        setEndIconDrawable(i != 0 ? androidx.appcompat.a.a.a.b(getContext(), i) : null);
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.k.setImageDrawable(drawable);
        f();
    }

    public void setEndIconMode(int i) {
        int i2 = this.ag;
        this.ag = i;
        Iterator<c> it2 = this.ai.iterator();
        while (it2.hasNext()) {
            it2.next().a(this, i2);
        }
        setEndIconVisible(i != 0);
        if (J().a(this.i)) {
            J().a();
            N();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.i + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        a(this.k, onClickListener, this.aq);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.aq = onLongClickListener;
        a(this.k, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.aj != colorStateList) {
            this.aj = colorStateList;
            this.ak = true;
            N();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.al != mode) {
            this.al = mode;
            this.am = true;
            N();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (e() != z) {
            this.k.setVisibility(z ? 0 : 8);
            x();
            O();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.t.g) {
            if (!TextUtils.isEmpty(charSequence)) {
                setErrorEnabled(true);
            } else {
                return;
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            f fVar = this.t;
            fVar.b();
            fVar.f = charSequence;
            fVar.h.setText(charSequence);
            if (fVar.f30927d != 1) {
                fVar.e = 1;
            }
            fVar.a(fVar.f30927d, fVar.e, fVar.a(fVar.h, charSequence));
            return;
        }
        this.t.a();
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        this.t.a(charSequence);
    }

    public void setErrorEnabled(boolean z) {
        f fVar = this.t;
        if (fVar.g != z) {
            fVar.b();
            if (z) {
                fVar.h = new AppCompatTextView(fVar.f30924a);
                fVar.h.setId(a.f.textinput_error);
                if (Build.VERSION.SDK_INT >= 17) {
                    fVar.h.setTextAlignment(5);
                }
                if (fVar.q != null) {
                    fVar.h.setTypeface(fVar.q);
                }
                fVar.a(fVar.j);
                fVar.a(fVar.k);
                fVar.a(fVar.i);
                fVar.h.setVisibility(4);
                v.h(fVar.h);
                fVar.a(fVar.h, 0);
            } else {
                fVar.a();
                fVar.b(fVar.h, 0);
                fVar.h = null;
                fVar.f30925b.c();
                fVar.f30925b.g();
            }
            fVar.g = z;
        }
    }

    public void setErrorIconDrawable(int i) {
        setErrorIconDrawable(i != 0 ? androidx.appcompat.a.a.a.b(getContext(), i) : null);
        I();
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.as.setImageDrawable(drawable);
        d(drawable != null && this.t.g);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        a(this.as, onClickListener, this.ar);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.ar = onLongClickListener;
        a(this.as, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.at = colorStateList;
        Drawable drawable = this.as.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = androidx.core.graphics.drawable.a.f(drawable).mutate();
            androidx.core.graphics.drawable.a.a(drawable2, colorStateList);
        }
        if (this.as.getDrawable() != drawable2) {
            this.as.setImageDrawable(drawable2);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.as.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = androidx.core.graphics.drawable.a.f(drawable).mutate();
            androidx.core.graphics.drawable.a.a(drawable2, mode);
        }
        if (this.as.getDrawable() != drawable2) {
            this.as.setImageDrawable(drawable2);
        }
    }

    public void setErrorTextAppearance(int i) {
        this.t.a(i);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        this.t.a(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.aF != z) {
            this.aF = z;
            a(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (!this.t.m) {
                setHelperTextEnabled(true);
            }
            f fVar = this.t;
            fVar.b();
            fVar.l = charSequence;
            fVar.n.setText(charSequence);
            if (fVar.f30927d != 2) {
                fVar.e = 2;
            }
            fVar.a(fVar.f30927d, fVar.e, fVar.a(fVar.n, charSequence));
        } else if (this.t.m) {
            setHelperTextEnabled(false);
        }
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        this.t.b(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        f fVar = this.t;
        if (fVar.m != z) {
            fVar.b();
            if (z) {
                fVar.n = new AppCompatTextView(fVar.f30924a);
                fVar.n.setId(a.f.textinput_helper_text);
                if (Build.VERSION.SDK_INT >= 17) {
                    fVar.n.setTextAlignment(5);
                }
                if (fVar.q != null) {
                    fVar.n.setTypeface(fVar.q);
                }
                fVar.n.setVisibility(4);
                v.h(fVar.n);
                fVar.b(fVar.o);
                fVar.b(fVar.p);
                fVar.a(fVar.n, 1);
            } else {
                fVar.b();
                if (fVar.f30927d == 2) {
                    fVar.e = 0;
                }
                fVar.a(fVar.f30927d, fVar.e, fVar.a(fVar.n, (CharSequence) null));
                fVar.b(fVar.n, 1);
                fVar.n = null;
                fVar.f30925b.c();
                fVar.f30925b.g();
            }
            fVar.m = z;
        }
    }

    public void setHelperTextTextAppearance(int i) {
        this.t.b(i);
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHint(CharSequence charSequence) {
        if (this.G) {
            a(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.aG = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.G) {
            this.G = z;
            if (!z) {
                this.g = false;
                if (!TextUtils.isEmpty(this.H) && TextUtils.isEmpty(this.f30880a.getHint())) {
                    this.f30880a.setHint(this.H);
                }
                a((CharSequence) null);
            } else {
                CharSequence hint = this.f30880a.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.H)) {
                        setHint(hint);
                    }
                    this.f30880a.setHint((CharSequence) null);
                }
                this.g = true;
            }
            if (this.f30880a != null) {
                n();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        this.m.c(i);
        this.av = this.m.f30610c;
        if (this.f30880a != null) {
            a(false, false);
            n();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.av != colorStateList) {
            if (this.au == null) {
                this.m.a(colorStateList);
            }
            this.av = colorStateList;
            if (this.f30880a != null) {
                a(false, false);
            }
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.k.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? androidx.appcompat.a.a.a.b(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.k.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.ag != 1) {
            setEndIconMode(1);
        } else if (!z) {
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.aj = colorStateList;
        this.ak = true;
        N();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.al = mode;
        this.am = true;
        N();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (!this.x || !TextUtils.isEmpty(charSequence)) {
            if (!this.x) {
                a(true);
            }
            this.w = charSequence;
        } else {
            a(false);
        }
        p();
    }

    public void setPlaceholderTextAppearance(int i) {
        this.A = i;
        TextView textView = this.y;
        if (textView != null) {
            androidx.core.widget.h.a(textView, i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.z != colorStateList) {
            this.z = colorStateList;
            TextView textView = this.y;
            if (textView != null && colorStateList != null) {
                textView.setTextColor(colorStateList);
            }
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.D = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.E.setText(charSequence);
        u();
    }

    public void setPrefixTextAppearance(int i) {
        androidx.core.widget.h.a(this.E, i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.E.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.U.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (this.U.getContentDescription() != charSequence) {
            this.U.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? androidx.appcompat.a.a.a.b(getContext(), i) : null);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.U.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            H();
            return;
        }
        setStartIconVisible(false);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        setStartIconContentDescription((CharSequence) null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        a(this.U, onClickListener, this.ae);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.ae = onLongClickListener;
        a(this.U, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.V != colorStateList) {
            this.V = colorStateList;
            this.W = true;
            L();
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.aa != mode) {
            this.aa = mode;
            this.ab = true;
            L();
        }
    }

    public void setStartIconVisible(boolean z) {
        if (G() != z) {
            this.U.setVisibility(z ? 0 : 8);
            v();
            O();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.f = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.F.setText(charSequence);
        w();
    }

    public void setSuffixTextAppearance(int i) {
        androidx.core.widget.h.a(this.F, i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.F.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(a aVar) {
        EditText editText = this.f30880a;
        if (editText != null) {
            v.a(editText, aVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.T) {
            this.T = typeface;
            this.m.c(typeface);
            f fVar = this.t;
            if (typeface != fVar.q) {
                fVar.q = typeface;
                f.a(fVar.h, typeface);
                f.a(fVar.n, typeface);
            }
            TextView textView = this.e;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }
}
