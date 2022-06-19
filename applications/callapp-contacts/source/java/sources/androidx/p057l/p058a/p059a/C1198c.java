package androidx.p057l.p058a.p059a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
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
import androidx.core.content.res.C0810g;
import androidx.core.graphics.drawable.C0840a;
import androidx.p023b.C0428a;
import androidx.p057l.p058a.p059a.AbstractC1196b;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.l.a.a.c */
/* loaded from: classes-dex2jar.jar:androidx/l/a/a/c.class */
public final class C1198c extends AbstractC1207h implements AbstractC1196b {

    /* renamed from: a */
    ArrayList<AbstractC1196b.AbstractC1197a> f4676a;

    /* renamed from: b */
    final Drawable.Callback f4677b;

    /* renamed from: d */
    private C1200a f4678d;

    /* renamed from: e */
    private Context f4679e;

    /* renamed from: f */
    private ArgbEvaluator f4680f;

    /* renamed from: g */
    private Animator.AnimatorListener f4681g;

    /* renamed from: androidx.l.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/c$a.class */
    public static final class C1200a extends Drawable.ConstantState {

        /* renamed from: a */
        int f4683a;

        /* renamed from: b */
        C1208i f4684b;

        /* renamed from: c */
        AnimatorSet f4685c;

        /* renamed from: d */
        ArrayList<Animator> f4686d;

        /* renamed from: e */
        C0428a<Animator, String> f4687e;

        public C1200a(Context context, C1200a c1200a, Drawable.Callback callback, Resources resources) {
            if (c1200a != null) {
                this.f4683a = c1200a.f4683a;
                C1208i c1208i = c1200a.f4684b;
                if (c1208i != null) {
                    Drawable.ConstantState constantState = c1208i.getConstantState();
                    if (resources != null) {
                        this.f4684b = (C1208i) constantState.newDrawable(resources);
                    } else {
                        this.f4684b = (C1208i) constantState.newDrawable();
                    }
                    C1208i c1208i2 = (C1208i) this.f4684b.mutate();
                    this.f4684b = c1208i2;
                    c1208i2.setCallback(callback);
                    this.f4684b.setBounds(c1200a.f4684b.getBounds());
                    this.f4684b.f4695b = false;
                }
                ArrayList<Animator> arrayList = c1200a.f4686d;
                if (arrayList == null) {
                    return;
                }
                int size = arrayList.size();
                this.f4686d = new ArrayList<>(size);
                this.f4687e = new C0428a<>(size);
                for (int i = 0; i < size; i++) {
                    Animator animator = c1200a.f4686d.get(i);
                    Animator clone = animator.clone();
                    String str = c1200a.f4687e.get(animator);
                    clone.setTarget(this.f4684b.m43353a(str));
                    this.f4686d.add(clone);
                    this.f4687e.put(clone, str);
                }
                m43372a();
            }
        }

        /* renamed from: a */
        public final void m43372a() {
            if (this.f4685c == null) {
                this.f4685c = new AnimatorSet();
            }
            this.f4685c.playTogether(this.f4686d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f4683a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    /* renamed from: androidx.l.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/c$b.class */
    static final class C1201b extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f4688a;

        public C1201b(Drawable.ConstantState constantState) {
            this.f4688a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f4688a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f4688a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C1198c c1198c = new C1198c();
            c1198c.f4693c = this.f4688a.newDrawable();
            c1198c.f4693c.setCallback(c1198c.f4677b);
            return c1198c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            C1198c c1198c = new C1198c();
            c1198c.f4693c = this.f4688a.newDrawable(resources);
            c1198c.f4693c.setCallback(c1198c.f4677b);
            return c1198c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C1198c c1198c = new C1198c();
            c1198c.f4693c = this.f4688a.newDrawable(resources, theme);
            c1198c.f4693c.setCallback(c1198c.f4677b);
            return c1198c;
        }
    }

    C1198c() {
        this(null, null, null);
    }

    private C1198c(Context context) {
        this(context, null, null);
    }

    private C1198c(Context context, C1200a c1200a, Resources resources) {
        this.f4680f = null;
        this.f4681g = null;
        this.f4676a = null;
        Drawable.Callback callback = new Drawable.Callback() { // from class: androidx.l.a.a.c.1
            @Override // android.graphics.drawable.Drawable.Callback
            public final void invalidateDrawable(Drawable drawable) {
                C1198c.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                C1198c.this.scheduleSelf(runnable, j);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                C1198c.this.unscheduleSelf(runnable);
            }
        };
        this.f4677b = callback;
        this.f4679e = context;
        if (c1200a != null) {
            this.f4678d = c1200a;
        } else {
            this.f4678d = new C1200a(context, c1200a, callback, resources);
        }
    }

    /* renamed from: a */
    public static C1198c m43373a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C1198c c1198c = new C1198c(context);
        c1198c.inflate(resources, xmlPullParser, attributeSet, theme);
        return c1198c;
    }

