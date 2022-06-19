package p020b.p021a.p024l.p025a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.appcompat.widget.C0327v;
import androidx.core.content.p007d.C0614g;
import androidx.core.graphics.drawable.AbstractC0616b;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p021a.p024l.p025a.C1443b;
import p020b.p021a.p024l.p025a.C1449d;
import p020b.p021a.p026m.C1452b;
import p020b.p036e.C1494d;
import p020b.p036e.C1503h;
import p020b.p074t.p075a.p076a.C1794c;
import p020b.p074t.p075a.p076a.C1804i;
@SuppressLint({"RestrictedAPI"})
/* renamed from: b.a.l.a.a */
/* loaded from: classes-dex2jar.jar:b/a/l/a/a.class */
public class C1435a extends C1449d implements AbstractC0616b {

    /* renamed from: r */
    private static final String f5764r = C1435a.class.getSimpleName();

    /* renamed from: s */
    private C1438c f5765s;

    /* renamed from: t */
    private AbstractC1442g f5766t;

    /* renamed from: u */
    private int f5767u;

    /* renamed from: v */
    private int f5768v;

    /* renamed from: w */
    private boolean f5769w;

    /* renamed from: b.a.l.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/a$b.class */
    public static class C1437b extends AbstractC1442g {

        /* renamed from: a */
        private final Animatable f5770a;

        C1437b(Animatable animatable) {
            super();
            this.f5770a = animatable;
        }

        @Override // p020b.p021a.p024l.p025a.C1435a.AbstractC1442g
        /* renamed from: c */
        public void mo30101c() {
            this.f5770a.start();
        }

        @Override // p020b.p021a.p024l.p025a.C1435a.AbstractC1442g
        /* renamed from: d */
        public void mo30100d() {
            this.f5770a.stop();
        }
    }

    /* renamed from: b.a.l.a.a$c */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/a$c.class */
    public static class C1438c extends C1449d.C1450a {

        /* renamed from: K */
        C1494d<Long> f5771K;

        /* renamed from: L */
        C1503h<Integer> f5772L;

        C1438c(C1438c c1438c, C1435a c1435a, Resources resources) {
            super(c1438c, c1435a, resources);
            if (c1438c != null) {
                this.f5771K = c1438c.f5771K;
                this.f5772L = c1438c.f5772L;
                return;
            }
            this.f5771K = new C1494d<>();
            this.f5772L = new C1503h<>();
        }

        /* renamed from: D */
        private static long m30111D(int i, int i2) {
            return i2 | (i << 32);
        }

        /* renamed from: B */
        int m30113B(int[] iArr, Drawable drawable, int i) {
            int m30055z = super.m30055z(iArr, drawable);
            this.f5772L.m29900l(m30055z, Integer.valueOf(i));
            return m30055z;
        }

        /* renamed from: C */
        int m30112C(int i, int i2, Drawable drawable, boolean z) {
            int m30087a = super.m30087a(drawable);
            long m30111D = m30111D(i, i2);
            char c = z ? (char) 0 : (char) 0;
            long j = m30087a;
            this.f5771K.m29958a(m30111D, Long.valueOf(j | c));
            if (z) {
                this.f5771K.m29958a(m30111D(i2, i), Long.valueOf(4294967296L | j | c));
            }
            return m30087a;
        }

        /* renamed from: E */
        int m30110E(int i) {
            return i < 0 ? 0 : this.f5772L.m29903h(i, 0).intValue();
        }

        /* renamed from: F */
        int m30109F(int[] iArr) {
            int m30058A = super.m30058A(iArr);
            return m30058A >= 0 ? m30058A : super.m30058A(StateSet.WILD_CARD);
        }

        /* renamed from: G */
        int m30108G(int i, int i2) {
            return (int) this.f5771K.m29953h(m30111D(i, i2), -1L).longValue();
        }

