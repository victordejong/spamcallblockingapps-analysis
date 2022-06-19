package androidx.appcompat.p019b.p020a;

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
import androidx.appcompat.p019b.p020a.C0228b;
import androidx.appcompat.p019b.p020a.C0234e;
import androidx.appcompat.p021c.C0236a;
import androidx.appcompat.widget.C0414t;
import androidx.core.content.res.C0810g;
import androidx.core.graphics.drawable.AbstractC0841b;
import androidx.p023b.C0433d;
import androidx.p023b.C0442h;
import androidx.p057l.p058a.p059a.C1198c;
import androidx.p057l.p058a.p059a.C1208i;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.b.a.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a.class */
public class C0220a extends C0234e implements AbstractC0841b {

    /* renamed from: a */
    private static final String f608a = "a";

    /* renamed from: b */
    private C0223b f609b;

    /* renamed from: c */
    private AbstractC0227f f610c;

    /* renamed from: d */
    private int f611d;

    /* renamed from: e */
    private int f612e;

    /* renamed from: f */
    private boolean f613f;

    /* renamed from: androidx.appcompat.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$a.class */
    public static final class C0222a extends AbstractC0227f {

        /* renamed from: a */
        private final Animatable f614a;

        C0222a(Animatable animatable) {
            super();
            this.f614a = animatable;
        }

        @Override // androidx.appcompat.p019b.p020a.C0220a.AbstractC0227f
        /* renamed from: a */
        public final void mo46201a() {
            this.f614a.start();
        }

