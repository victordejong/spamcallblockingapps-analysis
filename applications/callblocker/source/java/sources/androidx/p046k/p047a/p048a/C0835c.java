package androidx.p046k.p047a.p048a;

import android.animation.Animator;
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
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p017a.p018a.C0453g;
import androidx.p013b.C0373a;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.k.a.a.c */
/* loaded from: classes-dex2jar.jar:androidx/k/a/a/c.class */
public class C0835c extends AbstractC0844h implements AbstractC0834b {

    /* renamed from: a */
    ArrayList<Object> f2855a;

    /* renamed from: b */
    final Drawable.Callback f2856b;

    /* renamed from: d */
    private C0837a f2857d;

    /* renamed from: e */
    private Context f2858e;

    /* renamed from: f */
    private ArgbEvaluator f2859f;

    /* renamed from: g */
    private Animator.AnimatorListener f2860g;

    /* renamed from: androidx.k.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/c$a.class */
    public static class C0837a extends Drawable.ConstantState {

        /* renamed from: a */
        int f2862a;

        /* renamed from: b */
        C0845i f2863b;

        /* renamed from: c */
        AnimatorSet f2864c;

        /* renamed from: d */
        ArrayList<Animator> f2865d;

        /* renamed from: e */
        C0373a<Animator, String> f2866e;

        public C0837a(Context context, C0837a c0837a, Drawable.Callback callback, Resources resources) {
            if (c0837a != null) {
                this.f2862a = c0837a.f2862a;
                if (c0837a.f2863b != null) {
                    Drawable.ConstantState constantState = c0837a.f2863b.getConstantState();
                    if (resources != null) {
                        this.f2863b = (C0845i) constantState.newDrawable(resources);
                    } else {
                        this.f2863b = (C0845i) constantState.newDrawable();
                    }
                    this.f2863b = (C0845i) this.f2863b.mutate();
                    this.f2863b.setCallback(callback);
                    this.f2863b.setBounds(c0837a.f2863b.getBounds());
                    this.f2863b.m19284a(false);
                }
                if (c0837a.f2865d == null) {
                    return;
                }
                int size = c0837a.f2865d.size();
                this.f2865d = new ArrayList<>(size);
                this.f2866e = new C0373a<>(size);
                for (int i = 0; i < size; i++) {
                    Animator animator = c0837a.f2865d.get(i);
                    Animator clone = animator.clone();
                    String str = c0837a.f2866e.get(animator);
                    clone.setTarget(this.f2863b.m19285a(str));
                    this.f2865d.add(clone);
                    this.f2866e.put(clone, str);
                }
                m19320a();
            }
        }

        /* renamed from: a */
        public void m19320a() {
            if (this.f2864c == null) {
                this.f2864c = new AnimatorSet();
            }
            this.f2864c.playTogether(this.f2865d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2862a;
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

    /* renamed from: androidx.k.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/c$b.class */
    private static class C0838b extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f2867a;

        public C0838b(Drawable.ConstantState constantState) {
            this.f2867a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f2867a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2867a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0835c c0835c = new C0835c();
            c0835c.f2872c = this.f2867a.newDrawable();
            c0835c.f2872c.setCallback(c0835c.f2856b);
            return c0835c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C0835c c0835c = new C0835c();
            c0835c.f2872c = this.f2867a.newDrawable(resources);
            c0835c.f2872c.setCallback(c0835c.f2856b);
            return c0835c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0835c c0835c = new C0835c();
            c0835c.f2872c = this.f2867a.newDrawable(resources, theme);
            c0835c.f2872c.setCallback(c0835c.f2856b);
            return c0835c;
        }
    }

    C0835c() {
        this(null, null, null);
    }

    private C0835c(Context context) {
        this(context, null, null);
    }

    private C0835c(Context context, C0837a c0837a, Resources resources) {
        this.f2859f = null;
        this.f2860g = null;
        this.f2855a = null;
        this.f2856b = new Drawable.Callback() { // from class: androidx.k.a.a.c.1
            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                C0835c.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                C0835c.this.scheduleSelf(runnable, j);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                C0835c.this.unscheduleSelf(runnable);
            }
        };
        this.f2858e = context;
        if (c0837a != null) {
            this.f2857d = c0837a;
        } else {
            this.f2857d = new C0837a(context, c0837a, this.f2856b, resources);
        }
    }

    /* renamed from: a */
    public static C0835c m19322a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0835c c0835c = new C0835c(context);
        c0835c.inflate(resources, xmlPullParser, attributeSet, theme);
        return c0835c;
    }

