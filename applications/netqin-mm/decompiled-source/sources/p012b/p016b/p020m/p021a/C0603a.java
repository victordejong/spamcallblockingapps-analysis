package p012b.p016b.p020m.p021a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p012b.p016b.p020m.p021a.C0611b;
import p012b.p016b.p020m.p021a.C0616d;
import p012b.p016b.p022n.C0619b;
import p012b.p016b.p026q.C0728v;
import p012b.p035f.C0785d;
import p012b.p035f.C0794h;
import p012b.p042i.p044i.p045c.C0889g;
import p012b.p042i.p046j.p047m.AbstractC0908b;
import p012b.p127y.p128a.p129a.C1956c;
import p012b.p127y.p128a.p129a.C1966i;
/* renamed from: b.b.m.a.a */
/* loaded from: classes-dex2jar.jar:b/b/m/a/a.class */
public class C0603a extends C0616d implements AbstractC0908b {

    /* renamed from: o */
    public C0606c f3005o;

    /* renamed from: p */
    public AbstractC0610g f3006p;

    /* renamed from: q */
    public int f3007q;

    /* renamed from: r */
    public int f3008r;

    /* renamed from: s */
    public boolean f3009s;

    /* renamed from: b.b.m.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/a$b.class */
    public static class C0605b extends AbstractC0610g {

        /* renamed from: a */
        public final Animatable f3010a;

        public C0605b(Animatable animatable) {
            super();
            this.f3010a = animatable;
        }

        @Override // p012b.p016b.p020m.p021a.C0603a.AbstractC0610g
        /* renamed from: c */
        public void mo36754c() {
            this.f3010a.start();
        }

        @Override // p012b.p016b.p020m.p021a.C0603a.AbstractC0610g
        /* renamed from: d */
        public void mo36753d() {
            this.f3010a.stop();
        }
    }

    /* renamed from: b.b.m.a.a$c */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/a$c.class */
    public static class C0606c extends C0616d.C0617a {

        /* renamed from: K */
        public C0785d<Long> f3011K;

        /* renamed from: L */
        public C0794h<Integer> f3012L;

        public C0606c(C0606c cVar, C0603a aVar, Resources resources) {
            super(cVar, aVar, resources);
            if (cVar != null) {
                this.f3011K = cVar.f3011K;
                this.f3012L = cVar.f3012L;
                return;
            }
            this.f3011K = new C0785d<>();
            this.f3012L = new C0794h<>();
        }

        /* renamed from: f */
        public static long m36759f(int i, int i2) {
            return i2 | (i << 32);
        }