        /* renamed from: H */
        boolean m30107H(int i, int i2) {
            return (this.f5771K.m29953h(m30111D(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        /* renamed from: I */
        boolean m30106I(int i, int i2) {
            return (this.f5771K.m29953h(m30111D(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // p020b.p021a.p024l.p025a.C1449d.C1450a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C1435a(this, null);
        }

        @Override // p020b.p021a.p024l.p025a.C1449d.C1450a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C1435a(this, resources);
        }

        @Override // p020b.p021a.p024l.p025a.C1449d.C1450a, p020b.p021a.p024l.p025a.C1443b.AbstractC1447d
        /* renamed from: r */
        void mo30056r() {
            this.f5771K = this.f5771K.clone();
            this.f5772L = this.f5772L.clone();
        }
    }

    /* renamed from: b.a.l.a.a$d */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/a$d.class */
    public static class C1439d extends AbstractC1442g {

        /* renamed from: a */
        private final C1794c f5773a;

        C1439d(C1794c c1794c) {
            super();
            this.f5773a = c1794c;
        }

        @Override // p020b.p021a.p024l.p025a.C1435a.AbstractC1442g
        /* renamed from: c */
        public void mo30101c() {
            this.f5773a.start();
        }

        @Override // p020b.p021a.p024l.p025a.C1435a.AbstractC1442g
        /* renamed from: d */
        public void mo30100d() {
            this.f5773a.stop();
        }
    }

    /* renamed from: b.a.l.a.a$e */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/a$e.class */
    public static class C1440e extends AbstractC1442g {

        /* renamed from: a */
        private final ObjectAnimator f5774a;

        /* renamed from: b */
        private final boolean f5775b;

        C1440e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            C1441f c1441f = new C1441f(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(c1441f.m30105a());
            ofInt.setInterpolator(c1441f);
            this.f5775b = z2;
            this.f5774a = ofInt;
        }

        @Override // p020b.p021a.p024l.p025a.C1435a.AbstractC1442g
        /* renamed from: a */
        public boolean mo30103a() {
            return this.f5775b;
        }

        @Override // p020b.p021a.p024l.p025a.C1435a.AbstractC1442g
        /* renamed from: b */
        public void mo30102b() {
            this.f5774a.reverse();
        }

        @Override // p020b.p021a.p024l.p025a.C1435a.AbstractC1442g
        /* renamed from: c */
        public void mo30101c() {
            this.f5774a.start();
        }

        @Override // p020b.p021a.p024l.p025a.C1435a.AbstractC1442g
        /* renamed from: d */
        public void mo30100d() {
            this.f5774a.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.a.l.a.a$f */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/a$f.class */
    public static class C1441f implements TimeInterpolator {

        /* renamed from: a */
        private int[] f5776a;

        /* renamed from: b */
        private int f5777b;

        /* renamed from: c */
        private int f5778c;

        C1441f(AnimationDrawable animationDrawable, boolean z) {
            m30104b(animationDrawable, z);
        }

        /* renamed from: a */
        int m30105a() {
            return this.f5778c;
        }

        /* renamed from: b */
        int m30104b(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f5777b = numberOfFrames;
            int[] iArr = this.f5776a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f5776a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f5776a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f5778c = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.f5778c) + 0.5f);
            int i2 = this.f5777b;
            int[] iArr = this.f5776a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f5778c : 0.0f);
        }
    }

    /* renamed from: b.a.l.a.a$g */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/a$g.class */
    public static abstract class AbstractC1442g {
        private AbstractC1442g() {
        }

        /* renamed from: a */
        public boolean mo30103a() {
            return false;
        }

        /* renamed from: b */
        public void mo30102b() {
        }

        /* renamed from: c */
        public abstract void mo30101c();

        /* renamed from: d */
        public abstract void mo30100d();
    }

    public C1435a() {
        this(null, null);
    }

    C1435a(C1438c c1438c, Resources resources) {
        super(null);
        this.f5767u = -1;
        this.f5768v = -1;
        mo30061h(new C1438c(c1438c, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* renamed from: m */
    public static C1435a m30121m(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            C1435a c1435a = new C1435a();
            c1435a.m30120n(context, resources, xmlPullParser, attributeSet, theme);
            return c1435a;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    /* renamed from: o */
    private void m30119o(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 < depth && next == 3) {
                    return;
                }
                if (next == 2 && depth2 <= depth) {
                    if (xmlPullParser.getName().equals("item")) {
                        m30117q(context, resources, xmlPullParser, attributeSet, theme);
                    } else if (xmlPullParser.getName().equals("transition")) {
                        m30116r(context, resources, xmlPullParser, attributeSet, theme);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: p */
    private void m30118p() {
        onStateChange(getState());
    }

    /* renamed from: q */
    private int m30117q(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1452b.AnimatedStateListDrawableItem);
        int resourceId = m33249k.getResourceId(C1452b.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = m33249k.getResourceId(C1452b.AnimatedStateListDrawableItem_android_drawable, -1);
        C1804i m34736j = resourceId2 > 0 ? C0327v.m34738h().m34736j(context, resourceId2) : null;
        m33249k.recycle();
        int[] m30059k = m30059k(attributeSet);
        C1804i c1804i = m34736j;
        if (m34736j == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            c1804i = xmlPullParser.getName().equals("vector") ? C1804i.m28853c(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (c1804i != null) {
            return this.f5765s.m30113B(m30059k, c1804i, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    /* renamed from: r */
    private int m30116r(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1452b.AnimatedStateListDrawableTransition);
        int resourceId = m33249k.getResourceId(C1452b.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = m33249k.getResourceId(C1452b.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = m33249k.getResourceId(C1452b.AnimatedStateListDrawableTransition_android_drawable, -1);
        C1794c m34736j = resourceId3 > 0 ? C0327v.m34738h().m34736j(context, resourceId3) : null;
        boolean z = m33249k.getBoolean(C1452b.AnimatedStateListDrawableTransition_android_reversible, false);
        m33249k.recycle();
        C1794c c1794c = m34736j;
        if (m34736j == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            c1794c = xmlPullParser.getName().equals("animated-vector") ? C1794c.m28886a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (c1794c == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        } else if (resourceId != -1 && resourceId2 != -1) {
            return this.f5765s.m30112C(resourceId, resourceId2, c1794c, z);
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
    }

    /* renamed from: s */
    private boolean m30115s(int i) {
        int i2;
        int m30108G;
        C1440e c1440e;
        AbstractC1442g abstractC1442g = this.f5766t;
        if (abstractC1442g == null) {
            i2 = m30098c();
        } else if (i == this.f5767u) {
            return true;
        } else {
            if (i == this.f5768v && abstractC1442g.mo30103a()) {
                abstractC1442g.mo30102b();
                this.f5767u = this.f5768v;
                this.f5768v = i;
                return true;
            }
            i2 = this.f5767u;
            abstractC1442g.mo30100d();
        }
        this.f5766t = null;
        this.f5768v = -1;
        this.f5767u = -1;
        C1438c c1438c = this.f5765s;
        int m30110E = c1438c.m30110E(i2);
        int m30110E2 = c1438c.m30110E(i);
        if (m30110E2 == 0 || m30110E == 0 || (m30108G = c1438c.m30108G(m30110E, m30110E2)) < 0) {
            return false;
        }
        boolean m30106I = c1438c.m30106I(m30110E, m30110E2);
        m30094g(m30108G);
        Drawable current = getCurrent();
        if (current instanceof AnimationDrawable) {
            c1440e = new C1440e((AnimationDrawable) current, c1438c.m30107H(m30110E, m30110E2), m30106I);
        } else if (current instanceof C1794c) {
            c1440e = new C1439d((C1794c) current);
        } else if (!(current instanceof Animatable)) {
            return false;
        } else {
            c1440e = new C1437b((Animatable) current);
        }
        c1440e.mo30101c();
        this.f5766t = c1440e;
        this.f5768v = i2;
        this.f5767u = i;
        return true;
    }

    /* renamed from: t */
    private void m30114t(TypedArray typedArray) {
        C1438c c1438c = this.f5765s;
        if (Build.VERSION.SDK_INT >= 21) {
            c1438c.f5805d |= typedArray.getChangingConfigurations();
        }
        c1438c.m30066x(typedArray.getBoolean(C1452b.AnimatedStateListDrawableCompat_android_variablePadding, c1438c.f5810i));
        c1438c.m30070t(typedArray.getBoolean(C1452b.AnimatedStateListDrawableCompat_android_constantSize, c1438c.f5813l));
        c1438c.m30069u(typedArray.getInt(C1452b.AnimatedStateListDrawableCompat_android_enterFadeDuration, c1438c.f5793A));
        c1438c.m30068v(typedArray.getInt(C1452b.AnimatedStateListDrawableCompat_android_exitFadeDuration, c1438c.f5794B));
        setDither(typedArray.getBoolean(C1452b.AnimatedStateListDrawableCompat_android_dither, c1438c.f5825x));
    }

    @Override // p020b.p021a.p024l.p025a.C1449d, p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getOutline(Outline outline) {
        super.getOutline(outline);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // p020b.p021a.p024l.p025a.C1449d, p020b.p021a.p024l.p025a.C1443b
    /* renamed from: h */
    public void mo30061h(C1443b.AbstractC1447d abstractC1447d) {
        super.mo30061h(abstractC1447d);
        if (abstractC1447d instanceof C1438c) {
            this.f5765s = (C1438c) abstractC1447d;
        }
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // p020b.p021a.p024l.p025a.C1449d, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC1442g abstractC1442g = this.f5766t;
        if (abstractC1442g != null) {
            abstractC1442g.mo30100d();
            this.f5766t = null;
            m30094g(this.f5767u);
            this.f5767u = -1;
            this.f5768v = -1;
        }
    }

    /* renamed from: l */
    public C1438c mo30060j() {
        return new C1438c(this.f5765s, this, null);
    }

    @Override // p020b.p021a.p024l.p025a.C1449d, p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f5769w && super.mutate() == this) {
            this.f5765s.mo30056r();
            this.f5769w = true;
        }
        return this;
    }

    /* renamed from: n */
    public void m30120n(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1452b.AnimatedStateListDrawableCompat);
        setVisible(m33249k.getBoolean(C1452b.AnimatedStateListDrawableCompat_android_visible, true), true);
        m30114t(m33249k);
        m30093i(resources);
        m33249k.recycle();
        m30119o(context, resources, xmlPullParser, attributeSet, theme);
        m30118p();
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i) {
        return super.onLayoutDirectionChanged(i);
    }

    @Override // p020b.p021a.p024l.p025a.C1449d, p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int m30109F = this.f5765s.m30109F(iArr);
        boolean z = m30109F != m30098c() && (m30115s(m30109F) || m30094g(m30109F));
        Drawable current = getCurrent();
        boolean z2 = z;
        if (current != null) {
            z2 = z | current.setState(iArr);
        }
        return z2;
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
        super.setAutoMirrored(z);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z) {
        super.setDither(z);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public /* bridge */ /* synthetic */ void setTintMode(PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        AbstractC1442g abstractC1442g = this.f5766t;
        if (abstractC1442g != null && (visible || z2)) {
            if (z) {
                abstractC1442g.mo30101c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }
}
