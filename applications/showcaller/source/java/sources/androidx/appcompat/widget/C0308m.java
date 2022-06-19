package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.core.content.p007d.C0605f;
import androidx.core.widget.AbstractC0642d;
import java.lang.ref.WeakReference;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p052g0.C1654a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m.class */
public class C0308m {

    /* renamed from: a */
    private final TextView f1326a;

    /* renamed from: b */
    private C0282c0 f1327b;

    /* renamed from: c */
    private C0282c0 f1328c;

    /* renamed from: d */
    private C0282c0 f1329d;

    /* renamed from: e */
    private C0282c0 f1330e;

    /* renamed from: f */
    private C0282c0 f1331f;

    /* renamed from: g */
    private C0282c0 f1332g;

    /* renamed from: h */
    private C0282c0 f1333h;

    /* renamed from: i */
    private final C0311n f1334i;

    /* renamed from: j */
    private int f1335j = 0;

    /* renamed from: k */
    private int f1336k = -1;

    /* renamed from: l */
    private Typeface f1337l;

    /* renamed from: m */
    private boolean f1338m;

    /* renamed from: androidx.appcompat.widget.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m$a.class */
    public class C0309a extends C0605f.AbstractC0608c {

        /* renamed from: a */
        final /* synthetic */ int f1339a;

        /* renamed from: b */
        final /* synthetic */ int f1340b;

        /* renamed from: c */
        final /* synthetic */ WeakReference f1341c;

        C0309a(int i, int i2, WeakReference weakReference) {
            C0308m.this = r4;
            this.f1339a = i;
            this.f1340b = i2;
            this.f1341c = weakReference;
        }

        @Override // androidx.core.content.p007d.C0605f.AbstractC0608c
        /* renamed from: d */
        public void mo28666d(int i) {
        }

        @Override // androidx.core.content.p007d.C0605f.AbstractC0608c
        /* renamed from: e */
        public void mo28665e(Typeface typeface) {
            Typeface typeface2 = typeface;
            if (Build.VERSION.SDK_INT >= 28) {
                int i = this.f1339a;
                typeface2 = typeface;
                if (i != -1) {
                    typeface2 = Typeface.create(typeface, i, (this.f1340b & 2) != 0);
                }
            }
            C0308m.this.m34848n(this.f1341c, typeface2);
        }
    }

    /* renamed from: androidx.appcompat.widget.m$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m$b.class */
    public class RunnableC0310b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ TextView f1343d;

        /* renamed from: e */
        final /* synthetic */ Typeface f1344e;

        /* renamed from: f */
        final /* synthetic */ int f1345f;

