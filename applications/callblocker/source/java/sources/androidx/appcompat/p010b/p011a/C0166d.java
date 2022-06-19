package androidx.appcompat.p010b.p011a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.appcompat.p010b.p011a.C0161b;
import androidx.appcompat.p012c.C0168a;
import androidx.appcompat.widget.C0296af;
import androidx.core.p017a.p018a.C0453g;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@SuppressLint({"RestrictedAPI"})
/* renamed from: androidx.appcompat.b.a.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/d.class */
public class C0166d extends C0161b {

    /* renamed from: a */
    private C0167a f573a;

    /* renamed from: b */
    private boolean f574b;

    /* renamed from: androidx.appcompat.b.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/d$a.class */
    public static class C0167a extends C0161b.AbstractC0164b {

        /* renamed from: L */
        int[][] f575L;

        /* JADX WARN: Type inference failed for: r1v3, types: [int[], int[][]] */
        public C0167a(C0167a c0167a, C0166d c0166d, Resources resources) {
            super(c0167a, c0166d, resources);
            if (c0167a != null) {
                this.f575L = c0167a.f575L;
            } else {
                this.f575L = new int[m22023c()];
            }
        }

        /* renamed from: a */
        public int m21997a(int[] iArr, Drawable drawable) {
            int a = m22029a(drawable);
            this.f575L[a] = iArr;
            return a;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [int[], int[][]] */
        @Override // androidx.appcompat.p010b.p011a.C0161b.AbstractC0164b
        /* renamed from: a */
        void mo21998a() {
            ?? r0 = new int[this.f575L.length];
            for (int length = this.f575L.length - 1; length >= 0; length--) {
                r0[length] = this.f575L[length] != null ? (int[]) this.f575L[length].clone() : null;
            }
            this.f575L = r0;
        }

        /* renamed from: b */
        public int m21996b(int[] iArr) {
            int[][] iArr2 = this.f575L;
            int d = m22021d();
            int i = 0;
            while (true) {
                if (i >= d) {
                    i = -1;
                    break;
                } else if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    break;
                } else {
                    i++;
                }
            }
            return i;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [int[], int[][], java.lang.Object] */
        @Override // androidx.appcompat.p010b.p011a.C0161b.AbstractC0164b
        /* renamed from: e */
        public void mo21995e(int i, int i2) {
            super.mo21995e(i, i2);
            ?? r0 = new int[i2];
            System.arraycopy(this.f575L, 0, r0, 0, i);
            this.f575L = r0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0166d(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0166d(this, resources);
        }
    }

    C0166d() {
        this(null, null);
    }

    public C0166d(C0167a c0167a) {
        if (c0167a != null) {
            mo22002a(c0167a);
        }
    }

    C0166d(C0167a c0167a, Resources resources) {
        mo22002a(new C0167a(c0167a, this, resources));
        onStateChange(getState());
    }

    /* renamed from: a */
    private void m22005a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        C0167a c0167a = this.f573a;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 < depth && next2 == 3) {
                    return;
                }
                if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                    TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0168a.C0170b.StateListDrawableItem);
                    Drawable drawable = null;
                    int resourceId = m20840a.getResourceId(C0168a.C0170b.StateListDrawableItem_android_drawable, -1);
                    if (resourceId > 0) {
                        drawable = C0296af.m21513a().m21509a(context, resourceId);
                    }
                    m20840a.recycle();
                    int[] m22003a = m22003a(attributeSet);
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
                    c0167a.m21997a(m22003a, drawable2);
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m22004a(TypedArray typedArray) {
        C0167a c0167a = this.f573a;
        if (Build.VERSION.SDK_INT >= 21) {
            c0167a.f551f |= typedArray.getChangingConfigurations();
        }
        c0167a.f556k = typedArray.getBoolean(C0168a.C0170b.StateListDrawable_android_variablePadding, c0167a.f556k);
        c0167a.f559n = typedArray.getBoolean(C0168a.C0170b.StateListDrawable_android_constantSize, c0167a.f559n);
        c0167a.f539C = typedArray.getInt(C0168a.C0170b.StateListDrawable_android_enterFadeDuration, c0167a.f539C);
        c0167a.f540D = typedArray.getInt(C0168a.C0170b.StateListDrawable_android_exitFadeDuration, c0167a.f540D);
        c0167a.f571z = typedArray.getBoolean(C0168a.C0170b.StateListDrawable_android_dither, c0167a.f571z);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b
    /* renamed from: a */
    public void mo22002a(C0161b.AbstractC0164b abstractC0164b) {
        super.mo22002a(abstractC0164b);
        if (abstractC0164b instanceof C0167a) {
            this.f573a = (C0167a) abstractC0164b;
        }
    }

    /* renamed from: a */
    public int[] m22003a(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            switch (attributeNameResource) {
                case 0:
                case 16842960:
                case 16843161:
                    break;
                default:
                    if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                        attributeNameResource = -attributeNameResource;
                    }
                    iArr[i] = attributeNameResource;
                    i++;
                    break;
            }
        }
        return StateSet.trimStateSet(iArr, i);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    /* renamed from: b */
    public C0167a mo21999c() {
        return new C0167a(this.f573a, this, null);
    }

    /* renamed from: b */
    public void mo22000b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0168a.C0170b.StateListDrawable);
        setVisible(m20840a.getBoolean(C0168a.C0170b.StateListDrawable_android_visible, true), true);
        m22004a(m20840a);
        m22038a(resources);
        m20840a.recycle();
        m22005a(context, resources, xmlPullParser, attributeSet, theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f574b && super.mutate() == this) {
            this.f573a.mo21998a();
            this.f574b = true;
        }
        return this;
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m21996b = this.f573a.m21996b(iArr);
        int i = m21996b;
        if (m21996b < 0) {
            i = this.f573a.m21996b(StateSet.WILD_CARD);
        }
        return m22039a(i) || onStateChange;
    }
}
