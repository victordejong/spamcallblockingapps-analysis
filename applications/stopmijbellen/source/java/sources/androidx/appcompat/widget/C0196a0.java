package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Objects;
import java.util.WeakHashMap;
import p007a6.C0033h;
import p076e0.C2511f;
import p117h8.C3035k;
import p163m0.C3589v;
import p163m0.C3611y;
import p185o0.C3806a;
/* renamed from: androidx.appcompat.widget.a0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a0.class */
public class C0196a0 {

    /* renamed from: a */
    public final TextView f818a;

    /* renamed from: b */
    public C0289x0 f819b;

    /* renamed from: c */
    public C0289x0 f820c;

    /* renamed from: d */
    public C0289x0 f821d;

    /* renamed from: e */
    public C0289x0 f822e;

    /* renamed from: f */
    public C0289x0 f823f;

    /* renamed from: g */
    public C0289x0 f824g;

    /* renamed from: h */
    public C0289x0 f825h;

    /* renamed from: i */
    public final C0216d0 f826i;

    /* renamed from: j */
    public int f827j = 0;

    /* renamed from: k */
    public int f828k = -1;

    /* renamed from: l */
    public Typeface f829l;

    /* renamed from: m */
    public boolean f830m;

    /* renamed from: androidx.appcompat.widget.a0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a0$a.class */
    public class C0197a extends C2511f.AbstractC2514c {

        /* renamed from: a */
        public final /* synthetic */ int f831a;

        /* renamed from: b */
        public final /* synthetic */ int f832b;

        /* renamed from: c */
        public final /* synthetic */ WeakReference f833c;

        public C0197a(int i, int i2, WeakReference weakReference) {
            C0196a0.this = r4;
            this.f831a = i;
            this.f832b = i2;
            this.f833c = weakReference;
        }

        @Override // p076e0.C2511f.AbstractC2514c
        /* renamed from: d */
        public void mo60d(int i) {
        }

        @Override // p076e0.C2511f.AbstractC2514c
        /* renamed from: e */
        public void mo59e(Typeface typeface) {
            Typeface typeface2 = typeface;
            if (Build.VERSION.SDK_INT >= 28) {
                int i = this.f831a;
                typeface2 = typeface;
                if (i != -1) {
                    typeface2 = Typeface.create(typeface, i, (this.f832b & 2) != 0);
                }
            }
            C0196a0 c0196a0 = C0196a0.this;
            WeakReference weakReference = this.f833c;
            if (c0196a0.f830m) {
                c0196a0.f829l = typeface2;
                TextView textView = (TextView) weakReference.get();
                if (textView == null) {
                    return;
                }
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                if (C3589v.C3596g.m2059b(textView)) {
                    textView.post(new RunnableC0200b0(c0196a0, textView, typeface2, c0196a0.f827j));
                } else {
                    textView.setTypeface(typeface2, c0196a0.f827j);
                }
            }
        }
    }

    public C0196a0(TextView textView) {
        this.f818a = textView;
        this.f826i = new C0216d0(textView);
    }

    /* renamed from: c */
    public static C0289x0 m8585c(Context context, C0242j c0242j, int i) {
        ColorStateList m8483d = c0242j.m8483d(context, i);
        if (m8483d != null) {
            C0289x0 c0289x0 = new C0289x0();
            c0289x0.f1134d = true;
            c0289x0.f1131a = m8483d;
            return c0289x0;
        }
        return null;
    }

    /* renamed from: a */
    public final void m8587a(Drawable drawable, C0289x0 c0289x0) {
        if (drawable == null || c0289x0 == null) {
            return;
        }
        C0242j.m8481f(drawable, c0289x0, this.f818a.getDrawableState());
    }

