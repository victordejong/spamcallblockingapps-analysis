package androidx.appcompat.p010b.p011a;

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
import androidx.appcompat.p010b.p011a.C0161b;
import androidx.appcompat.p010b.p011a.C0166d;
import androidx.appcompat.p012c.C0168a;
import androidx.appcompat.widget.C0296af;
import androidx.core.graphics.drawable.AbstractC0536b;
import androidx.core.p017a.p018a.C0453g;
import androidx.p013b.C0378d;
import androidx.p013b.C0387h;
import androidx.p046k.p047a.p048a.C0835c;
import androidx.p046k.p047a.p048a.C0845i;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@SuppressLint({"RestrictedAPI"})
/* renamed from: androidx.appcompat.b.a.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a.class */
public class C0153a extends C0166d implements AbstractC0536b {

    /* renamed from: a */
    private static final String f507a = C0153a.class.getSimpleName();

    /* renamed from: b */
    private C0156b f508b;

    /* renamed from: c */
    private AbstractC0160f f509c;

    /* renamed from: d */
    private int f510d;

    /* renamed from: e */
    private int f511e;

    /* renamed from: f */
    private boolean f512f;

    /* renamed from: androidx.appcompat.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$a.class */
    public static class C0155a extends AbstractC0160f {

        /* renamed from: a */
        private final Animatable f513a;

        C0155a(Animatable animatable) {
            super();
            this.f513a = animatable;
        }

        @Override // androidx.appcompat.p010b.p011a.C0153a.AbstractC0160f
        /* renamed from: a */
        public void mo22044a() {
            this.f513a.start();
        }

