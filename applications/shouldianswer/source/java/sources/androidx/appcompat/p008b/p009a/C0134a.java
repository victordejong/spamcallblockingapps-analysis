package androidx.appcompat.p008b.p009a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
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
import androidx.appcompat.p008b.p009a.C0142b;
import androidx.appcompat.p008b.p009a.C0148e;
import androidx.appcompat.p010c.C0150a;
import androidx.appcompat.widget.C0290ai;
import androidx.core.graphics.drawable.AbstractC0576b;
import androidx.core.p015a.p016a.C0424g;
import androidx.p014c.C0379d;
import androidx.p014c.C0388h;
import androidx.p046k.p047a.p048a.C0865c;
import androidx.p046k.p047a.p048a.C0875i;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.b.a.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a.class */
public class C0134a extends C0148e implements AbstractC0576b {

    /* renamed from: a */
    private static final String f442a = C0134a.class.getSimpleName();

    /* renamed from: b */
    private C0137b f443b;

    /* renamed from: c */
    private AbstractC0141f f444c;

    /* renamed from: d */
    private int f445d;

    /* renamed from: e */
    private int f446e;

    /* renamed from: f */
    private boolean f447f;

    /* renamed from: androidx.appcompat.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$a.class */
    public static class C0136a extends AbstractC0141f {

        /* renamed from: a */
        private final Animatable f448a;

        C0136a(Animatable animatable) {
            super();
            this.f448a = animatable;
        }

        @Override // androidx.appcompat.p008b.p009a.C0134a.AbstractC0141f
        /* renamed from: a */
        public void mo7718a() {
            this.f448a.start();
        }