    /* renamed from: b */
    public void m8586b() {
        if (this.f819b != null || this.f820c != null || this.f821d != null || this.f822e != null) {
            Drawable[] compoundDrawables = this.f818a.getCompoundDrawables();
            m8587a(compoundDrawables[0], this.f819b);
            m8587a(compoundDrawables[1], this.f820c);
            m8587a(compoundDrawables[2], this.f821d);
            m8587a(compoundDrawables[3], this.f822e);
        }
        if (this.f823f == null && this.f824g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.f818a.getCompoundDrawablesRelative();
        m8587a(compoundDrawablesRelative[0], this.f823f);
        m8587a(compoundDrawablesRelative[2], this.f824g);
    }

    /* renamed from: d */
    public boolean m8584d() {
        C0216d0 c0216d0 = this.f826i;
        return c0216d0.m8553i() && c0216d0.f900a != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:250:0x0794, code lost:
        if (r9 != null) goto L252;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01bc  */
    @android.annotation.SuppressLint({"NewApi"})
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m8583e(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 2151
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0196a0.m8583e(android.util.AttributeSet, int):void");
    }

    /* renamed from: f */
    public void m8582f(Context context, int i) {
        String m8387m;
        ColorStateList m8397c;
        ColorStateList m8397c2;
        ColorStateList m8397c3;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C3035k.f10238y);
        C0303z0 c0303z0 = new C0303z0(context, obtainStyledAttributes);
        if (c0303z0.m8385o(14)) {
            this.f818a.setAllCaps(c0303z0.m8399a(14, false));
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            if (c0303z0.m8385o(3) && (m8397c3 = c0303z0.m8397c(3)) != null) {
                this.f818a.setTextColor(m8397c3);
            }
            if (c0303z0.m8385o(5) && (m8397c2 = c0303z0.m8397c(5)) != null) {
                this.f818a.setLinkTextColor(m8397c2);
            }
            if (c0303z0.m8385o(4) && (m8397c = c0303z0.m8397c(4)) != null) {
                this.f818a.setHintTextColor(m8397c);
            }
        }
        if (c0303z0.m8385o(0) && c0303z0.m8394f(0, -1) == 0) {
            this.f818a.setTextSize(0, 0.0f);
        }
        m8575m(context, c0303z0);
        if (i2 >= 26 && c0303z0.m8385o(13) && (m8387m = c0303z0.m8387m(13)) != null) {
            this.f818a.setFontVariationSettings(m8387m);
        }
        obtainStyledAttributes.recycle();
        Typeface typeface = this.f829l;
        if (typeface != null) {
            this.f818a.setTypeface(typeface, this.f827j);
        }
    }

    /* renamed from: g */
    public void m8581g(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i >= 30) {
            editorInfo.setInitialSurroundingSubText(text, 0);
            return;
        }
        Objects.requireNonNull(text);
        if (i >= 30) {
            editorInfo.setInitialSurroundingSubText(text, 0);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = i2 > i3 ? i3 + 0 : i2 + 0;
        int i5 = i2 > i3 ? i2 - 0 : i3 + 0;
        int length = text.length();
        if (i4 < 0 || i5 > length) {
            C3806a.m1783b(editorInfo, null, 0, 0);
            return;
        }
        int i6 = editorInfo.inputType & 4095;
        if (i6 == 129 || i6 == 225 || i6 == 18) {
            C3806a.m1783b(editorInfo, null, 0, 0);
        } else if (length <= 2048) {
            C3806a.m1783b(editorInfo, text, i4, i5);
        } else {
            int i7 = i5 - i4;
            int i8 = i7 > 1024 ? 0 : i7;
            int length2 = text.length();
            int i9 = 2048 - i8;
            int min = Math.min(length2 - i5, i9 - Math.min(i4, (int) (i9 * 0.8d)));
            int min2 = Math.min(i4, i9 - min);
            int i10 = i4 - min2;
            int i11 = i10;
            int i12 = min2;
            if (C3806a.m1784a(text, i10, 0)) {
                i11 = i10 + 1;
                i12 = min2 - 1;
            }
            int i13 = min;
            if (C3806a.m1784a(text, (i5 + min) - 1, 1)) {
                i13 = min - 1;
            }
            CharSequence concat = i8 != i7 ? TextUtils.concat(text.subSequence(i11, i11 + i12), text.subSequence(i5, i13 + i5)) : text.subSequence(i11, i12 + i8 + i13 + i11);
            int i14 = i12 + 0;
            C3806a.m1783b(editorInfo, concat, i14, i8 + i14);
        }
    }

    /* renamed from: h */
    public void m8580h(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        C0216d0 c0216d0 = this.f826i;
        if (c0216d0.m8553i()) {
            DisplayMetrics displayMetrics = c0216d0.f909j.getResources().getDisplayMetrics();
            c0216d0.m8552j(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (!c0216d0.m8555g()) {
                return;
            }
            c0216d0.m8561a();
        }
    }

    /* renamed from: i */
    public void m8579i(int[] iArr, int i) throws IllegalArgumentException {
        int[] iArr2;
        C0216d0 c0216d0 = this.f826i;
        if (c0216d0.m8553i()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = c0216d0.f909j.getResources().getDisplayMetrics();
                    while (true) {
                        iArr2 = iArr3;
                        if (i2 >= length) {
                            break;
                        }
                        iArr3[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                        i2++;
                    }
                } else {
                    iArr2 = Arrays.copyOf(iArr, length);
                }
                c0216d0.f905f = c0216d0.m8560b(iArr2);
                if (!c0216d0.m8554h()) {
                    StringBuilder m8752j = C0082b.m8752j("None of the preset sizes is valid: ");
                    m8752j.append(Arrays.toString(iArr));
                    throw new IllegalArgumentException(m8752j.toString());
                }
            } else {
                c0216d0.f906g = false;
            }
            if (!c0216d0.m8555g()) {
                return;
            }
            c0216d0.m8561a();
        }
    }

    /* renamed from: j */
    public void m8578j(int i) {
        C0216d0 c0216d0 = this.f826i;
        if (c0216d0.m8553i()) {
            if (i == 0) {
                c0216d0.f900a = 0;
                c0216d0.f903d = -1.0f;
                c0216d0.f904e = -1.0f;
                c0216d0.f902c = -1.0f;
                c0216d0.f905f = new int[0];
                c0216d0.f901b = false;
            } else if (i != 1) {
                throw new IllegalArgumentException(C0033h.m8886k("Unknown auto-size text type: ", i));
            } else {
                DisplayMetrics displayMetrics = c0216d0.f909j.getResources().getDisplayMetrics();
                c0216d0.m8552j(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                if (!c0216d0.m8555g()) {
                    return;
                }
                c0216d0.m8561a();
            }
        }
    }

    /* renamed from: k */
    public void m8577k(ColorStateList colorStateList) {
        if (this.f825h == null) {
            this.f825h = new C0289x0();
        }
        C0289x0 c0289x0 = this.f825h;
        c0289x0.f1131a = colorStateList;
        c0289x0.f1134d = colorStateList != null;
        this.f819b = c0289x0;
        this.f820c = c0289x0;
        this.f821d = c0289x0;
        this.f822e = c0289x0;
        this.f823f = c0289x0;
        this.f824g = c0289x0;
    }

    /* renamed from: l */
    public void m8576l(PorterDuff.Mode mode) {
        if (this.f825h == null) {
            this.f825h = new C0289x0();
        }
        C0289x0 c0289x0 = this.f825h;
        c0289x0.f1132b = mode;
        c0289x0.f1133c = mode != null;
        this.f819b = c0289x0;
        this.f820c = c0289x0;
        this.f821d = c0289x0;
        this.f822e = c0289x0;
        this.f823f = c0289x0;
        this.f824g = c0289x0;
    }

    /* renamed from: m */
    public final void m8575m(Context context, C0303z0 c0303z0) {
        String m8387m;
        this.f827j = c0303z0.m8390j(2, this.f827j);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            int m8390j = c0303z0.m8390j(11, -1);
            this.f828k = m8390j;
            if (m8390j != -1) {
                this.f827j = (this.f827j & 2) | 0;
            }
        }
        int i2 = 10;
        if (!c0303z0.m8385o(10) && !c0303z0.m8385o(12)) {
            if (!c0303z0.m8385o(1)) {
                return;
            }
            this.f830m = false;
            int m8390j2 = c0303z0.m8390j(1, 1);
            if (m8390j2 == 1) {
                this.f829l = Typeface.SANS_SERIF;
                return;
            } else if (m8390j2 == 2) {
                this.f829l = Typeface.SERIF;
                return;
            } else if (m8390j2 != 3) {
                return;
            } else {
                this.f829l = Typeface.MONOSPACE;
                return;
            }
        }
        this.f829l = null;
        if (c0303z0.m8385o(12)) {
            i2 = 12;
        }
        int i3 = this.f828k;
        int i4 = this.f827j;
        if (!context.isRestricted()) {
            try {
                Typeface m8391i = c0303z0.m8391i(i2, this.f827j, new C0197a(i3, i4, new WeakReference(this.f818a)));
                if (m8391i != null) {
                    if (i < 28 || this.f828k == -1) {
                        this.f829l = m8391i;
                    } else {
                        this.f829l = Typeface.create(Typeface.create(m8391i, 0), this.f828k, (this.f827j & 2) != 0);
                    }
                }
                this.f830m = this.f829l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            }
        }
        if (this.f829l != null || (m8387m = c0303z0.m8387m(i2)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f828k == -1) {
            this.f829l = Typeface.create(m8387m, this.f827j);
            return;
        }
        Typeface create = Typeface.create(m8387m, 0);
        int i5 = this.f828k;
        boolean z = false;
        if ((this.f827j & 2) != 0) {
            z = true;
        }
        this.f829l = Typeface.create(create, i5, z);
    }
}
