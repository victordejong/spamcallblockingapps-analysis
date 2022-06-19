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
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p015a.p016a.C0424g;
import androidx.p014c.C0374a;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.k.a.a.c */
/* loaded from: classes-dex2jar.jar:androidx/k/a/a/c.class */
public class C0865c extends AbstractC0874h implements AbstractC0864b {

    /* renamed from: a */
    ArrayList<Object> f2722a;

    /* renamed from: b */
    final Drawable.Callback f2723b;

    /* renamed from: d */
    private C0867a f2724d;

    /* renamed from: e */
    private Context f2725e;

    /* renamed from: f */
    private ArgbEvaluator f2726f;

    /* renamed from: g */
    private Animator.AnimatorListener f2727g;

    /* renamed from: androidx.k.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/c$a.class */
    public static class C0867a extends Drawable.ConstantState {

        /* renamed from: a */
        int f2729a;

        /* renamed from: b */
        C0875i f2730b;

        /* renamed from: c */
        AnimatorSet f2731c;

        /* renamed from: d */
        ArrayList<Animator> f2732d;

        /* renamed from: e */
        C0374a<Animator, String> f2733e;

        public C0867a(Context context, C0867a c0867a, Drawable.Callback callback, Resources resources) {
            if (c0867a != null) {
                this.f2729a = c0867a.f2729a;
                C0875i c0875i = c0867a.f2730b;
                if (c0875i != null) {
                    Drawable.ConstantState constantState = c0875i.getConstantState();
                    if (resources != null) {
                        this.f2730b = (C0875i) constantState.newDrawable(resources);
                    } else {
                        this.f2730b = (C0875i) constantState.newDrawable();
                    }
                    this.f2730b = (C0875i) this.f2730b.mutate();
                    this.f2730b.setCallback(callback);
                    this.f2730b.setBounds(c0867a.f2730b.getBounds());
                    this.f2730b.m5171a(false);
                }
                ArrayList<Animator> arrayList = c0867a.f2732d;
                if (arrayList == null) {
                    return;
                }
                int size = arrayList.size();
                this.f2732d = new ArrayList<>(size);
                this.f2733e = new C0374a<>(size);
                for (int i = 0; i < size; i++) {
                    Animator animator = c0867a.f2732d.get(i);
                    Animator clone = animator.clone();
                    String str = c0867a.f2733e.get(animator);
                    clone.setTarget(this.f2730b.m5172a(str));
                    this.f2732d.add(clone);
                    this.f2733e.put(clone, str);
                }
                m5207a();
            }
        }

        /* renamed from: a */
        public void m5207a() {
            if (this.f2731c == null) {
                this.f2731c = new AnimatorSet();
            }
            this.f2731c.playTogether(this.f2732d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2729a;
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
    private static class C0868b extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f2734a;

        public C0868b(Drawable.ConstantState constantState) {
            this.f2734a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f2734a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2734a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0865c c0865c = new C0865c();
            c0865c.f2739c = this.f2734a.newDrawable();
            c0865c.f2739c.setCallback(c0865c.f2723b);
            return c0865c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C0865c c0865c = new C0865c();
            c0865c.f2739c = this.f2734a.newDrawable(resources);
            c0865c.f2739c.setCallback(c0865c.f2723b);
            return c0865c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0865c c0865c = new C0865c();
            c0865c.f2739c = this.f2734a.newDrawable(resources, theme);
            c0865c.f2739c.setCallback(c0865c.f2723b);
            return c0865c;
        }
    }

    C0865c() {
        this(null, null, null);
    }

    private C0865c(Context context) {
        this(context, null, null);
    }

    private C0865c(Context context, C0867a c0867a, Resources resources) {
        this.f2726f = null;
        this.f2727g = null;
        this.f2722a = null;
        this.f2723b = new Drawable.Callback() { // from class: androidx.k.a.a.c.1
            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                C0865c.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                C0865c.this.scheduleSelf(runnable, j);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                C0865c.this.unscheduleSelf(runnable);
            }
        };
        this.f2725e = context;
        if (c0867a != null) {
            this.f2724d = c0867a;
        } else {
            this.f2724d = new C0867a(context, c0867a, this.f2723b, resources);
        }
    }

    /* renamed from: a */
    public static C0865c m5209a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0865c c0865c = new C0865c(context);
        c0865c.inflate(resources, xmlPullParser, attributeSet, theme);
        return c0865c;
    }