    /* renamed from: a */
    private void m19323a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m19323a(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if (!"fillColor".equals(propertyName) && !"strokeColor".equals(propertyName)) {
                return;
            }
            if (this.f2859f == null) {
                this.f2859f = new ArgbEvaluator();
            }
            objectAnimator.setEvaluator(this.f2859f);
        }
    }

    /* renamed from: a */
    private void m19321a(String str, Animator animator) {
        animator.setTarget(this.f2857d.f2863b.m19285a(str));
        if (Build.VERSION.SDK_INT < 21) {
            m19323a(animator);
        }
        if (this.f2857d.f2865d == null) {
            this.f2857d.f2865d = new ArrayList<>();
            this.f2857d.f2866e = new C0373a<>();
        }
        this.f2857d.f2865d.add(animator);
        this.f2857d.f2866e.put(animator, str);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        if (this.f2872c != null) {
            C0535a.m20594a(this.f2872c, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f2872c != null ? C0535a.m20587d(this.f2872c) : false;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f2872c != null) {
            this.f2872c.draw(canvas);
            return;
        }
        this.f2857d.f2863b.draw(canvas);
        if (!this.f2857d.f2864c.isStarted()) {
            return;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2872c != null ? C0535a.m20588c(this.f2872c) : this.f2857d.f2863b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f2872c != null ? this.f2872c.getChangingConfigurations() : super.getChangingConfigurations() | this.f2857d.f2862a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f2872c != null ? C0535a.m20586e(this.f2872c) : this.f2857d.f2863b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return (this.f2872c == null || Build.VERSION.SDK_INT < 24) ? null : new C0838b(this.f2872c.getConstantState());
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2872c != null ? this.f2872c.getIntrinsicHeight() : this.f2857d.f2863b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2872c != null ? this.f2872c.getIntrinsicWidth() : this.f2857d.f2863b.getIntrinsicWidth();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f2872c != null ? this.f2872c.getOpacity() : this.f2857d.f2863b.getOpacity();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (this.f2872c != null) {
            C0535a.m20593a(this.f2872c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2847e);
                    int resourceId = m20840a.getResourceId(0, 0);
                    if (resourceId != 0) {
                        C0845i m19289a = C0845i.m19289a(resources, resourceId, theme);
                        m19289a.m19284a(false);
                        m19289a.setCallback(this.f2856b);
                        if (this.f2857d.f2863b != null) {
                            this.f2857d.f2863b.setCallback(null);
                        }
                        this.f2857d.f2863b = m19289a;
                    }
                    m20840a.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C0833a.f2848f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        if (this.f2858e == null) {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        m19321a(string, C0840e.m19313a(this.f2858e, resourceId2));
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f2857d.m19320a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f2872c != null ? C0535a.m20590b(this.f2872c) : this.f2857d.f2863b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f2872c != null ? ((AnimatedVectorDrawable) this.f2872c).isRunning() : this.f2857d.f2864c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f2872c != null ? this.f2872c.isStateful() : this.f2857d.f2863b.isStateful();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.f2872c != null) {
            this.f2872c.mutate();
        }
        return this;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f2872c != null) {
            this.f2872c.setBounds(rect);
        } else {
            this.f2857d.f2863b.setBounds(rect);
        }
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f2872c != null ? this.f2872c.setLevel(i) : this.f2857d.f2863b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        return this.f2872c != null ? this.f2872c.setState(iArr) : this.f2857d.f2863b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f2872c != null) {
            this.f2872c.setAlpha(i);
        } else {
            this.f2857d.f2863b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f2872c != null) {
            C0535a.m20591a(this.f2872c, z);
        } else {
            this.f2857d.f2863b.setAutoMirrored(z);
        }
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f2872c != null) {
            this.f2872c.setColorFilter(colorFilter);
        } else {
            this.f2857d.f2863b.setColorFilter(colorFilter);
        }
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTint(int i) {
        if (this.f2872c != null) {
            C0535a.m20597a(this.f2872c, i);
        } else {
            this.f2857d.f2863b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintList(ColorStateList colorStateList) {
        if (this.f2872c != null) {
            C0535a.m20595a(this.f2872c, colorStateList);
        } else {
            this.f2857d.f2863b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f2872c != null) {
            C0535a.m20592a(this.f2872c, mode);
        } else {
            this.f2857d.f2863b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible;
        if (this.f2872c != null) {
            visible = this.f2872c.setVisible(z, z2);
        } else {
            this.f2857d.f2863b.setVisible(z, z2);
            visible = super.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f2872c != null) {
            ((AnimatedVectorDrawable) this.f2872c).start();
        } else if (this.f2857d.f2864c.isStarted()) {
        } else {
            this.f2857d.f2864c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f2872c != null) {
            ((AnimatedVectorDrawable) this.f2872c).stop();
        } else {
            this.f2857d.f2864c.end();
        }
    }
}