        RunnableC0310b(TextView textView, Typeface typeface, int i) {
            C0308m.this = r4;
            this.f1343d = textView;
            this.f1344e = typeface;
            this.f1345f = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1343d.setTypeface(this.f1344e, this.f1345f);
        }
    }

    public C0308m(TextView textView) {
        this.f1326a = textView;
        this.f1334i = new C0311n(textView);
    }

    /* renamed from: B */
    private void m34863B(int i, float f) {
        this.f1334i.m34806y(i, f);
    }

    /* renamed from: C */
    private void m34862C(Context context, C0286e0 c0286e0) {
        String m34953o;
        this.f1335j = c0286e0.m34957k(C1432j.TextAppearance_android_textStyle, this.f1335j);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            int m34957k = c0286e0.m34957k(C1432j.TextAppearance_android_textFontWeight, -1);
            this.f1336k = m34957k;
            if (m34957k != -1) {
                this.f1335j = (this.f1335j & 2) | 0;
            }
        }
        int i2 = C1432j.TextAppearance_android_fontFamily;
        if (!c0286e0.m34949s(i2) && !c0286e0.m34949s(C1432j.TextAppearance_fontFamily)) {
            int i3 = C1432j.TextAppearance_android_typeface;
            if (!c0286e0.m34949s(i3)) {
                return;
            }
            this.f1338m = false;
            int m34957k2 = c0286e0.m34957k(i3, 1);
            if (m34957k2 == 1) {
                this.f1337l = Typeface.SANS_SERIF;
                return;
            } else if (m34957k2 == 2) {
                this.f1337l = Typeface.SERIF;
                return;
            } else if (m34957k2 != 3) {
                return;
            } else {
                this.f1337l = Typeface.MONOSPACE;
                return;
            }
        }
        this.f1337l = null;
        int i4 = C1432j.TextAppearance_fontFamily;
        if (c0286e0.m34949s(i4)) {
            i2 = i4;
        }
        int i5 = this.f1336k;
        int i6 = this.f1335j;
        if (!context.isRestricted()) {
            try {
                Typeface m34958j = c0286e0.m34958j(i2, this.f1335j, new C0309a(i5, i6, new WeakReference(this.f1326a)));
                if (m34958j != null) {
                    if (i < 28 || this.f1336k == -1) {
                        this.f1337l = m34958j;
                    } else {
                        this.f1337l = Typeface.create(Typeface.create(m34958j, 0), this.f1336k, (this.f1335j & 2) != 0);
                    }
                }
                this.f1338m = this.f1337l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            }
        }
        if (this.f1337l != null || (m34953o = c0286e0.m34953o(i2)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f1336k == -1) {
            this.f1337l = Typeface.create(m34953o, this.f1335j);
            return;
        }
        Typeface create = Typeface.create(m34953o, 0);
        int i7 = this.f1336k;
        boolean z = false;
        if ((this.f1335j & 2) != 0) {
            z = true;
        }
        this.f1337l = Typeface.create(create, i7, z);
    }

    /* renamed from: a */
    private void m34861a(Drawable drawable, C0282c0 c0282c0) {
        if (drawable == null || c0282c0 == null) {
            return;
        }
        C0287f.m34936i(drawable, c0282c0, this.f1326a.getDrawableState());
    }

    /* renamed from: d */
    private static C0282c0 m34858d(Context context, C0287f c0287f, int i) {
        ColorStateList m34939f = c0287f.m34939f(context, i);
        if (m34939f != null) {
            C0282c0 c0282c0 = new C0282c0();
            c0282c0.f1239d = true;
            c0282c0.f1236a = m34939f;
            return c0282c0;
        }
        return null;
    }

    /* renamed from: y */
    private void m34837y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f1326a.getCompoundDrawablesRelative();
            TextView textView = this.f1326a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        } else if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
        } else {
            if (i >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f1326a.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                    TextView textView2 = this.f1326a;
                    Drawable drawable7 = compoundDrawablesRelative2[0];
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative2[1];
                    }
                    Drawable drawable8 = compoundDrawablesRelative2[2];
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative2[3];
                    }
                    textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                    return;
                }
            }
            Drawable[] compoundDrawables = this.f1326a.getCompoundDrawables();
            TextView textView3 = this.f1326a;
            if (drawable == null) {
                drawable = compoundDrawables[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawables[1];
            }
            if (drawable3 == null) {
                drawable3 = compoundDrawables[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawables[3];
            }
            textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }

    /* renamed from: z */
    private void m34836z() {
        C0282c0 c0282c0 = this.f1333h;
        this.f1327b = c0282c0;
        this.f1328c = c0282c0;
        this.f1329d = c0282c0;
        this.f1330e = c0282c0;
        this.f1331f = c0282c0;
        this.f1332g = c0282c0;
    }

    /* renamed from: A */
    public void m34864A(int i, float f) {
        if (AbstractC0642d.f3097a || m34850l()) {
            return;
        }
        m34863B(i, f);
    }

    /* renamed from: b */
    public void m34860b() {
        if (this.f1327b != null || this.f1328c != null || this.f1329d != null || this.f1330e != null) {
            Drawable[] compoundDrawables = this.f1326a.getCompoundDrawables();
            m34861a(compoundDrawables[0], this.f1327b);
            m34861a(compoundDrawables[1], this.f1328c);
            m34861a(compoundDrawables[2], this.f1329d);
            m34861a(compoundDrawables[3], this.f1330e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f1331f == null && this.f1332g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f1326a.getCompoundDrawablesRelative();
            m34861a(compoundDrawablesRelative[0], this.f1331f);
            m34861a(compoundDrawablesRelative[2], this.f1332g);
        }
    }

    /* renamed from: c */
    public void m34859c() {
        this.f1334i.m34829b();
    }

    /* renamed from: e */
    public int m34857e() {
        return this.f1334i.m34821j();
    }

    /* renamed from: f */
    public int m34856f() {
        return this.f1334i.m34820k();
    }

    /* renamed from: g */
    public int m34855g() {
        return this.f1334i.m34819l();
    }

    /* renamed from: h */
    public int[] m34854h() {
        return this.f1334i.m34818m();
    }

    /* renamed from: i */
    public int m34853i() {
        return this.f1334i.m34817n();
    }

    /* renamed from: j */
    public ColorStateList m34852j() {
        C0282c0 c0282c0 = this.f1333h;
        return c0282c0 != null ? c0282c0.f1236a : null;
    }

    /* renamed from: k */
    public PorterDuff.Mode m34851k() {
        C0282c0 c0282c0 = this.f1333h;
        return c0282c0 != null ? c0282c0.f1237b : null;
    }

    /* renamed from: l */
    public boolean m34850l() {
        return this.f1334i.m34812s();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0502  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x052c  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:170:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0381  */
    @android.annotation.SuppressLint({"NewApi"})
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34849m(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 1487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0308m.m34849m(android.util.AttributeSet, int):void");
    }

    /* renamed from: n */
    void m34848n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f1338m) {
            this.f1337l = typeface;
            TextView textView = weakReference.get();
            if (textView == null) {
                return;
            }
            if (C1679w.m29314U(textView)) {
                textView.post(new RunnableC0310b(textView, typeface, this.f1335j));
            } else {
                textView.setTypeface(typeface, this.f1335j);
            }
        }
    }

    /* renamed from: o */
    public void m34847o(boolean z, int i, int i2, int i3, int i4) {
        if (!AbstractC0642d.f3097a) {
            m34859c();
        }
    }

    /* renamed from: p */
    public void m34846p() {
        m34860b();
    }

    /* renamed from: q */
    public void m34845q(Context context, int i) {
        String m34953o;
        ColorStateList m34965c;
        ColorStateList m34965c2;
        ColorStateList m34965c3;
        C0286e0 m34948t = C0286e0.m34948t(context, i, C1432j.TextAppearance);
        int i2 = C1432j.TextAppearance_textAllCaps;
        if (m34948t.m34949s(i2)) {
            m34843s(m34948t.m34967a(i2, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23) {
            int i4 = C1432j.TextAppearance_android_textColor;
            if (m34948t.m34949s(i4) && (m34965c3 = m34948t.m34965c(i4)) != null) {
                this.f1326a.setTextColor(m34965c3);
            }
            int i5 = C1432j.TextAppearance_android_textColorLink;
            if (m34948t.m34949s(i5) && (m34965c2 = m34948t.m34965c(i5)) != null) {
                this.f1326a.setLinkTextColor(m34965c2);
            }
            int i6 = C1432j.TextAppearance_android_textColorHint;
            if (m34948t.m34949s(i6) && (m34965c = m34948t.m34965c(i6)) != null) {
                this.f1326a.setHintTextColor(m34965c);
            }
        }
        int i7 = C1432j.TextAppearance_android_textSize;
        if (m34948t.m34949s(i7) && m34948t.m34962f(i7, -1) == 0) {
            this.f1326a.setTextSize(0, 0.0f);
        }
        m34862C(context, m34948t);
        if (i3 >= 26) {
            int i8 = C1432j.TextAppearance_fontVariationSettings;
            if (m34948t.m34949s(i8) && (m34953o = m34948t.m34953o(i8)) != null) {
                this.f1326a.setFontVariationSettings(m34953o);
            }
        }
        m34948t.m34945w();
        Typeface typeface = this.f1337l;
        if (typeface != null) {
            this.f1326a.setTypeface(typeface, this.f1335j);
        }
    }

    /* renamed from: r */
    public void m34844r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        C1654a.m29420f(editorInfo, textView.getText());
    }

    /* renamed from: s */
    public void m34843s(boolean z) {
        this.f1326a.setAllCaps(z);
    }

    /* renamed from: t */
    public void m34842t(int i, int i2, int i3, int i4) {
        this.f1334i.m34810u(i, i2, i3, i4);
    }

    /* renamed from: u */
    public void m34841u(int[] iArr, int i) {
        this.f1334i.m34809v(iArr, i);
    }

    /* renamed from: v */
    public void m34840v(int i) {
        this.f1334i.m34808w(i);
    }

    /* renamed from: w */
    public void m34839w(ColorStateList colorStateList) {
        if (this.f1333h == null) {
            this.f1333h = new C0282c0();
        }
        C0282c0 c0282c0 = this.f1333h;
        c0282c0.f1236a = colorStateList;
        c0282c0.f1239d = colorStateList != null;
        m34836z();
    }

    /* renamed from: x */
    public void m34838x(PorterDuff.Mode mode) {
        if (this.f1333h == null) {
            this.f1333h = new C0282c0();
        }
        C0282c0 c0282c0 = this.f1333h;
        c0282c0.f1237b = mode;
        c0282c0.f1238c = mode != null;
        m34836z();
    }
}