    /* renamed from: a */
    private void m5210a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m5210a(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if (!"fillColor".equals(propertyName) && !"strokeColor".equals(propertyName)) {
                return;
            }
            if (this.f2726f == null) {
                this.f2726f = new ArgbEvaluator();
            }
            objectAnimator.setEvaluator(this.f2726f);
        }
    }

    /* renamed from: a */
    private void m5208a(String str, Animator animator) {
        animator.setTarget(this.f2724d.f2730b.m5172a(str));
        if (Build.VERSION.SDK_INT < 21) {
            m5210a(animator);
        }
        if (this.f2724d.f2732d == null) {
            this.f2724d.f2732d = new ArrayList<>();
            this.f2724d.f2733e = new C0374a<>();
        }
        this.f2724d.f2732d.add(animator);
        this.f2724d.f2733e.put(animator, str);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        if (this.f2739c != null) {
            C0575a.m6132a(this.f2739c, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.f2739c != null) {
            return C0575a.m6125d(this.f2739c);
        }
        return false;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f2739c != null) {
            this.f2739c.draw(canvas);
            return;
        }
        this.f2724d.f2730b.draw(canvas);
        if (!this.f2724d.f2731c.isStarted()) {
            return;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2739c != null ? C0575a.m6126c(this.f2739c) : this.f2724d.f2730b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f2739c != null ? this.f2739c.getChangingConfigurations() : super.getChangingConfigurations() | this.f2724d.f2729a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f2739c != null ? C0575a.m6124e(this.f2739c) : this.f2724d.f2730b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f2739c == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C0868b(this.f2739c.getConstantState());
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2739c != null ? this.f2739c.getIntrinsicHeight() : this.f2724d.f2730b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2739c != null ? this.f2739c.getIntrinsicWidth() : this.f2724d.f2730b.getIntrinsicWidth();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f2739c != null ? this.f2739c.getOpacity() : this.f2724d.f2730b.getOpacity();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (this.f2739c != null) {
            C0575a.m6131a(this.f2739c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2714e);
                    int resourceId = m6696a.getResourceId(0, 0);
                    if (resourceId != 0) {
                        C0875i m5176a = C0875i.m5176a(resources, resourceId, theme);
                        m5176a.m5171a(false);
                        m5176a.setCallback(this.f2723b);
                        if (this.f2724d.f2730b != null) {
                            this.f2724d.f2730b.setCallback(null);
                        }
                        this.f2724d.f2730b = m5176a;
                    }
                    m6696a.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C0863a.f2715f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f2725e;
                        if (context == null) {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        m5208a(string, C0870e.m5200a(context, resourceId2));
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f2724d.m5207a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f2739c != null ? C0575a.m6128b(this.f2739c) : this.f2724d.f2730b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f2739c != null ? ((AnimatedVectorDrawable) this.f2739c).isRunning() : this.f2724d.f2731c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f2739c != null ? this.f2739c.isStateful() : this.f2724d.f2730b.isStateful();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.f2739c != null) {
            this.f2739c.mutate();
        }
        return this;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f2739c != null) {
            this.f2739c.setBounds(rect);
        } else {
            this.f2724d.f2730b.setBounds(rect);
        }
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f2739c != null ? this.f2739c.setLevel(i) : this.f2724d.f2730b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        return this.f2739c != null ? this.f2739c.setState(iArr) : this.f2724d.f2730b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f2739c != null) {
            this.f2739c.setAlpha(i);
        } else {
            this.f2724d.f2730b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f2739c != null) {
            C0575a.m6129a(this.f2739c, z);
        } else {
            this.f2724d.f2730b.setAutoMirrored(z);
        }
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f2739c != null) {
            this.f2739c.setColorFilter(colorFilter);
        } else {
            this.f2724d.f2730b.setColorFilter(colorFilter);
        }
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTint(int i) {
        if (this.f2739c != null) {
            C0575a.m6135a(this.f2739c, i);
        } else {
            this.f2724d.f2730b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintList(ColorStateList colorStateList) {
        if (this.f2739c != null) {
            C0575a.m6133a(this.f2739c, colorStateList);
        } else {
            this.f2724d.f2730b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f2739c != null) {
            C0575a.m6130a(this.f2739c, mode);
        } else {
            this.f2724d.f2730b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.f2739c != null) {
            return this.f2739c.setVisible(z, z2);
        }
        this.f2724d.f2730b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f2739c != null) {
            ((AnimatedVectorDrawable) this.f2739c).start();
        } else if (this.f2724d.f2731c.isStarted()) {
        } else {
            this.f2724d.f2731c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f2739c != null) {
            ((AnimatedVectorDrawable) this.f2739c).stop();
        } else {
            this.f2724d.f2731c.end();
        }
    }
}
