package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import androidx.appcompat.C0051a;
import androidx.core.p015a.p016a.C0420f;
import androidx.core.widget.AbstractC0598b;
import com.google.android.flexbox.FlexItem;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.v */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v.class */
public class C0349v {

    /* renamed from: a */
    private final TextView f1405a;

    /* renamed from: b */
    private C0309aq f1406b;

    /* renamed from: c */
    private C0309aq f1407c;

    /* renamed from: d */
    private C0309aq f1408d;

    /* renamed from: e */
    private C0309aq f1409e;

    /* renamed from: f */
    private C0309aq f1410f;

    /* renamed from: g */
    private C0309aq f1411g;

    /* renamed from: h */
    private C0309aq f1412h;

    /* renamed from: i */
    private final C0352w f1413i;

    /* renamed from: j */
    private int f1414j = 0;

    /* renamed from: k */
    private int f1415k = -1;

    /* renamed from: l */
    private Typeface f1416l;

    /* renamed from: m */
    private boolean f1417m;

    /* renamed from: androidx.appcompat.widget.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$a.class */
    public static class C0350a extends C0420f.AbstractC0421a {

        /* renamed from: a */
        private final WeakReference<C0349v> f1418a;

        /* renamed from: b */
        private final int f1419b;

        /* renamed from: c */
        private final int f1420c;

        /* renamed from: androidx.appcompat.widget.v$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$a$a.class */
        private class RunnableC0351a implements Runnable {

            /* renamed from: b */
            private final WeakReference<C0349v> f1422b;

            /* renamed from: c */
            private final Typeface f1423c;

            RunnableC0351a(WeakReference<C0349v> weakReference, Typeface typeface) {
                C0350a.this = r4;
                this.f1422b = weakReference;
                this.f1423c = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0349v c0349v = this.f1422b.get();
                if (c0349v == null) {
                    return;
                }
                c0349v.m7019a(this.f1423c);
            }
        }

        C0350a(C0349v c0349v, int i, int i2) {
            this.f1418a = new WeakReference<>(c0349v);
            this.f1419b = i;
            this.f1420c = i2;
        }

        @Override // androidx.core.p015a.p016a.C0420f.AbstractC0421a
        public void onFontRetrievalFailed(int i) {
        }

        @Override // androidx.core.p015a.p016a.C0420f.AbstractC0421a
        public void onFontRetrieved(Typeface typeface) {
            C0349v c0349v = this.f1418a.get();
            if (c0349v == null) {
                return;
            }
            Typeface typeface2 = typeface;
            if (Build.VERSION.SDK_INT >= 28) {
                int i = this.f1419b;
                typeface2 = typeface;
                if (i != -1) {
                    typeface2 = Typeface.create(typeface, i, (this.f1420c & 2) != 0);
                }
            }
            c0349v.m7015a(new RunnableC0351a(this.f1418a, typeface2));
        }
    }

    public C0349v(TextView textView) {
        this.f1405a = textView;
        this.f1413i = new C0352w(this.f1405a);
    }

    /* renamed from: a */
    private static C0309aq m7022a(Context context, C0335i c0335i, int i) {
        ColorStateList m7067b = c0335i.m7067b(context, i);
        if (m7067b != null) {
            C0309aq c0309aq = new C0309aq();
            c0309aq.f1279d = true;
            c0309aq.f1276a = m7067b;
            return c0309aq;
        }
        return null;
    }