        /* renamed from: a */
        public int m36766a(int i, int i2, Drawable drawable, boolean z) {
            int a = super.m36739a(drawable);
            long f = m36759f(i, i2);
            long j = z ? 8589934592L : 0L;
            long j2 = a;
            this.f3011K.m36054a(f, Long.valueOf(j2 | j));
            if (z) {
                this.f3011K.m36054a(m36759f(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return a;
        }

        /* renamed from: a */
        public int m36765a(int[] iArr, Drawable drawable, int i) {
            int a = super.m36713a(iArr, drawable);
            this.f3012L.m36004c(a, Integer.valueOf(i));
            return a;
        }

        /* renamed from: b */
        public int m36764b(int[] iArr) {
            int a = super.m36714a(iArr);
            return a >= 0 ? a : super.m36714a(StateSet.WILD_CARD);
        }

        /* renamed from: c */
        public int m36763c(int i, int i2) {
            return (int) this.f3011K.m36051b(m36759f(i, i2), -1L).longValue();
        }

        /* renamed from: d */
        public int m36762d(int i) {
            int i2 = 0;
            if (i >= 0) {
                i2 = this.f3012L.m36007b(i, 0).intValue();
            }
            return i2;
        }

        /* renamed from: d */
        public boolean m36761d(int i, int i2) {
            return (this.f3011K.m36051b(m36759f(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        /* renamed from: e */
        public boolean m36760e(int i, int i2) {
            return (this.f3011K.m36051b(m36759f(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // p012b.p016b.p020m.p021a.C0616d.C0617a, p012b.p016b.p020m.p021a.C0611b.AbstractC0614c
        /* renamed from: n */
        public void mo36712n() {
            this.f3011K = this.f3011K.clone();
            this.f3012L = this.f3012L.clone();
        }

        @Override // p012b.p016b.p020m.p021a.C0616d.C0617a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0603a(this, null);
        }

        @Override // p012b.p016b.p020m.p021a.C0616d.C0617a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0603a(this, resources);
        }
    }

    /* renamed from: b.b.m.a.a$d */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/a$d.class */
    public static class C0607d extends AbstractC0610g {

        /* renamed from: a */
        public final C1956c f3013a;

        public C0607d(C1956c cVar) {
            super();
            this.f3013a = cVar;
        }

        @Override // p012b.p016b.p020m.p021a.C0603a.AbstractC0610g
        /* renamed from: c */
        public void mo36754c() {
            this.f3013a.start();
        }

        @Override // p012b.p016b.p020m.p021a.C0603a.AbstractC0610g
        /* renamed from: d */
        public void mo36753d() {
            this.f3013a.stop();
        }
    }

    /* renamed from: b.b.m.a.a$e */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/a$e.class */
    public static class C0608e extends AbstractC0610g {

        /* renamed from: a */
        public final ObjectAnimator f3014a;

        /* renamed from: b */
        public final boolean f3015b;

        public C0608e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            C0609f fVar = new C0609f(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(fVar.m36758a());
            ofInt.setInterpolator(fVar);
            this.f3015b = z2;
            this.f3014a = ofInt;
        }

        @Override // p012b.p016b.p020m.p021a.C0603a.AbstractC0610g
        /* renamed from: a */
        public boolean mo36756a() {
            return this.f3015b;
        }

        @Override // p012b.p016b.p020m.p021a.C0603a.AbstractC0610g
        /* renamed from: b */
        public void mo36755b() {
            this.f3014a.reverse();
        }

        @Override // p012b.p016b.p020m.p021a.C0603a.AbstractC0610g
        /* renamed from: c */
        public void mo36754c() {
            this.f3014a.start();
        }

        @Override // p012b.p016b.p020m.p021a.C0603a.AbstractC0610g
        /* renamed from: d */
        public void mo36753d() {
            this.f3014a.cancel();
        }
    }

    /* renamed from: b.b.m.a.a$f */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/a$f.class */
    public static class C0609f implements TimeInterpolator {

        /* renamed from: a */
        public int[] f3016a;

        /* renamed from: b */
        public int f3017b;

        /* renamed from: c */
        public int f3018c;

        public C0609f(AnimationDrawable animationDrawable, boolean z) {
            m36757a(animationDrawable, z);
        }

        /* renamed from: a */
        public int m36758a() {
            return this.f3018c;
        }

        /* renamed from: a */
        public int m36757a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f3017b = numberOfFrames;
            int[] iArr = this.f3016a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f3016a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f3016a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f3018c = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.f3018c) + 0.5f);
            int i2 = this.f3017b;
            int[] iArr = this.f3016a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f3018c : 0.0f);
        }
    }

    /* renamed from: b.b.m.a.a$g */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/a$g.class */
    public static abstract class AbstractC0610g {
        public AbstractC0610g() {
        }

        /* renamed from: a */
        public boolean mo36756a() {
            return false;
        }

        /* renamed from: b */
        public void mo36755b() {
        }

        /* renamed from: c */
        public abstract void mo36754c();

        /* renamed from: d */
        public abstract void mo36753d();
    }

    public C0603a() {
        this(null, null);
    }

    public C0603a(C0606c cVar, Resources resources) {
        super(null);
        this.f3007q = -1;
        this.f3008r = -1;
        mo36716a(new C0606c(cVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* renamed from: e */
    public static C0603a m36767e(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            C0603a aVar = new C0603a();
            aVar.m36774a(context, resources, xmlPullParser, attributeSet, theme);
            return aVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    @Override // p012b.p016b.p020m.p021a.C0616d, p012b.p016b.p020m.p021a.C0611b
    /* renamed from: a */
    public C0606c mo36718a() {
        return new C0606c(this.f3005o, this, null);
    }

    /* renamed from: a */
    public void m36774a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C0619b.AnimatedStateListDrawableCompat);
        setVisible(a.getBoolean(C0619b.AnimatedStateListDrawableCompat_android_visible, true), true);
        m36773a(a);
        m36751a(resources);
        a.recycle();
        m36771b(context, resources, xmlPullParser, attributeSet, theme);
        m36769d();
    }

    /* renamed from: a */
    public final void m36773a(TypedArray typedArray) {
        C0606c cVar = this.f3005o;
        if (Build.VERSION.SDK_INT >= 21) {
            cVar.f3045d |= typedArray.getChangingConfigurations();
        }
        cVar.m36733b(typedArray.getBoolean(C0619b.AnimatedStateListDrawableCompat_android_variablePadding, cVar.f3050i));
        cVar.m36738a(typedArray.getBoolean(C0619b.AnimatedStateListDrawableCompat_android_constantSize, cVar.f3053l));
        cVar.m36736b(typedArray.getInt(C0619b.AnimatedStateListDrawableCompat_android_enterFadeDuration, cVar.f3033A));
        cVar.m36731c(typedArray.getInt(C0619b.AnimatedStateListDrawableCompat_android_exitFadeDuration, cVar.f3034B));
        setDither(typedArray.getBoolean(C0619b.AnimatedStateListDrawableCompat_android_dither, cVar.f3065x));
    }

    @Override // p012b.p016b.p020m.p021a.C0616d, p012b.p016b.p020m.p021a.C0611b
    /* renamed from: a */
    public void mo36716a(C0611b.AbstractC0614c cVar) {
        super.mo36716a(cVar);
        if (cVar instanceof C0606c) {
            this.f3005o = (C0606c) cVar;
        }
    }

    /* renamed from: b */
    public final void m36771b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
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
                        m36770c(context, resources, xmlPullParser, attributeSet, theme);
                    } else if (xmlPullParser.getName().equals("transition")) {
                        m36768d(context, resources, xmlPullParser, attributeSet, theme);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public final boolean m36772b(int i) {
        int i2;
        int c;
        AbstractC0610g gVar;
        AbstractC0610g gVar2 = this.f3006p;
        if (gVar2 == null) {
            i2 = m36747b();
        } else if (i == this.f3007q) {
            return true;
        } else {
            if (i != this.f3008r || !gVar2.mo36756a()) {
                i2 = this.f3007q;
                gVar2.mo36753d();
            } else {
                gVar2.mo36755b();
                this.f3007q = this.f3008r;
                this.f3008r = i;
                return true;
            }
        }
        this.f3006p = null;
        this.f3008r = -1;
        this.f3007q = -1;
        C0606c cVar = this.f3005o;
        int d = cVar.m36762d(i2);
        int d2 = cVar.m36762d(i);
        if (d2 == 0 || d == 0 || (c = cVar.m36763c(d, d2)) < 0) {
            return false;
        }
        boolean e = cVar.m36760e(d, d2);
        m36752a(c);
        Drawable current = getCurrent();
        if (current instanceof AnimationDrawable) {
            gVar = new C0608e((AnimationDrawable) current, cVar.m36761d(d, d2), e);
        } else if (current instanceof C1956c) {
            gVar = new C0607d((C1956c) current);
        } else if (!(current instanceof Animatable)) {
            return false;
        } else {
            gVar = new C0605b((Animatable) current);
        }
        gVar.mo36754c();
        this.f3006p = gVar;
        this.f3008r = i2;
        this.f3007q = i;
        return true;
    }

    /* renamed from: c */
    public final int m36770c(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C0619b.AnimatedStateListDrawableItem);
        int resourceId = a.getResourceId(C0619b.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = a.getResourceId(C0619b.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable b = resourceId2 > 0 ? C0728v.m36215a().m36195b(context, resourceId2) : null;
        a.recycle();
        int[] a2 = m36717a(attributeSet);
        Drawable drawable = b;
        if (b == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                drawable = xmlPullParser.getName().equals("vector") ? C1966i.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
        }
        if (drawable != null) {
            return this.f3005o.m36765a(a2, drawable, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    /* renamed from: d */
    public final int m36768d(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C0619b.AnimatedStateListDrawableTransition);
        int resourceId = a.getResourceId(C0619b.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = a.getResourceId(C0619b.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = a.getResourceId(C0619b.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable b = resourceId3 > 0 ? C0728v.m36215a().m36195b(context, resourceId3) : null;
        boolean z = a.getBoolean(C0619b.AnimatedStateListDrawableTransition_android_reversible, false);
        a.recycle();
        Drawable drawable = b;
        if (b == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                drawable = xmlPullParser.getName().equals("animated-vector") ? C1956c.m31460a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
        }
        if (drawable == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        } else if (resourceId != -1 && resourceId2 != -1) {
            return this.f3005o.m36766a(resourceId, resourceId2, drawable, z);
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
    }

    /* renamed from: d */
    public final void m36769d() {
        onStateChange(getState());
    }

    @Override // p012b.p016b.p020m.p021a.C0616d, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // p012b.p016b.p020m.p021a.C0611b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC0610g gVar = this.f3006p;
        if (gVar != null) {
            gVar.mo36753d();
            this.f3006p = null;
            m36752a(this.f3007q);
            this.f3007q = -1;
            this.f3008r = -1;
        }
    }

    @Override // p012b.p016b.p020m.p021a.C0616d, p012b.p016b.p020m.p021a.C0611b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f3009s) {
            super.mutate();
            this.f3005o.mo36712n();
            this.f3009s = true;
        }
        return this;
    }

    @Override // p012b.p016b.p020m.p021a.C0616d, p012b.p016b.p020m.p021a.C0611b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int b = this.f3005o.m36764b(iArr);
        boolean z = b != m36747b() && (m36772b(b) || m36752a(b));
        Drawable current = getCurrent();
        boolean z2 = z;
        if (current != null) {
            z2 = z | current.setState(iArr);
        }
        return z2;
    }

    @Override // p012b.p016b.p020m.p021a.C0611b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.f3006p != null && (visible || z2)) {
            if (z) {
                this.f3006p.mo36754c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