        @Override // androidx.appcompat.p010b.p011a.C0153a.AbstractC0160f
        /* renamed from: b */
        public void mo22043b() {
            this.f513a.stop();
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$b.class */
    public static class C0156b extends C0166d.C0167a {

        /* renamed from: a */
        C0378d<Long> f514a;

        /* renamed from: b */
        C0387h<Integer> f515b;

        C0156b(C0156b c0156b, C0153a c0153a, Resources resources) {
            super(c0156b, c0153a, resources);
            if (c0156b != null) {
                this.f514a = c0156b.f514a;
                this.f515b = c0156b.f515b;
                return;
            }
            this.f514a = new C0378d<>();
            this.f515b = new C0387h<>();
        }

        /* renamed from: f */
        private static long m22047f(int i, int i2) {
            return (i << 32) | i2;
        }

        /* renamed from: a */
        int m22054a(int i) {
            return i < 0 ? 0 : this.f515b.m21079a(i, 0).intValue();
        }

        /* renamed from: a */
        int m22053a(int i, int i2) {
            return (int) this.f514a.m21130a(m22047f(i, i2), -1L).longValue();
        }

        /* renamed from: a */
        int m22052a(int i, int i2, Drawable drawable, boolean z) {
            int a = super.m22029a(drawable);
            long m22047f = m22047f(i, i2);
            char c = 0;
            if (z) {
                c = 0;
            }
            this.f514a.m21122c(m22047f, Long.valueOf(a | c));
            if (z) {
                this.f514a.m21122c(m22047f(i2, i), Long.valueOf(c | a | 4294967296L));
            }
            return a;
        }

        /* renamed from: a */
        int m22051a(int[] iArr) {
            int m21996b = super.m21996b(iArr);
            if (m21996b < 0) {
                m21996b = super.m21996b(StateSet.WILD_CARD);
            }
            return m21996b;
        }

        /* renamed from: a */
        int m22050a(int[] iArr, Drawable drawable, int i) {
            int m21997a = super.m21997a(iArr, drawable);
            this.f515b.m21075b(m21997a, Integer.valueOf(i));
            return m21997a;
        }

        @Override // androidx.appcompat.p010b.p011a.C0166d.C0167a, androidx.appcompat.p010b.p011a.C0161b.AbstractC0164b
        /* renamed from: a */
        void mo21998a() {
            this.f514a = this.f514a.clone();
            this.f515b = this.f515b.clone();
        }

        /* renamed from: b */
        boolean m22049b(int i, int i2) {
            return (this.f514a.m21130a(m22047f(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        /* renamed from: c */
        boolean m22048c(int i, int i2) {
            return (this.f514a.m21130a(m22047f(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // androidx.appcompat.p010b.p011a.C0166d.C0167a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0153a(this, null);
        }

        @Override // androidx.appcompat.p010b.p011a.C0166d.C0167a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0153a(this, resources);
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$c.class */
    public static class C0157c extends AbstractC0160f {

        /* renamed from: a */
        private final C0835c f516a;

        C0157c(C0835c c0835c) {
            super();
            this.f516a = c0835c;
        }

        @Override // androidx.appcompat.p010b.p011a.C0153a.AbstractC0160f
        /* renamed from: a */
        public void mo22044a() {
            this.f516a.start();
        }

        @Override // androidx.appcompat.p010b.p011a.C0153a.AbstractC0160f
        /* renamed from: b */
        public void mo22043b() {
            this.f516a.stop();
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$d.class */
    public static class C0158d extends AbstractC0160f {

        /* renamed from: a */
        private final ObjectAnimator f517a;

        /* renamed from: b */
        private final boolean f518b;

        C0158d(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            C0159e c0159e = new C0159e(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(c0159e.m22046a());
            ofInt.setInterpolator(c0159e);
            this.f518b = z2;
            this.f517a = ofInt;
        }

        @Override // androidx.appcompat.p010b.p011a.C0153a.AbstractC0160f
        /* renamed from: a */
        public void mo22044a() {
            this.f517a.start();
        }

        @Override // androidx.appcompat.p010b.p011a.C0153a.AbstractC0160f
        /* renamed from: b */
        public void mo22043b() {
            this.f517a.cancel();
        }

        @Override // androidx.appcompat.p010b.p011a.C0153a.AbstractC0160f
        /* renamed from: c */
        public boolean mo22042c() {
            return this.f518b;
        }

        @Override // androidx.appcompat.p010b.p011a.C0153a.AbstractC0160f
        /* renamed from: d */
        public void mo22041d() {
            this.f517a.reverse();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.b.a.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$e.class */
    public static class C0159e implements TimeInterpolator {

        /* renamed from: a */
        private int[] f519a;

        /* renamed from: b */
        private int f520b;

        /* renamed from: c */
        private int f521c;

        C0159e(AnimationDrawable animationDrawable, boolean z) {
            m22045a(animationDrawable, z);
        }

        /* renamed from: a */
        int m22046a() {
            return this.f521c;
        }

        /* renamed from: a */
        int m22045a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f520b = numberOfFrames;
            if (this.f519a == null || this.f519a.length < numberOfFrames) {
                this.f519a = new int[numberOfFrames];
            }
            int[] iArr = this.f519a;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= numberOfFrames) {
                    this.f521c = i3;
                    return i3;
                }
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i) - 1 : i);
                iArr[i] = duration;
                i++;
                i2 = duration + i3;
            }
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((this.f521c * f) + 0.5f);
            int i2 = this.f520b;
            int[] iArr = this.f519a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 < i2 ? i / this.f521c : 0.0f) + (i3 / i2);
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$f.class */
    public static abstract class AbstractC0160f {
        private AbstractC0160f() {
        }

        /* renamed from: a */
        public abstract void mo22044a();

        /* renamed from: b */
        public abstract void mo22043b();

        /* renamed from: c */
        public boolean mo22042c() {
            return false;
        }

        /* renamed from: d */
        public void mo22041d() {
        }
    }

    public C0153a() {
        this(null, null);
    }

    C0153a(C0156b c0156b, Resources resources) {
        super(null);
        this.f510d = -1;
        this.f511e = -1;
        mo22002a(new C0156b(c0156b, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* renamed from: a */
    public static C0153a m22061a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (!name.equals("animated-selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
        C0153a c0153a = new C0153a();
        c0153a.mo22000b(context, resources, xmlPullParser, attributeSet, theme);
        return c0153a;
    }

    /* renamed from: a */
    private void m22060a(TypedArray typedArray) {
        C0156b c0156b = this.f508b;
        if (Build.VERSION.SDK_INT >= 21) {
            c0156b.f551f |= typedArray.getChangingConfigurations();
        }
        c0156b.m22028a(typedArray.getBoolean(C0168a.C0170b.AnimatedStateListDrawableCompat_android_variablePadding, c0156b.f556k));
        c0156b.m22024b(typedArray.getBoolean(C0168a.C0170b.AnimatedStateListDrawableCompat_android_constantSize, c0156b.f559n));
        c0156b.m22022c(typedArray.getInt(C0168a.C0170b.AnimatedStateListDrawableCompat_android_enterFadeDuration, c0156b.f539C));
        c0156b.m22020d(typedArray.getInt(C0168a.C0170b.AnimatedStateListDrawableCompat_android_exitFadeDuration, c0156b.f540D));
        setDither(typedArray.getBoolean(C0168a.C0170b.AnimatedStateListDrawableCompat_android_dither, c0156b.f571z));
    }

    /* renamed from: b */
    private boolean m22059b(int i) {
        int d;
        boolean z;
        AbstractC0160f c0155a;
        AbstractC0160f abstractC0160f = this.f509c;
        if (abstractC0160f != null) {
            if (i == this.f510d) {
                z = true;
            } else if (i != this.f511e || !abstractC0160f.mo22042c()) {
                d = this.f510d;
                abstractC0160f.mo22043b();
            } else {
                abstractC0160f.mo22041d();
                this.f510d = this.f511e;
                this.f511e = i;
                z = true;
            }
            return z;
        }
        d = m22034d();
        this.f509c = null;
        this.f511e = -1;
        this.f510d = -1;
        C0156b c0156b = this.f508b;
        int m22054a = c0156b.m22054a(d);
        int m22054a2 = c0156b.m22054a(i);
        if (m22054a2 == 0 || m22054a == 0) {
            z = false;
        } else {
            int m22053a = c0156b.m22053a(m22054a, m22054a2);
            if (m22053a < 0) {
                z = false;
            } else {
                boolean m22048c = c0156b.m22048c(m22054a, m22054a2);
                m22039a(m22053a);
                Drawable current = getCurrent();
                if (current instanceof AnimationDrawable) {
                    c0155a = new C0158d((AnimationDrawable) current, c0156b.m22049b(m22054a, m22054a2), m22048c);
                } else if (current instanceof C0835c) {
                    c0155a = new C0157c((C0835c) current);
                } else if (current instanceof Animatable) {
                    c0155a = new C0155a((Animatable) current);
                } else {
                    z = false;
                }
                c0155a.mo22044a();
                this.f509c = c0155a;
                this.f511e = d;
                this.f510d = i;
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    private void m22058c(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
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
                        m22055e(context, resources, xmlPullParser, attributeSet, theme);
                    } else if (xmlPullParser.getName().equals("transition")) {
                        m22057d(context, resources, xmlPullParser, attributeSet, theme);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    private int m22057d(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0168a.C0170b.AnimatedStateListDrawableTransition);
        int resourceId = m20840a.getResourceId(C0168a.C0170b.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = m20840a.getResourceId(C0168a.C0170b.AnimatedStateListDrawableTransition_android_toId, -1);
        C0835c c0835c = null;
        int resourceId3 = m20840a.getResourceId(C0168a.C0170b.AnimatedStateListDrawableTransition_android_drawable, -1);
        if (resourceId3 > 0) {
            c0835c = C0296af.m21513a().m21509a(context, resourceId3);
        }
        boolean z = m20840a.getBoolean(C0168a.C0170b.AnimatedStateListDrawableTransition_android_reversible, false);
        m20840a.recycle();
        C0835c c0835c2 = c0835c;
        if (c0835c == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            c0835c2 = xmlPullParser.getName().equals("animated-vector") ? C0835c.m19322a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (c0835c2 == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        }
        if (resourceId != -1 && resourceId2 != -1) {
            return this.f508b.m22052a(resourceId, resourceId2, c0835c2, z);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
    }

    /* renamed from: e */
    private int m22055e(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0168a.C0170b.AnimatedStateListDrawableItem);
        int resourceId = m20840a.getResourceId(C0168a.C0170b.AnimatedStateListDrawableItem_android_id, 0);
        C0845i c0845i = null;
        int resourceId2 = m20840a.getResourceId(C0168a.C0170b.AnimatedStateListDrawableItem_android_drawable, -1);
        if (resourceId2 > 0) {
            c0845i = C0296af.m21513a().m21509a(context, resourceId2);
        }
        m20840a.recycle();
        int[] a = m22003a(attributeSet);
        C0845i c0845i2 = c0845i;
        if (c0845i == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            c0845i2 = xmlPullParser.getName().equals("vector") ? C0845i.m19288a(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (c0845i2 == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
        }
        return this.f508b.m22050a(a, c0845i2, resourceId);
    }

    /* renamed from: e */
    private void m22056e() {
        onStateChange(getState());
    }

    /* renamed from: a */
    public C0156b mo21999c() {
        return new C0156b(this.f508b, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.p010b.p011a.C0166d, androidx.appcompat.p010b.p011a.C0161b
    /* renamed from: a */
    public void mo22002a(C0161b.AbstractC0164b abstractC0164b) {
        super.mo22002a(abstractC0164b);
        if (abstractC0164b instanceof C0156b) {
            this.f508b = (C0156b) abstractC0164b;
        }
    }

    @Override // androidx.appcompat.p010b.p011a.C0166d, androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.appcompat.p010b.p011a.C0166d
    /* renamed from: b */
    public void mo22000b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0168a.C0170b.AnimatedStateListDrawableCompat);
        setVisible(m20840a.getBoolean(C0168a.C0170b.AnimatedStateListDrawableCompat_android_visible, true), true);
        m22060a(m20840a);
        m22038a(resources);
        m20840a.recycle();
        m22058c(context, resources, xmlPullParser, attributeSet, theme);
        m22056e();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getOutline(Outline outline) {
        super.getOutline(outline);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // androidx.appcompat.p010b.p011a.C0166d, androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        if (this.f509c != null) {
            this.f509c.mo22043b();
            this.f509c = null;
            m22039a(this.f510d);
            this.f510d = -1;
            this.f511e = -1;
        }
    }

    @Override // androidx.appcompat.p010b.p011a.C0166d, androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f512f && super.mutate() == this) {
            this.f508b.mo21998a();
            this.f512f = true;
        }
        return this;
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i) {
        return super.onLayoutDirectionChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.p010b.p011a.C0166d, androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int m22051a = this.f508b.m22051a(iArr);
        boolean z = m22051a != m22034d() && (m22059b(m22051a) || m22039a(m22051a));
        Drawable current = getCurrent();
        boolean z2 = z;
        if (current != null) {
            z2 = z | current.setState(iArr);
        }
        return z2;
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
        super.setAutoMirrored(z);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z) {
        super.setDither(z);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public /* bridge */ /* synthetic */ void setTintMode(PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.f509c != null && (visible || z2)) {
            if (z) {
                this.f509c.mo22044a();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    @Override // androidx.appcompat.p010b.p011a.C0161b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }
}