    /* renamed from: a */
    private void m7023a(Context context, C0311as c0311as) {
        String m7150d;
        this.f1414j = c0311as.m7161a(C0051a.C0061j.TextAppearance_android_textStyle, this.f1414j);
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1415k = c0311as.m7161a(C0051a.C0061j.TextAppearance_android_textFontWeight, -1);
            if (this.f1415k != -1) {
                this.f1414j = (this.f1414j & 2) | 0;
            }
        }
        if (!c0311as.m7144g(C0051a.C0061j.TextAppearance_android_fontFamily) && !c0311as.m7144g(C0051a.C0061j.TextAppearance_fontFamily)) {
            if (!c0311as.m7144g(C0051a.C0061j.TextAppearance_android_typeface)) {
                return;
            }
            this.f1417m = false;
            int m7161a = c0311as.m7161a(C0051a.C0061j.TextAppearance_android_typeface, 1);
            if (m7161a == 1) {
                this.f1416l = Typeface.SANS_SERIF;
                return;
            } else if (m7161a == 2) {
                this.f1416l = Typeface.SERIF;
                return;
            } else if (m7161a != 3) {
                return;
            } else {
                this.f1416l = Typeface.MONOSPACE;
                return;
            }
        }
        this.f1416l = null;
        int i = c0311as.m7144g(C0051a.C0061j.TextAppearance_fontFamily) ? C0051a.C0061j.TextAppearance_fontFamily : C0051a.C0061j.TextAppearance_android_fontFamily;
        int i2 = this.f1415k;
        int i3 = this.f1414j;
        if (!context.isRestricted()) {
            try {
                Typeface m7160a = c0311as.m7160a(i, this.f1414j, new C0350a(this, i2, i3));
                if (m7160a != null) {
                    if (Build.VERSION.SDK_INT < 28 || this.f1415k == -1) {
                        this.f1416l = m7160a;
                    } else {
                        this.f1416l = Typeface.create(Typeface.create(m7160a, 0), this.f1415k, (this.f1414j & 2) != 0);
                    }
                }
                this.f1417m = this.f1416l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            }
        }
        if (this.f1416l != null || (m7150d = c0311as.m7150d(i)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f1415k == -1) {
            this.f1416l = Typeface.create(m7150d, this.f1414j);
            return;
        }
        Typeface create = Typeface.create(m7150d, 0);
        int i4 = this.f1415k;
        boolean z = false;
        if ((this.f1414j & 2) != 0) {
            z = true;
        }
        this.f1416l = Typeface.create(create, i4, z);
    }