        @Override // androidx.appcompat.p019b.p020a.C0220a.AbstractC0227f
        /* renamed from: b */
        public final void mo46200b() {
            this.f614a.stop();
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$b.class */
    public static final class C0223b extends C0234e.C0235a {

        /* renamed from: a */
        C0433d<Long> f615a;

        /* renamed from: b */
        C0442h<Integer> f616b;

        C0223b(C0223b c0223b, C0220a c0220a, Resources resources) {
            super(c0223b, c0220a, resources);
            if (c0223b != null) {
                this.f615a = c0223b.f615a;
                this.f616b = c0223b.f616b;
                return;
            }
            this.f615a = new C0433d<>();
            this.f616b = new C0442h<>();
        }

        /* renamed from: a */
        static long m46206a(int i, int i2) {
            return i2 | (i << 32);
        }

        /* renamed from: a */
        final int m46207a(int i) {
            if (i < 0) {
                return 0;
            }
            return this.f616b.m45511a(i, 0).intValue();
        }

        /* renamed from: a */
        final int m46205a(int i, int i2, Drawable drawable, boolean z) {
            int a = super.m46189a(drawable);
            long m46206a = m46206a(i, i2);
            char c = z ? (char) 0 : (char) 0;
            long j = a;
            this.f615a.m45541c(m46206a, Long.valueOf(j | c));
            if (z) {
                this.f615a.m45541c(m46206a(i2, i), Long.valueOf(4294967296L | j | c));
            }
            return a;
        }

        /* renamed from: a */
        final int m46204a(int[] iArr) {
            int m46175b = super.m46175b(iArr);
            return m46175b >= 0 ? m46175b : super.m46175b(StateSet.WILD_CARD);
        }

        /* renamed from: a */
        final int m46203a(int[] iArr, Drawable drawable, int i) {
            int a = m46189a(drawable);
            this.f688L[a] = iArr;
            this.f616b.m45507b(a, Integer.valueOf(i));
            return a;
        }

        @Override // androidx.appcompat.p019b.p020a.C0234e.C0235a, androidx.appcompat.p019b.p020a.C0228b.AbstractC0231b
        /* renamed from: a */
        final void mo46177a() {
            this.f615a = this.f615a.clone();
            this.f616b = this.f616b.clone();
        }

        @Override // androidx.appcompat.p019b.p020a.C0234e.C0235a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C0220a(this, null);
        }

        @Override // androidx.appcompat.p019b.p020a.C0234e.C0235a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new C0220a(this, resources);
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$c.class */
    public static final class C0224c extends AbstractC0227f {

        /* renamed from: a */
        private final C1198c f617a;

        C0224c(C1198c c1198c) {
            super();
            this.f617a = c1198c;
        }

        @Override // androidx.appcompat.p019b.p020a.C0220a.AbstractC0227f
        /* renamed from: a */
        public final void mo46201a() {
            this.f617a.start();
        }

        @Override // androidx.appcompat.p019b.p020a.C0220a.AbstractC0227f
        /* renamed from: b */
        public final void mo46200b() {
            this.f617a.stop();
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$d.class */
    public static final class C0225d extends AbstractC0227f {

        /* renamed from: a */
        private final ObjectAnimator f618a;

        /* renamed from: b */
        private final boolean f619b;

        C0225d(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            C0226e c0226e = new C0226e(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(c0226e.f620a);
            ofInt.setInterpolator(c0226e);
            this.f619b = z2;
            this.f618a = ofInt;
        }

        @Override // androidx.appcompat.p019b.p020a.C0220a.AbstractC0227f
        /* renamed from: a */
        public final void mo46201a() {
            this.f618a.start();
        }

        @Override // androidx.appcompat.p019b.p020a.C0220a.AbstractC0227f
        /* renamed from: b */
        public final void mo46200b() {
            this.f618a.cancel();
        }

        @Override // androidx.appcompat.p019b.p020a.C0220a.AbstractC0227f
        /* renamed from: c */
        public final boolean mo46199c() {
            return this.f619b;
        }

        @Override // androidx.appcompat.p019b.p020a.C0220a.AbstractC0227f
        /* renamed from: d */
        public final void mo46198d() {
            this.f618a.reverse();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.b.a.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$e.class */
    public static final class C0226e implements TimeInterpolator {

        /* renamed from: a */
        int f620a;

        /* renamed from: b */
        private int[] f621b;

        /* renamed from: c */
        private int f622c;

        C0226e(AnimationDrawable animationDrawable, boolean z) {
            m46202a(animationDrawable, z);
        }

        /* renamed from: a */
        private int m46202a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f622c = numberOfFrames;
            int[] iArr = this.f621b;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f621b = new int[numberOfFrames];
            }
            int[] iArr2 = this.f621b;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f620a = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            int i = (int) ((f * this.f620a) + 0.5f);
            int i2 = this.f622c;
            int[] iArr = this.f621b;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f620a : 0.0f);
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$f.class */
    public static abstract class AbstractC0227f {
        private AbstractC0227f() {
        }

        /* renamed from: a */
        public abstract void mo46201a();

        /* renamed from: b */
        public abstract void mo46200b();

        /* renamed from: c */
        public boolean mo46199c() {
            return false;
        }

        /* renamed from: d */
        public void mo46198d() {
        }
    }

    public C0220a() {
        this(null, null);
    }

    C0220a(C0223b c0223b, Resources resources) {
        super(null);
        this.f611d = -1;
        this.f612e = -1;
        mo46179a(new C0223b(c0223b, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* renamed from: a */
    public static C0220a m46211a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (!name.equals("animated-selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
        C0220a c0220a = new C0220a();
        TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C0236a.C0238b.AnimatedStateListDrawableCompat);
        c0220a.setVisible(m44459a.getBoolean(C0236a.C0238b.AnimatedStateListDrawableCompat_android_visible, true), true);
        C0223b c0223b = c0220a.f609b;
        if (Build.VERSION.SDK_INT >= 21) {
            c0223b.f651f |= m44459a.getChangingConfigurations();
        }
        c0223b.f656k = m44459a.getBoolean(C0236a.C0238b.AnimatedStateListDrawableCompat_android_variablePadding, c0223b.f656k);
        c0223b.f659n = m44459a.getBoolean(C0236a.C0238b.AnimatedStateListDrawableCompat_android_constantSize, c0223b.f659n);
        c0223b.f639C = m44459a.getInt(C0236a.C0238b.AnimatedStateListDrawableCompat_android_enterFadeDuration, c0223b.f639C);
        c0223b.f640D = m44459a.getInt(C0236a.C0238b.AnimatedStateListDrawableCompat_android_exitFadeDuration, c0223b.f640D);
        c0220a.setDither(m44459a.getBoolean(C0236a.C0238b.AnimatedStateListDrawableCompat_android_dither, c0223b.f671z));
        c0220a.m46196a(resources);
        m44459a.recycle();
        c0220a.m46210b(context, resources, xmlPullParser, attributeSet, theme);
        c0220a.onStateChange(c0220a.getState());
        return c0220a;
    }

    /* renamed from: b */
    private void m46210b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i;
        int next;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 < depth && next2 == 3) {
                    return;
                }
                if (next2 == 2 && depth2 <= depth) {
                    if (xmlPullParser.getName().equals("item")) {
                        TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C0236a.C0238b.AnimatedStateListDrawableItem);
                        int resourceId = m44459a.getResourceId(C0236a.C0238b.AnimatedStateListDrawableItem_android_id, 0);
                        C1208i c1208i = null;
                        int resourceId2 = m44459a.getResourceId(C0236a.C0238b.AnimatedStateListDrawableItem_android_drawable, -1);
                        if (resourceId2 > 0) {
                            c1208i = C0414t.m45610a().m45606a(context, resourceId2);
                        }
                        m44459a.recycle();
                        int attributeCount = attributeSet.getAttributeCount();
                        int[] iArr = new int[attributeCount];
                        int i2 = 0;
                        int i3 = 0;
                        while (true) {
                            i = i3;
                            if (i2 >= attributeCount) {
                                break;
                            }
                            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                            int i4 = i;
                            if (attributeNameResource != 0) {
                                i4 = i;
                                if (attributeNameResource != 16842960) {
                                    i4 = i;
                                    if (attributeNameResource != 16843161) {
                                        iArr[i] = attributeSet.getAttributeBooleanValue(i2, false) ? attributeNameResource : -attributeNameResource;
                                        i4 = i + 1;
                                    }
                                }
                            }
                            i2++;
                            i3 = i4;
                        }
                        int[] trimStateSet = StateSet.trimStateSet(iArr, i);
                        C1208i c1208i2 = c1208i;
                        if (c1208i == null) {
                            do {
                                next = xmlPullParser.next();
                            } while (next == 4);
                            if (next != 2) {
                                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                            }
                            c1208i2 = xmlPullParser.getName().equals("vector") ? C1208i.m43354a(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                        }
                        if (c1208i2 == null) {
                            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                        this.f609b.m46203a(trimStateSet, c1208i2, resourceId);
                    } else if (xmlPullParser.getName().equals("transition")) {
                        m46209c(context, resources, xmlPullParser, attributeSet, theme);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    private int m46209c(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C0236a.C0238b.AnimatedStateListDrawableTransition);
        int resourceId = m44459a.getResourceId(C0236a.C0238b.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = m44459a.getResourceId(C0236a.C0238b.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = m44459a.getResourceId(C0236a.C0238b.AnimatedStateListDrawableTransition_android_drawable, -1);
        C1198c m45606a = resourceId3 > 0 ? C0414t.m45610a().m45606a(context, resourceId3) : null;
        boolean z = m44459a.getBoolean(C0236a.C0238b.AnimatedStateListDrawableTransition_android_reversible, false);
        m44459a.recycle();
        C1198c c1198c = m45606a;
        if (m45606a == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            c1198c = xmlPullParser.getName().equals("animated-vector") ? C1198c.m43373a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (c1198c == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        } else if (resourceId != -1 && resourceId2 != -1) {
            return this.f609b.m46205a(resourceId, resourceId2, c1198c, z);
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
    }

    /* renamed from: d */
    public C0223b mo46178b() {
        return new C0223b(this.f609b, this, null);
    }

    @Override // androidx.appcompat.p019b.p020a.C0234e, androidx.appcompat.p019b.p020a.C0228b
    /* renamed from: a */
    public final void mo46179a(C0228b.AbstractC0231b abstractC0231b) {
        super.mo46179a(abstractC0231b);
        if (abstractC0231b instanceof C0223b) {
            this.f609b = (C0223b) abstractC0231b;
        }
    }

    @Override // androidx.appcompat.p019b.p020a.C0234e, androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getOutline(Outline outline) {
        super.getOutline(outline);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // androidx.appcompat.p019b.p020a.C0234e, androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC0227f abstractC0227f = this.f610c;
        if (abstractC0227f != null) {
            abstractC0227f.mo46200b();
            this.f610c = null;
            m46197a(this.f611d);
            this.f611d = -1;
            this.f612e = -1;
        }
    }

    @Override // androidx.appcompat.p019b.p020a.C0234e, androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f613f && super.mutate() == this) {
            this.f609b.mo46177a();
            this.f613f = true;
        }
        return this;
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i) {
        return super.onLayoutDirectionChanged(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bf  */
    @Override // androidx.appcompat.p019b.p020a.C0234e, androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onStateChange(int[] r7) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p019b.p020a.C0220a.onStateChange(int[]):boolean");
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
        super.setAutoMirrored(z);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z) {
        super.setDither(z);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public /* bridge */ /* synthetic */ void setTintMode(PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        AbstractC0227f abstractC0227f = this.f610c;
        if (abstractC0227f != null && (visible || z2)) {
            if (z) {
                abstractC0227f.mo46201a();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }
}
