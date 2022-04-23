package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.graphics.drawable.DrawableContainer;
import androidx.appcompat.graphics.drawable.StateListDrawable;
import androidx.appcompat.resources.C0076R;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@SuppressLint({"RestrictedAPI"})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat.class */
public class AnimatedStateListDrawableCompat extends StateListDrawable implements TintAwareDrawable {

    /* renamed from: t */
    private AnimatedStateListState f360t;

    /* renamed from: u */
    private Transition f361u;

    /* renamed from: v */
    private int f362v;

    /* renamed from: w */
    private int f363w;

    /* renamed from: x */
    private boolean f364x;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition.class */
    public static class AnimatableTransition extends Transition {

        /* renamed from: a */
        private final Animatable f365a;

        AnimatableTransition(Animatable animatable) {
            super();
            this.f365a = animatable;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        /* renamed from: c */
        public void mo22044c() {
            this.f365a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        /* renamed from: d */
        public void mo22043d() {
            this.f365a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState.class */
    public static class AnimatedStateListState extends StateListDrawable.StateListState {

        /* renamed from: K */
        LongSparseArray<Long> f366K;

        /* renamed from: L */
        SparseArrayCompat<Integer> f367L;

        AnimatedStateListState(@Nullable AnimatedStateListState animatedStateListState, @NonNull AnimatedStateListDrawableCompat animatedStateListDrawableCompat, @Nullable Resources resources) {
            super(animatedStateListState, animatedStateListDrawableCompat, resources);
            if (animatedStateListState != null) {
                this.f366K = animatedStateListState.f366K;
                this.f367L = animatedStateListState.f367L;
                return;
            }
            this.f366K = new LongSparseArray<>();
            this.f367L = new SparseArrayCompat<>();
        }

        /* renamed from: E */
        private static long m22054E(int i, int i2) {
            return i2 | (i << 32);
        }

        /* renamed from: C */
        int m22056C(@NonNull int[] iArr, @NonNull Drawable drawable, int i) {
            int A = super.m21996A(iArr, drawable);
            this.f367L.m20995m(A, Integer.valueOf(i));
            return A;
        }

        /* renamed from: D */
        int m22055D(int i, int i2, @NonNull Drawable drawable, boolean z) {
            int a = super.m22033a(drawable);
            long E = m22054E(i, i2);
            long j = z ? 8589934592L : 0L;
            long j2 = a;
            this.f366K.m21050a(E, Long.valueOf(j2 | j));
            if (z) {
                this.f366K.m21050a(m22054E(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return a;
        }

        /* renamed from: F */
        int m22053F(int i) {
            int i2 = 0;
            if (i >= 0) {
                i2 = this.f367L.m20999g(i, 0).intValue();
            }
            return i2;
        }

        /* renamed from: G */
        int m22052G(@NonNull int[] iArr) {
            int B = super.m21995B(iArr);
            return B >= 0 ? B : super.m21995B(StateSet.WILD_CARD);
        }

        /* renamed from: H */
        int m22051H(int i, int i2) {
            return (int) this.f366K.m21044i(m22054E(i, i2), -1L).longValue();
        }

        /* renamed from: I */
        boolean m22050I(int i, int i2) {
            return (this.f366K.m21044i(m22054E(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        /* renamed from: J */
        boolean m22049J(int i, int i2) {
            return (this.f366K.m21044i(m22054E(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawable.StateListState, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new AnimatedStateListDrawableCompat(this, null);
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawable.StateListState, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new AnimatedStateListDrawableCompat(this, resources);
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawable.StateListState, androidx.appcompat.graphics.drawable.DrawableContainer.DrawableContainerState
        /* renamed from: s */
        void mo21993s() {
            this.f366K = this.f366K.clone();
            this.f367L = this.f367L.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition.class */
    public static class AnimatedVectorDrawableTransition extends Transition {

        /* renamed from: a */
        private final AnimatedVectorDrawableCompat f368a;

        AnimatedVectorDrawableTransition(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
            super();
            this.f368a = animatedVectorDrawableCompat;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        /* renamed from: c */
        public void mo22044c() {
            this.f368a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        /* renamed from: d */
        public void mo22043d() {
            this.f368a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition.class */
    public static class AnimationDrawableTransition extends Transition {

        /* renamed from: a */
        private final ObjectAnimator f369a;

        /* renamed from: b */
        private final boolean f370b;

        AnimationDrawableTransition(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            FrameInterpolator frameInterpolator = new FrameInterpolator(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(frameInterpolator.m22048a());
            ofInt.setInterpolator(frameInterpolator);
            this.f370b = z2;
            this.f369a = ofInt;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        /* renamed from: a */
        public boolean mo22046a() {
            return this.f370b;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        /* renamed from: b */
        public void mo22045b() {
            this.f369a.reverse();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        /* renamed from: c */
        public void mo22044c() {
            this.f369a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        /* renamed from: d */
        public void mo22043d() {
            this.f369a.cancel();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator.class */
    private static class FrameInterpolator implements TimeInterpolator {

        /* renamed from: a */
        private int[] f371a;

        /* renamed from: b */
        private int f372b;

        /* renamed from: c */
        private int f373c;

        FrameInterpolator(AnimationDrawable animationDrawable, boolean z) {
            m22047b(animationDrawable, z);
        }

        /* renamed from: a */
        int m22048a() {
            return this.f373c;
        }

        /* renamed from: b */
        int m22047b(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f372b = numberOfFrames;
            int[] iArr = this.f371a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f371a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f371a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f373c = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.f373c) + 0.5f);
            int i2 = this.f372b;
            int[] iArr = this.f371a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f373c : 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition.class */
    public static abstract class Transition {
        private Transition() {
        }

        /* renamed from: a */
        public boolean mo22046a() {
            return false;
        }

        /* renamed from: b */
        public void mo22045b() {
        }

        /* renamed from: c */
        public abstract void mo22044c();

        /* renamed from: d */
        public abstract void mo22043d();
    }

    public AnimatedStateListDrawableCompat() {
        this(null, null);
    }

    AnimatedStateListDrawableCompat(@Nullable AnimatedStateListState animatedStateListState, @Nullable Resources resources) {
        super(null);
        this.f362v = -1;
        this.f363w = -1;
        mo21999h(new AnimatedStateListState(animatedStateListState, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* renamed from: m */
    public static AnimatedStateListDrawableCompat m22064m(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            AnimatedStateListDrawableCompat animatedStateListDrawableCompat = new AnimatedStateListDrawableCompat();
            animatedStateListDrawableCompat.m22063n(context, resources, xmlPullParser, attributeSet, theme);
            return animatedStateListDrawableCompat;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    /* renamed from: o */
    private void m22062o(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
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
                        m22060q(context, resources, xmlPullParser, attributeSet, theme);
                    } else if (xmlPullParser.getName().equals("transition")) {
                        m22059r(context, resources, xmlPullParser, attributeSet, theme);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: p */
    private void m22061p() {
        onStateChange(getState());
    }

    /* renamed from: q */
    private int m22060q(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, C0076R.styleable.AnimatedStateListDrawableItem);
        int resourceId = k.getResourceId(C0076R.styleable.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = k.getResourceId(C0076R.styleable.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable j = resourceId2 > 0 ? ResourceManagerInternal.m21400h().m21398j(context, resourceId2) : null;
        k.recycle();
        int[] k2 = m21997k(attributeSet);
        Drawable drawable = j;
        if (j == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                drawable = xmlPullParser.getName().equals("vector") ? VectorDrawableCompat.m16616c(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
        }
        if (drawable != null) {
            return this.f360t.m22056C(k2, drawable, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    /* renamed from: r */
    private int m22059r(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, C0076R.styleable.AnimatedStateListDrawableTransition);
        int resourceId = k.getResourceId(C0076R.styleable.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = k.getResourceId(C0076R.styleable.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = k.getResourceId(C0076R.styleable.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable j = resourceId3 > 0 ? ResourceManagerInternal.m21400h().m21398j(context, resourceId3) : null;
        boolean z = k.getBoolean(C0076R.styleable.AnimatedStateListDrawableTransition_android_reversible, false);
        k.recycle();
        Drawable drawable = j;
        if (j == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                drawable = xmlPullParser.getName().equals("animated-vector") ? AnimatedVectorDrawableCompat.m16649a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
        }
        if (drawable == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        } else if (resourceId != -1 && resourceId2 != -1) {
            return this.f360t.m22055D(resourceId, resourceId2, drawable, z);
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
    }

    /* renamed from: s */
    private boolean m22058s(int i) {
        int i2;
        int H;
        Transition transition;
        Transition transition2 = this.f361u;
        if (transition2 == null) {
            i2 = m22041c();
        } else if (i == this.f362v) {
            return true;
        } else {
            if (i != this.f363w || !transition2.mo22046a()) {
                i2 = this.f362v;
                transition2.mo22043d();
            } else {
                transition2.mo22045b();
                this.f362v = this.f363w;
                this.f363w = i;
                return true;
            }
        }
        this.f361u = null;
        this.f363w = -1;
        this.f362v = -1;
        AnimatedStateListState animatedStateListState = this.f360t;
        int F = animatedStateListState.m22053F(i2);
        int F2 = animatedStateListState.m22053F(i);
        if (F2 == 0 || F == 0 || (H = animatedStateListState.m22051H(F, F2)) < 0) {
            return false;
        }
        boolean J = animatedStateListState.m22049J(F, F2);
        m22037g(H);
        Drawable current = getCurrent();
        if (current instanceof AnimationDrawable) {
            transition = new AnimationDrawableTransition((AnimationDrawable) current, animatedStateListState.m22050I(F, F2), J);
        } else if (current instanceof AnimatedVectorDrawableCompat) {
            transition = new AnimatedVectorDrawableTransition((AnimatedVectorDrawableCompat) current);
        } else if (!(current instanceof Animatable)) {
            return false;
        } else {
            transition = new AnimatableTransition((Animatable) current);
        }
        transition.mo22044c();
        this.f361u = transition;
        this.f363w = i2;
        this.f362v = i;
        return true;
    }

    /* renamed from: t */
    private void m22057t(TypedArray typedArray) {
        AnimatedStateListState animatedStateListState = this.f360t;
        if (Build.VERSION.SDK_INT >= 21) {
            animatedStateListState.f400d |= typedArray.getChangingConfigurations();
        }
        animatedStateListState.m22011y(typedArray.getBoolean(C0076R.styleable.AnimatedStateListDrawableCompat_android_variablePadding, animatedStateListState.f405i));
        animatedStateListState.m22015u(typedArray.getBoolean(C0076R.styleable.AnimatedStateListDrawableCompat_android_constantSize, animatedStateListState.f408l));
        animatedStateListState.m22014v(typedArray.getInt(C0076R.styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, animatedStateListState.f388A));
        animatedStateListState.m22013w(typedArray.getInt(C0076R.styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, animatedStateListState.f389B));
        setDither(typedArray.getBoolean(C0076R.styleable.AnimatedStateListDrawableCompat_android_dither, animatedStateListState.f420x));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer
    /* renamed from: h */
    public void mo21999h(@NonNull DrawableContainer.DrawableContainerState drawableContainerState) {
        super.mo21999h(drawableContainerState);
        if (drawableContainerState instanceof AnimatedStateListState) {
            this.f360t = (AnimatedStateListState) drawableContainerState;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        Transition transition = this.f361u;
        if (transition != null) {
            transition.mo22043d();
            this.f361u = null;
            m22037g(this.f362v);
            this.f362v = -1;
            this.f363w = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public AnimatedStateListState mo21998j() {
        return new AnimatedStateListState(this.f360t, this, null);
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f364x) {
            super.mutate();
            this.f360t.mo21993s();
            this.f364x = true;
        }
        return this;
    }

    /* renamed from: n */
    public void m22063n(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, C0076R.styleable.AnimatedStateListDrawableCompat);
        setVisible(k.getBoolean(C0076R.styleable.AnimatedStateListDrawableCompat_android_visible, true), true);
        m22057t(k);
        m22036i(resources);
        k.recycle();
        m22062o(context, resources, xmlPullParser, attributeSet, theme);
        m22061p();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int G = this.f360t.m22052G(iArr);
        boolean z = G != m22041c() && (m22058s(G) || m22037g(G));
        Drawable current = getCurrent();
        boolean z2 = z;
        if (current != null) {
            z2 = z | current.setState(iArr);
        }
        return z2;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.f361u != null && (visible || z2)) {
            if (z) {
                this.f361u.mo22044c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