    /* renamed from: a */
    private void m7018a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f1405a.getCompoundDrawablesRelative();
            TextView textView = this.f1405a;
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
            if (Build.VERSION.SDK_INT >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f1405a.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                    TextView textView2 = this.f1405a;
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
            Drawable[] compoundDrawables = this.f1405a.getCompoundDrawables();
            TextView textView3 = this.f1405a;
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

    /* renamed from: a */
    private void m7017a(Drawable drawable, C0309aq c0309aq) {
        if (drawable == null || c0309aq == null) {
            return;
        }
        C0335i.m7069a(drawable, c0309aq, this.f1405a.getDrawableState());
    }

    /* renamed from: b */
    private void m7010b(int i, float f) {
        this.f1413i.m6995a(i, f);
    }

    /* renamed from: l */
    private void m7000l() {
        C0309aq c0309aq = this.f1412h;
        this.f1406b = c0309aq;
        this.f1407c = c0309aq;
        this.f1408d = c0309aq;
        this.f1409e = c0309aq;
        this.f1410f = c0309aq;
        this.f1411g = c0309aq;
    }

    /* renamed from: a */
    public void m7028a() {
        m7011b();
    }

    /* renamed from: a */
    public void m7027a(int i) {
        this.f1413i.m6996a(i);
    }

    /* renamed from: a */
    public void m7026a(int i, float f) {
        if (AbstractC0598b.f2027d || m7008d()) {
            return;
        }
        m7010b(i, f);
    }

    /* renamed from: a */
    public void m7025a(int i, int i2, int i3, int i4) {
        this.f1413i.m6994a(i, i2, i3, i4);
    }

    /* renamed from: a */
    public void m7024a(Context context, int i) {
        String m7150d;
        ColorStateList m7148e;
        C0311as m7158a = C0311as.m7158a(context, i, C0051a.C0061j.TextAppearance);
        if (m7158a.m7144g(C0051a.C0061j.TextAppearance_textAllCaps)) {
            m7014a(m7158a.m7159a(C0051a.C0061j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && m7158a.m7144g(C0051a.C0061j.TextAppearance_android_textColor) && (m7148e = m7158a.m7148e(C0051a.C0061j.TextAppearance_android_textColor)) != null) {
            this.f1405a.setTextColor(m7148e);
        }
        if (m7158a.m7144g(C0051a.C0061j.TextAppearance_android_textSize) && m7158a.m7147e(C0051a.C0061j.TextAppearance_android_textSize, -1) == 0) {
            this.f1405a.setTextSize(0, FlexItem.FLEX_GROW_DEFAULT);
        }
        m7023a(context, m7158a);
        if (Build.VERSION.SDK_INT >= 26 && m7158a.m7144g(C0051a.C0061j.TextAppearance_fontVariationSettings) && (m7150d = m7158a.m7150d(C0051a.C0061j.TextAppearance_fontVariationSettings)) != null) {
            this.f1405a.setFontVariationSettings(m7150d);
        }
        m7158a.m7164a();
        Typeface typeface = this.f1416l;
        if (typeface != null) {
            this.f1405a.setTypeface(typeface, this.f1414j);
        }
    }

    /* renamed from: a */
    public void m7021a(ColorStateList colorStateList) {
        if (this.f1412h == null) {
            this.f1412h = new C0309aq();
        }
        C0309aq c0309aq = this.f1412h;
        c0309aq.f1276a = colorStateList;
        c0309aq.f1279d = colorStateList != null;
        m7000l();
    }

    /* renamed from: a */
    public void m7020a(PorterDuff.Mode mode) {
        if (this.f1412h == null) {
            this.f1412h = new C0309aq();
        }
        C0309aq c0309aq = this.f1412h;
        c0309aq.f1277b = mode;
        c0309aq.f1278c = mode != null;
        m7000l();
    }

    /* renamed from: a */
    public void m7019a(Typeface typeface) {
        if (this.f1417m) {
            this.f1405a.setTypeface(typeface);
            this.f1416l = typeface;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01c3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7016a(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 1418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0349v.m7016a(android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    public void m7015a(Runnable runnable) {
        this.f1405a.post(runnable);
    }

    /* renamed from: a */
    public void m7014a(boolean z) {
        this.f1405a.setAllCaps(z);
    }

    /* renamed from: a */
    public void m7013a(boolean z, int i, int i2, int i3, int i4) {
        if (!AbstractC0598b.f2027d) {
            m7009c();
        }
    }

    /* renamed from: a */
    public void m7012a(int[] iArr, int i) {
        this.f1413i.m6984a(iArr, i);
    }

    /* renamed from: b */
    public void m7011b() {
        if (this.f1406b != null || this.f1407c != null || this.f1408d != null || this.f1409e != null) {
            Drawable[] compoundDrawables = this.f1405a.getCompoundDrawables();
            m7017a(compoundDrawables[0], this.f1406b);
            m7017a(compoundDrawables[1], this.f1407c);
            m7017a(compoundDrawables[2], this.f1408d);
            m7017a(compoundDrawables[3], this.f1409e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f1410f == null && this.f1411g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f1405a.getCompoundDrawablesRelative();
            m7017a(compoundDrawablesRelative[0], this.f1410f);
            m7017a(compoundDrawablesRelative[2], this.f1411g);
        }
    }

    /* renamed from: c */
    public void m7009c() {
        this.f1413i.m6974f();
    }

    /* renamed from: d */
    public boolean m7008d() {
        return this.f1413i.m6973g();
    }

    /* renamed from: e */
    public int m7007e() {
        return this.f1413i.m6999a();
    }

    /* renamed from: f */
    public int m7006f() {
        return this.f1413i.m6983b();
    }

    /* renamed from: g */
    public int m7005g() {
        return this.f1413i.m6977c();
    }

    /* renamed from: h */
    public int m7004h() {
        return this.f1413i.m6976d();
    }

    /* renamed from: i */
    public int[] m7003i() {
        return this.f1413i.m6975e();
    }

    /* renamed from: j */
    public ColorStateList m7002j() {
        C0309aq c0309aq = this.f1412h;
        return c0309aq != null ? c0309aq.f1276a : null;
    }

    /* renamed from: k */
    public PorterDuff.Mode m7001k() {
        C0309aq c0309aq = this.f1412h;
        return c0309aq != null ? c0309aq.f1277b : null;
    }
}
