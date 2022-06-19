package androidx.appcompat.p008b.p009a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.appcompat.p008b.p009a.C0142b;
import androidx.appcompat.p010c.C0150a;
import androidx.appcompat.widget.C0290ai;
import androidx.core.p015a.p016a.C0424g;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.b.a.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/e.class */
public class C0148e extends C0142b {

    /* renamed from: a */
    private C0149a f520a;

    /* renamed from: b */
    private boolean f521b;

    /* renamed from: androidx.appcompat.b.a.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/e$a.class */
    public static class C0149a extends C0142b.AbstractC0145b {

        /* renamed from: L */
        int[][] f522L;

        /* JADX WARN: Type inference failed for: r1v3, types: [int[], int[][]] */
        public C0149a(C0149a c0149a, C0148e c0148e, Resources resources) {
            super(c0149a, c0148e, resources);
            if (c0149a != null) {
                this.f522L = c0149a.f522L;
            } else {
                this.f522L = new int[m7697c()];
            }
        }

        /* renamed from: a */
        public int m7666a(int[] iArr, Drawable drawable) {
            int a = m7703a(drawable);
            this.f522L[a] = iArr;
            return a;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        @Override // androidx.appcompat.p008b.p009a.C0142b.AbstractC0145b
        /* renamed from: a */
        void mo7667a() {
            int[][] iArr = this.f522L;
            ?? r0 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr2 = this.f522L;
                r0[length] = iArr2[length] != null ? (int[]) iArr2[length].clone() : null;
            }
            this.f522L = r0;
        }

        /* renamed from: b */
        public int m7665b(int[] iArr) {
            int[][] iArr2 = this.f522L;
            int d = m7695d();
            for (int i = 0; i < d; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, int[], int[][]] */
        @Override // androidx.appcompat.p008b.p009a.C0142b.AbstractC0145b
        /* renamed from: e */
        public void mo7664e(int i, int i2) {
            super.mo7664e(i, i2);
            ?? r0 = new int[i2];
            System.arraycopy(this.f522L, 0, r0, 0, i);
            this.f522L = r0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0148e(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0148e(this, resources);
        }
    }

    C0148e() {
        this(null, null);
    }

    public C0148e(C0149a c0149a) {
        if (c0149a != null) {
            mo7671a(c0149a);
        }
    }

    C0148e(C0149a c0149a, Resources resources) {
        mo7671a(new C0149a(c0149a, this, resources));
        onStateChange(getState());
    }

    /* renamed from: a */
    private void m7674a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        C0149a c0149a = this.f520a;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 < depth && next2 == 3) {
                    return;
                }
                if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                    TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0150a.C0152b.StateListDrawableItem);
                    Drawable drawable = null;
                    int resourceId = m6696a.getResourceId(C0150a.C0152b.StateListDrawableItem_android_drawable, -1);
                    if (resourceId > 0) {
                        drawable = C0290ai.m7236a().m7232a(context, resourceId);
                    }
                    m6696a.recycle();
                    int[] m7672a = m7672a(attributeSet);
                    Drawable drawable2 = drawable;
                    if (drawable == null) {
                        do {
                            next = xmlPullParser.next();
                        } while (next == 4);
                        if (next != 2) {
                            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                        drawable2 = Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                    }
                    c0149a.m7666a(m7672a, drawable2);
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m7673a(TypedArray typedArray) {
        C0149a c0149a = this.f520a;
        if (Build.VERSION.SDK_INT >= 21) {
            c0149a.f486f |= typedArray.getChangingConfigurations();
        }
        c0149a.f491k = typedArray.getBoolean(C0150a.C0152b.StateListDrawable_android_variablePadding, c0149a.f491k);
        c0149a.f494n = typedArray.getBoolean(C0150a.C0152b.StateListDrawable_android_constantSize, c0149a.f494n);
        c0149a.f474C = typedArray.getInt(C0150a.C0152b.StateListDrawable_android_enterFadeDuration, c0149a.f474C);
        c0149a.f475D = typedArray.getInt(C0150a.C0152b.StateListDrawable_android_exitFadeDuration, c0149a.f475D);
        c0149a.f506z = typedArray.getBoolean(C0150a.C0152b.StateListDrawable_android_dither, c0149a.f506z);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b
    /* renamed from: a */
    public void mo7671a(C0142b.AbstractC0145b abstractC0145b) {
        super.mo7671a(abstractC0145b);
        if (abstractC0145b instanceof C0149a) {
            this.f520a = (C0149a) abstractC0145b;
        }
    }

    /* renamed from: a */
    public int[] m7672a(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < attributeCount) {
                int attributeNameResource = attributeSet.getAttributeNameResource(i);
                int i4 = i3;
                if (attributeNameResource != 0) {
                    i4 = i3;
                    if (attributeNameResource != 16842960) {
                        i4 = i3;
                        if (attributeNameResource != 16843161) {
                            iArr[i3] = attributeSet.getAttributeBooleanValue(i, false) ? attributeNameResource : -attributeNameResource;
                            i4 = i3 + 1;
                        }
                    }
                }
                i++;
                i2 = i4;
            } else {
                return StateSet.trimStateSet(iArr, i3);
            }
        }
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    /* renamed from: b */
    public C0149a mo7668c() {
        return new C0149a(this.f520a, this, null);
    }

    /* renamed from: b */
    public void mo7669b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0150a.C0152b.StateListDrawable);
        setVisible(m6696a.getBoolean(C0150a.C0152b.StateListDrawable_android_visible, true), true);
        m7673a(m6696a);
        m7712a(resources);
        m6696a.recycle();
        m7674a(context, resources, xmlPullParser, attributeSet, theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f521b && super.mutate() == this) {
            this.f520a.mo7667a();
            this.f521b = true;
        }
        return this;
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m7665b = this.f520a.m7665b(iArr);
        int i = m7665b;
        if (m7665b < 0) {
            i = this.f520a.m7665b(StateSet.WILD_CARD);
        }
        return m7713a(i) || onStateChange;
    }
}