        @Override // androidx.appcompat.p008b.p009a.C0134a.AbstractC0141f
        /* renamed from: b */
        public void mo7717b() {
            this.f448a.stop();
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$b.class */
    public static class C0137b extends C0148e.C0149a {

        /* renamed from: a */
        C0379d<Long> f449a;

        /* renamed from: b */
        C0388h<Integer> f450b;

        C0137b(C0137b c0137b, C0134a c0134a, Resources resources) {
            super(c0137b, c0134a, resources);
            if (c0137b != null) {
                this.f449a = c0137b.f449a;
                this.f450b = c0137b.f450b;
                return;
            }
            this.f449a = new C0379d<>();
            this.f450b = new C0388h<>();
        }

        /* renamed from: f */
        private static long m7721f(int i, int i2) {
            return i2 | (i << 32);
        }

        /* renamed from: a */
        int m7728a(int i) {
            return i < 0 ? 0 : this.f450b.m6804a(i, 0).intValue();
        }

        /* renamed from: a */
        int m7727a(int i, int i2) {
            return (int) this.f449a.m6851a(m7721f(i, i2), -1L).longValue();
        }

        /* renamed from: a */
        int m7726a(int i, int i2, Drawable drawable, boolean z) {
            int a = super.m7703a(drawable);
            long m7721f = m7721f(i, i2);
            char c = z ? (char) 0 : (char) 0;
            long j = a;
            this.f449a.m6843c(m7721f, Long.valueOf(j | c));
            if (z) {
                this.f449a.m6843c(m7721f(i2, i), Long.valueOf(4294967296L | j | c));
            }
            return a;
        }

        /* renamed from: a */
        int m7725a(int[] iArr) {
            int m7665b = super.m7665b(iArr);
            return m7665b >= 0 ? m7665b : super.m7665b(StateSet.WILD_CARD);
        }

        /* renamed from: a */
        int m7724a(int[] iArr, Drawable drawable, int i) {
            int m7666a = super.m7666a(iArr, drawable);
            this.f450b.m6800b(m7666a, Integer.valueOf(i));
            return m7666a;
        }

        @Override // androidx.appcompat.p008b.p009a.C0148e.C0149a, androidx.appcompat.p008b.p009a.C0142b.AbstractC0145b
        /* renamed from: a */
        void mo7667a() {
            this.f449a = this.f449a.clone();
            this.f450b = this.f450b.clone();
        }

        /* renamed from: b */
        boolean m7723b(int i, int i2) {
            return (this.f449a.m6851a(m7721f(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        /* renamed from: c */
        boolean m7722c(int i, int i2) {
            return (this.f449a.m6851a(m7721f(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // androidx.appcompat.p008b.p009a.C0148e.C0149a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0134a(this, null);
        }

        @Override // androidx.appcompat.p008b.p009a.C0148e.C0149a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0134a(this, resources);
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$c.class */
    public static class C0138c extends AbstractC0141f {

        /* renamed from: a */
        private final C0865c f451a;

        C0138c(C0865c c0865c) {
            super();
            this.f451a = c0865c;
        }

        @Override // androidx.appcompat.p008b.p009a.C0134a.AbstractC0141f
        /* renamed from: a */
        public void mo7718a() {
            this.f451a.start();
        }

        @Override // androidx.appcompat.p008b.p009a.C0134a.AbstractC0141f
        /* renamed from: b */
        public void mo7717b() {
            this.f451a.stop();
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$d.class */
    public static class C0139d extends AbstractC0141f {

        /* renamed from: a */
        private final ObjectAnimator f452a;

        /* renamed from: b */
        private final boolean f453b;

        C0139d(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            C0140e c0140e = new C0140e(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(c0140e.m7720a());
            ofInt.setInterpolator(c0140e);
            this.f453b = z2;
            this.f452a = ofInt;
        }

        @Override // androidx.appcompat.p008b.p009a.C0134a.AbstractC0141f
        /* renamed from: a */
        public void mo7718a() {
            this.f452a.start();
        }

        @Override // androidx.appcompat.p008b.p009a.C0134a.AbstractC0141f
        /* renamed from: b */
        public void mo7717b() {
            this.f452a.cancel();
        }

        @Override // androidx.appcompat.p008b.p009a.C0134a.AbstractC0141f
        /* renamed from: c */
        public boolean mo7716c() {
            return this.f453b;
        }

        @Override // androidx.appcompat.p008b.p009a.C0134a.AbstractC0141f
        /* renamed from: d */
        public void mo7715d() {
            this.f452a.reverse();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.b.a.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$e.class */
    public static class C0140e implements TimeInterpolator {

        /* renamed from: a */
        private int[] f454a;

        /* renamed from: b */
        private int f455b;

        /* renamed from: c */
        private int f456c;

        C0140e(AnimationDrawable animationDrawable, boolean z) {
            m7719a(animationDrawable, z);
        }

        /* renamed from: a */
        int m7720a() {
            return this.f456c;
        }

        /* renamed from: a */
        int m7719a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f455b = numberOfFrames;
            int[] iArr = this.f454a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f454a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f454a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f456c = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.f456c) + 0.5f);
            int i2 = this.f455b;
            int[] iArr = this.f454a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f456c : 0.0f);
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$f.class */
    public static abstract class AbstractC0141f {
        private AbstractC0141f() {
        }

        /* renamed from: a */
        public abstract void mo7718a();

        /* renamed from: b */
        public abstract void mo7717b();

        /* renamed from: c */
        public boolean mo7716c() {
            return false;
        }

        /* renamed from: d */
        public void mo7715d() {
        }
    }

    public C0134a() {
        this(null, null);
    }

    C0134a(C0137b c0137b, Resources resources) {
        super(null);
        this.f445d = -1;
        this.f446e = -1;
        mo7671a(new C0137b(c0137b, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* renamed from: a */
    public static C0134a m7735a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            C0134a c0134a = new C0134a();
            c0134a.mo7669b(context, resources, xmlPullParser, attributeSet, theme);
            return c0134a;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    /* renamed from: a */
    private void m7734a(TypedArray typedArray) {
        C0137b c0137b = this.f443b;
        if (Build.VERSION.SDK_INT >= 21) {
            c0137b.f486f |= typedArray.getChangingConfigurations();
        }
        c0137b.m7702a(typedArray.getBoolean(C0150a.C0152b.AnimatedStateListDrawableCompat_android_variablePadding, c0137b.f491k));
        c0137b.m7698b(typedArray.getBoolean(C0150a.C0152b.AnimatedStateListDrawableCompat_android_constantSize, c0137b.f494n));
        c0137b.m7696c(typedArray.getInt(C0150a.C0152b.AnimatedStateListDrawableCompat_android_enterFadeDuration, c0137b.f474C));
        c0137b.m7694d(typedArray.getInt(C0150a.C0152b.AnimatedStateListDrawableCompat_android_exitFadeDuration, c0137b.f475D));
        setDither(typedArray.getBoolean(C0150a.C0152b.AnimatedStateListDrawableCompat_android_dither, c0137b.f506z));
    }

    /* renamed from: b */
    private boolean m7733b(int i) {
        int i2;
        int m7727a;
        C0139d c0139d;
        AbstractC0141f abstractC0141f = this.f444c;
        if (abstractC0141f == null) {
            i2 = m7708d();
        } else if (i == this.f445d) {
            return true;
        } else {
            if (i == this.f446e && abstractC0141f.mo7716c()) {
                abstractC0141f.mo7715d();
                this.f445d = this.f446e;
                this.f446e = i;
                return true;
            }
            i2 = this.f445d;
            abstractC0141f.mo7717b();
        }
        this.f444c = null;
        this.f446e = -1;
        this.f445d = -1;
        C0137b c0137b = this.f443b;
        int m7728a = c0137b.m7728a(i2);
        int m7728a2 = c0137b.m7728a(i);
        if (m7728a2 == 0 || m7728a == 0 || (m7727a = c0137b.m7727a(m7728a, m7728a2)) < 0) {
            return false;
        }
        boolean m7722c = c0137b.m7722c(m7728a, m7728a2);
        m7713a(m7727a);
        Drawable current = getCurrent();
        if (current instanceof AnimationDrawable) {
            c0139d = new C0139d((AnimationDrawable) current, c0137b.m7723b(m7728a, m7728a2), m7722c);
        } else if (current instanceof C0865c) {
            c0139d = new C0138c((C0865c) current);
        } else if (!(current instanceof Animatable)) {
            return false;
        } else {
            c0139d = new C0136a((Animatable) current);
        }
        c0139d.mo7718a();
        this.f444c = c0139d;
        this.f446e = i2;
        this.f445d = i;
        return true;
    }

    /* renamed from: c */
    private void m7732c(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
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
                        m7729e(context, resources, xmlPullParser, attributeSet, theme);
                    } else if (xmlPullParser.getName().equals("transition")) {
                        m7731d(context, resources, xmlPullParser, attributeSet, theme);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    private int m7731d(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0150a.C0152b.AnimatedStateListDrawableTransition);
        int resourceId = m6696a.getResourceId(C0150a.C0152b.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = m6696a.getResourceId(C0150a.C0152b.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = m6696a.getResourceId(C0150a.C0152b.AnimatedStateListDrawableTransition_android_drawable, -1);
        C0865c m7232a = resourceId3 > 0 ? C0290ai.m7236a().m7232a(context, resourceId3) : null;
        boolean z = m6696a.getBoolean(C0150a.C0152b.AnimatedStateListDrawableTransition_android_reversible, false);
        m6696a.recycle();
        C0865c c0865c = m7232a;
        if (m7232a == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            c0865c = xmlPullParser.getName().equals("animated-vector") ? C0865c.m5209a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (c0865c == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        } else if (resourceId != -1 && resourceId2 != -1) {
            return this.f443b.m7726a(resourceId, resourceId2, c0865c, z);
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
    }

    /* renamed from: e */
    private int m7729e(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0150a.C0152b.AnimatedStateListDrawableItem);
        int resourceId = m6696a.getResourceId(C0150a.C0152b.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = m6696a.getResourceId(C0150a.C0152b.AnimatedStateListDrawableItem_android_drawable, -1);
        C0875i m7232a = resourceId2 > 0 ? C0290ai.m7236a().m7232a(context, resourceId2) : null;
        m6696a.recycle();
        int[] a = m7672a(attributeSet);
        C0875i c0875i = m7232a;
        if (m7232a == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            c0875i = xmlPullParser.getName().equals("vector") ? C0875i.m5175a(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (c0875i != null) {
            return this.f443b.m7724a(a, c0875i, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    /* renamed from: e */
    private void m7730e() {
        onStateChange(getState());
    }

    /* renamed from: a */
    public C0137b mo7668c() {
        return new C0137b(this.f443b, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.p008b.p009a.C0148e, androidx.appcompat.p008b.p009a.C0142b
    /* renamed from: a */
    public void mo7671a(C0142b.AbstractC0145b abstractC0145b) {
        super.mo7671a(abstractC0145b);
        if (abstractC0145b instanceof C0137b) {
            this.f443b = (C0137b) abstractC0145b;
        }
    }

    @Override // androidx.appcompat.p008b.p009a.C0148e, androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.appcompat.p008b.p009a.C0148e
    /* renamed from: b */
    public void mo7669b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0150a.C0152b.AnimatedStateListDrawableCompat);
        setVisible(m6696a.getBoolean(C0150a.C0152b.AnimatedStateListDrawableCompat_android_visible, true), true);
        m7734a(m6696a);
        m7712a(resources);
        m6696a.recycle();
        m7732c(context, resources, xmlPullParser, attributeSet, theme);
        m7730e();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getOutline(Outline outline) {
        super.getOutline(outline);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // androidx.appcompat.p008b.p009a.C0148e, androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC0141f abstractC0141f = this.f444c;
        if (abstractC0141f != null) {
            abstractC0141f.mo7717b();
            this.f444c = null;
            m7713a(this.f445d);
            this.f445d = -1;
            this.f446e = -1;
        }
    }

    @Override // androidx.appcompat.p008b.p009a.C0148e, androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f447f && super.mutate() == this) {
            this.f443b.mo7667a();
            this.f447f = true;
        }
        return this;
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i) {
        return super.onLayoutDirectionChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.p008b.p009a.C0148e, androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int m7725a = this.f443b.m7725a(iArr);
        boolean z = m7725a != m7708d() && (m7733b(m7725a) || m7713a(m7725a));
        Drawable current = getCurrent();
        boolean z2 = z;
        if (current != null) {
            z2 = z | current.setState(iArr);
        }
        return z2;
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
        super.setAutoMirrored(z);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z) {
        super.setDither(z);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public /* bridge */ /* synthetic */ void setTintMode(PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.f444c != null && (visible || z2)) {
            if (z) {
                this.f444c.mo7718a();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    @Override // androidx.appcompat.p008b.p009a.C0142b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }
}