    /* renamed from: a */
    private void m43374a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m43374a(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if (!"fillColor".equals(propertyName) && !"strokeColor".equals(propertyName)) {
                return;
            }
            if (this.f4680f == null) {
                this.f4680f = new ArgbEvaluator();
            }
            objectAnimator.setEvaluator(this.f4680f);
        }
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        if (this.f4693c != null) {
            C0840a.m44354a(this.f4693c, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        if (this.f4693c != null) {
            return C0840a.m44348c(this.f4693c);
        }
        return false;
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f4693c != null) {
            this.f4693c.draw(canvas);
            return;
        }
        this.f4678d.f4684b.draw(canvas);
        if (!this.f4678d.f4685c.isStarted()) {
            return;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f4693c != null ? C0840a.m44350b(this.f4693c) : this.f4678d.f4684b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return this.f4693c != null ? this.f4693c.getChangingConfigurations() : super.getChangingConfigurations() | this.f4678d.f4683a;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f4693c != null ? C0840a.m44347d(this.f4693c) : this.f4678d.f4684b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f4693c == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C1201b(this.f4693c.getConstantState());
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f4693c != null ? this.f4693c.getIntrinsicHeight() : this.f4678d.f4684b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f4693c != null ? this.f4693c.getIntrinsicWidth() : this.f4678d.f4684b.getIntrinsicWidth();
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f4693c != null ? this.f4693c.getOpacity() : this.f4678d.f4684b.getOpacity();
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (this.f4693c != null) {
            C0840a.m44353a(this.f4693c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4668e);
                    int resourceId = m44459a.getResourceId(0, 0);
                    if (resourceId != 0) {
                        C1208i m43355a = C1208i.m43355a(resources, resourceId, theme);
                        m43355a.f4695b = false;
                        m43355a.setCallback(this.f4677b);
                        if (this.f4678d.f4684b != null) {
                            this.f4678d.f4684b.setCallback(null);
                        }
                        this.f4678d.f4684b = m43355a;
                    }
                    m44459a.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C1195a.f4669f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f4679e;
                        if (context == null) {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        Animator loadAnimator = Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, resourceId2) : C1203e.m43367a(context, context.getResources(), context.getTheme(), resourceId2);
                        loadAnimator.setTarget(this.f4678d.f4684b.m43353a(string));
                        if (Build.VERSION.SDK_INT < 21) {
                            m43374a(loadAnimator);
                        }
                        if (this.f4678d.f4686d == null) {
                            this.f4678d.f4686d = new ArrayList<>();
                            this.f4678d.f4687e = new C0428a<>();
                        }
                        this.f4678d.f4686d.add(loadAnimator);
                        this.f4678d.f4687e.put(loadAnimator, string);
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f4678d.m43372a();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f4693c != null ? C0840a.m44359a(this.f4693c) : this.f4678d.f4684b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f4693c != null ? ((AnimatedVectorDrawable) this.f4693c).isRunning() : this.f4678d.f4685c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return this.f4693c != null ? this.f4693c.isStateful() : this.f4678d.f4684b.isStateful();
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (this.f4693c != null) {
            this.f4693c.mutate();
        }
        return this;
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        if (this.f4693c != null) {
            this.f4693c.setBounds(rect);
        } else {
            this.f4678d.f4684b.setBounds(rect);
        }
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    protected final boolean onLevelChange(int i) {
        return this.f4693c != null ? this.f4693c.setLevel(i) : this.f4678d.f4684b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        return this.f4693c != null ? this.f4693c.setState(iArr) : this.f4678d.f4684b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f4693c != null) {
            this.f4693c.setAlpha(i);
        } else {
            this.f4678d.f4684b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        if (this.f4693c != null) {
            C0840a.m44351a(this.f4693c, z);
        } else {
            this.f4678d.f4684b.setAutoMirrored(z);
        }
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f4693c != null) {
            this.f4693c.setColorFilter(colorFilter);
        } else {
            this.f4678d.f4684b.setColorFilter(colorFilter);
        }
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTint(int i) {
        if (this.f4693c != null) {
            C0840a.m44357a(this.f4693c, i);
        } else {
            this.f4678d.f4684b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f4693c != null) {
            C0840a.m44355a(this.f4693c, colorStateList);
        } else {
            this.f4678d.f4684b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f4693c != null) {
            C0840a.m44352a(this.f4693c, mode);
        } else {
            this.f4678d.f4684b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        if (this.f4693c != null) {
            return this.f4693c.setVisible(z, z2);
        }
        this.f4678d.f4684b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        if (this.f4693c != null) {
            ((AnimatedVectorDrawable) this.f4693c).start();
        } else if (this.f4678d.f4685c.isStarted()) {
        } else {
            this.f4678d.f4685c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        if (this.f4693c != null) {
            ((AnimatedVectorDrawable) this.f4693c).stop();
        } else {
            this.f4678d.f4685c.end();
        }
    }
}
