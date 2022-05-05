package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat.class */
public class AnimatedVectorDrawableCompat extends VectorDrawableCommon implements Animatable2Compat {

    /* renamed from: g */
    private AnimatedVectorDrawableCompatState f5351g;

    /* renamed from: h */
    private Context f5352h;

    /* renamed from: i */
    private ArgbEvaluator f5353i;

    /* renamed from: j */
    ArrayList<Animatable2Compat.AnimationCallback> f5354j;

    /* renamed from: k */
    final Drawable.Callback f5355k;

    /* renamed from: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat$2 */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2.class */
    class C05712 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ AnimatedVectorDrawableCompat f5357a;

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ArrayList arrayList = new ArrayList(this.f5357a.f5354j);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Animatable2Compat.AnimationCallback) arrayList.get(i)).m16651a(this.f5357a);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ArrayList arrayList = new ArrayList(this.f5357a.f5354j);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Animatable2Compat.AnimationCallback) arrayList.get(i)).m16650b(this.f5357a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.class */
    public static class AnimatedVectorDrawableCompatState extends Drawable.ConstantState {

        /* renamed from: a */
        int f5358a;

        /* renamed from: b */
        VectorDrawableCompat f5359b;

        /* renamed from: c */
        AnimatorSet f5360c;

        /* renamed from: d */
        ArrayList<Animator> f5361d;

        /* renamed from: e */
        ArrayMap<Animator, String> f5362e;

        public AnimatedVectorDrawableCompatState(Context context, AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState, Drawable.Callback callback, Resources resources) {
            if (animatedVectorDrawableCompatState != null) {
                this.f5358a = animatedVectorDrawableCompatState.f5358a;
                VectorDrawableCompat vectorDrawableCompat = animatedVectorDrawableCompatState.f5359b;
                if (vectorDrawableCompat != null) {
                    Drawable.ConstantState constantState = vectorDrawableCompat.getConstantState();
                    if (resources != null) {
                        this.f5359b = (VectorDrawableCompat) constantState.newDrawable(resources);
                    } else {
                        this.f5359b = (VectorDrawableCompat) constantState.newDrawable();
                    }
                    VectorDrawableCompat vectorDrawableCompat2 = (VectorDrawableCompat) this.f5359b.mutate();
                    this.f5359b = vectorDrawableCompat2;
                    vectorDrawableCompat2.setCallback(callback);
                    this.f5359b.setBounds(animatedVectorDrawableCompatState.f5359b.getBounds());
                    this.f5359b.m16611h(false);
                }
                ArrayList<Animator> arrayList = animatedVectorDrawableCompatState.f5361d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f5361d = new ArrayList<>(size);
                    this.f5362e = new ArrayMap<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = animatedVectorDrawableCompatState.f5361d.get(i);
                        Animator clone = animator.clone();
                        String str = animatedVectorDrawableCompatState.f5362e.get(animator);
                        clone.setTarget(this.f5359b.m16615d(str));
                        this.f5361d.add(clone);
                        this.f5362e.put(clone, str);
                    }
                    m16646a();
                }
            }
        }

        /* renamed from: a */
        public void m16646a() {
            if (this.f5360c == null) {
                this.f5360c = new AnimatorSet();
            }
            this.f5360c.playTogether(this.f5361d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f5358a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState.class */
    private static class AnimatedVectorDrawableDelegateState extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f5363a;

        public AnimatedVectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.f5363a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f5363a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f5363a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable newDrawable = this.f5363a.newDrawable();
            animatedVectorDrawableCompat.f5368f = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.f5355k);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable newDrawable = this.f5363a.newDrawable(resources);
            animatedVectorDrawableCompat.f5368f = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.f5355k);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable newDrawable = this.f5363a.newDrawable(resources, theme);
            animatedVectorDrawableCompat.f5368f = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.f5355k);
            return animatedVectorDrawableCompat;
        }
    }

    AnimatedVectorDrawableCompat() {
        this(null, null, null);
    }

    private AnimatedVectorDrawableCompat(@Nullable Context context) {
        this(context, null, null);
    }

    private AnimatedVectorDrawableCompat(@Nullable Context context, @Nullable AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState, @Nullable Resources resources) {
        this.f5353i = null;
        this.f5354j = null;
        this.f5355k = new Drawable.Callback() { // from class: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.1
            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                AnimatedVectorDrawableCompat.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                AnimatedVectorDrawableCompat.this.scheduleSelf(runnable, j);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                AnimatedVectorDrawableCompat.this.unscheduleSelf(runnable);
            }
        };
        this.f5352h = context;
        if (animatedVectorDrawableCompatState != null) {
            this.f5351g = animatedVectorDrawableCompatState;
        } else {
            this.f5351g = new AnimatedVectorDrawableCompatState(context, animatedVectorDrawableCompatState, this.f5355k, resources);
        }
    }

    /* renamed from: a */
    public static AnimatedVectorDrawableCompat m16649a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
        animatedVectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return animatedVectorDrawableCompat;
    }

    /* renamed from: b */
    private void m16648b(String str, Animator animator) {
        animator.setTarget(this.f5351g.f5359b.m16615d(str));
        if (Build.VERSION.SDK_INT < 21) {
            m16647c(animator);
        }
        AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState = this.f5351g;
        if (animatedVectorDrawableCompatState.f5361d == null) {
            animatedVectorDrawableCompatState.f5361d = new ArrayList<>();
            this.f5351g.f5362e = new ArrayMap<>();
        }
        this.f5351g.f5361d.add(animator);
        this.f5351g.f5362e.put(animator, str);
    }

    /* renamed from: c */
    private void m16647c(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m16647c(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f5353i == null) {
                    this.f5353i = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f5353i);
            }
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19512a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            return DrawableCompat.m19511b(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f5351g.f5359b.draw(canvas);
        if (this.f5351g.f5360c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f5368f;
        return drawable != null ? DrawableCompat.m19509d(drawable) : this.f5351g.f5359b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f5351g.f5358a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f5368f;
        return drawable != null ? DrawableCompat.m19508e(drawable) : this.f5351g.f5359b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f5368f == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new AnimatedVectorDrawableDelegateState(this.f5368f.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f5351g.f5359b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f5351g.f5359b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.getOpacity() : this.f5351g.f5359b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19506g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5342e);
                    int resourceId = k.getResourceId(0, 0);
                    if (resourceId != 0) {
                        VectorDrawableCompat b = VectorDrawableCompat.m16617b(resources, resourceId, theme);
                        b.m16611h(false);
                        b.setCallback(this.f5355k);
                        VectorDrawableCompat vectorDrawableCompat = this.f5351g.f5359b;
                        if (vectorDrawableCompat != null) {
                            vectorDrawableCompat.setCallback(null);
                        }
                        this.f5351g.f5359b = b;
                    }
                    k.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, AndroidResources.f5343f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f5352h;
                        if (context != null) {
                            m16648b(string, AnimatorInflaterCompat.m16635i(context, resourceId2));
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f5351g.m16646a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f5368f;
        return drawable != null ? DrawableCompat.m19505h(drawable) : this.f5351g.f5359b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f5368f;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f5351g.f5360c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.isStateful() : this.f5351g.f5359b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f5351g.f5359b.setBounds(rect);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.setLevel(i) : this.f5351g.f5359b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.setState(iArr) : this.f5351g.f5359b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f5351g.f5359b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19503j(drawable, z);
        } else {
            this.f5351g.f5359b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f5351g.f5359b.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19499n(drawable, i);
        } else {
            this.f5351g.f5359b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19498o(drawable, colorStateList);
        } else {
            this.f5351g.f5359b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19497p(drawable, mode);
        } else {
            this.f5351g.f5359b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f5351g.f5359b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (!this.f5351g.f5360c.isStarted()) {
            this.f5351g.f5360c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f5351g.f5360c.end();
        }
    }
}
