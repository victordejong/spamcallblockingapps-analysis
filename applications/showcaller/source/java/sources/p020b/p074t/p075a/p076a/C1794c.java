package p020b.p074t.p075a.p076a;

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
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.core.content.p007d.C0614g;
import androidx.core.graphics.drawable.C0615a;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import p020b.p036e.C1489a;
/* renamed from: b.t.a.a.c */
/* loaded from: classes-dex2jar.jar:b/t/a/a/c.class */
public class C1794c extends AbstractC1803h implements Animatable {

    /* renamed from: e */
    private C1796b f6653e;

    /* renamed from: f */
    private Context f6654f;

    /* renamed from: g */
    private ArgbEvaluator f6655g;

    /* renamed from: h */
    private Animator.AnimatorListener f6656h;

    /* renamed from: i */
    ArrayList<AbstractC1793b> f6657i;

    /* renamed from: j */
    final Drawable.Callback f6658j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.t.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/c$a.class */
    public class C1795a implements Drawable.Callback {
        C1795a() {
            C1794c.this = r4;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            C1794c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C1794c.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C1794c.this.unscheduleSelf(runnable);
        }
    }

    /* renamed from: b.t.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/c$b.class */
    public static class C1796b extends Drawable.ConstantState {

        /* renamed from: a */
        int f6660a;

        /* renamed from: b */
        C1804i f6661b;

        /* renamed from: c */
        AnimatorSet f6662c;

        /* renamed from: d */
        ArrayList<Animator> f6663d;

        /* renamed from: e */
        C1489a<Animator, String> f6664e;

        public C1796b(Context context, C1796b c1796b, Drawable.Callback callback, Resources resources) {
            if (c1796b != null) {
                this.f6660a = c1796b.f6660a;
                C1804i c1804i = c1796b.f6661b;
                if (c1804i != null) {
                    Drawable.ConstantState constantState = c1804i.getConstantState();
                    if (resources != null) {
                        this.f6661b = (C1804i) constantState.newDrawable(resources);
                    } else {
                        this.f6661b = (C1804i) constantState.newDrawable();
                    }
                    C1804i c1804i2 = (C1804i) this.f6661b.mutate();
                    this.f6661b = c1804i2;
                    c1804i2.setCallback(callback);
                    this.f6661b.setBounds(c1796b.f6661b.getBounds());
                    this.f6661b.m28848h(false);
                }
                ArrayList<Animator> arrayList = c1796b.f6663d;
                if (arrayList == null) {
                    return;
                }
                int size = arrayList.size();
                this.f6663d = new ArrayList<>(size);
                this.f6664e = new C1489a<>(size);
                for (int i = 0; i < size; i++) {
                    Animator animator = c1796b.f6663d.get(i);
                    Animator clone = animator.clone();
                    String str = c1796b.f6664e.get(animator);
                    clone.setTarget(this.f6661b.m28852d(str));
                    this.f6663d.add(clone);
                    this.f6664e.put(clone, str);
                }
                m28883a();
            }
        }

        /* renamed from: a */
        public void m28883a() {
            if (this.f6662c == null) {
                this.f6662c = new AnimatorSet();
            }
            this.f6662c.playTogether(this.f6663d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f6660a;
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

    /* renamed from: b.t.a.a.c$c */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/c$c.class */
    private static class C1797c extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f6665a;

        public C1797c(Drawable.ConstantState constantState) {
            this.f6665a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f6665a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f6665a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C1794c c1794c = new C1794c();
            Drawable newDrawable = this.f6665a.newDrawable();
            c1794c.f6670d = newDrawable;
            newDrawable.setCallback(c1794c.f6658j);
            return c1794c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C1794c c1794c = new C1794c();
            Drawable newDrawable = this.f6665a.newDrawable(resources);
            c1794c.f6670d = newDrawable;
            newDrawable.setCallback(c1794c.f6658j);
            return c1794c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C1794c c1794c = new C1794c();
            Drawable newDrawable = this.f6665a.newDrawable(resources, theme);
            c1794c.f6670d = newDrawable;
            newDrawable.setCallback(c1794c.f6658j);
            return c1794c;
        }
    }

    C1794c() {
        this(null, null, null);
    }

    private C1794c(Context context) {
        this(context, null, null);
    }

    private C1794c(Context context, C1796b c1796b, Resources resources) {
        this.f6655g = null;
        this.f6656h = null;
        this.f6657i = null;
        C1795a c1795a = new C1795a();
        this.f6658j = c1795a;
        this.f6654f = context;
        if (c1796b != null) {
            this.f6653e = c1796b;
        } else {
            this.f6653e = new C1796b(context, c1796b, c1795a, resources);
        }
    }

    /* renamed from: a */
    public static C1794c m28886a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C1794c c1794c = new C1794c(context);
        c1794c.inflate(resources, xmlPullParser, attributeSet, theme);
        return c1794c;
    }

    /* renamed from: b */
    private void m28885b(String str, Animator animator) {
        animator.setTarget(this.f6653e.f6661b.m28852d(str));
        if (Build.VERSION.SDK_INT < 21) {
            m28884c(animator);
        }
        C1796b c1796b = this.f6653e;
        if (c1796b.f6663d == null) {
            c1796b.f6663d = new ArrayList<>();
            this.f6653e.f6664e = new C1489a<>();
        }
        this.f6653e.f6663d.add(animator);
        this.f6653e.f6664e.put(animator, str);
    }

    /* renamed from: c */
    private void m28884c(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m28884c(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if (!"fillColor".equals(propertyName) && !"strokeColor".equals(propertyName)) {
                return;
            }
            if (this.f6655g == null) {
                this.f6655g = new ArgbEvaluator();
            }
            objectAnimator.setEvaluator(this.f6655g);
        }
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33229a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            return C0615a.m33228b(drawable);
        }
        return false;
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f6653e.f6661b.draw(canvas);
        if (!this.f6653e.f6662c.isStarted()) {
            return;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f6670d;
        return drawable != null ? C0615a.m33226d(drawable) : this.f6653e.f6661b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f6653e.f6660a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f6670d;
        return drawable != null ? C0615a.m33225e(drawable) : this.f6653e.f6661b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f6670d == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C1797c(this.f6670d.getConstantState());
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f6653e.f6661b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f6653e.f6661b.getIntrinsicWidth();
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.getOpacity() : this.f6653e.f6661b.getOpacity();
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33223g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6645e);
                    int resourceId = m33249k.getResourceId(0, 0);
                    if (resourceId != 0) {
                        C1804i m28854b = C1804i.m28854b(resources, resourceId, theme);
                        m28854b.m28848h(false);
                        m28854b.setCallback(this.f6658j);
                        C1804i c1804i = this.f6653e.f6661b;
                        if (c1804i != null) {
                            c1804i.setCallback(null);
                        }
                        this.f6653e.f6661b = m28854b;
                    }
                    m33249k.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C1792a.f6646f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f6654f;
                        if (context == null) {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        m28885b(string, C1799e.m28872i(context, resourceId2));
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f6653e.m28883a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f6670d;
        return drawable != null ? C0615a.m33222h(drawable) : this.f6653e.f6661b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f6670d;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f6653e.f6662c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.isStateful() : this.f6653e.f6661b.isStateful();
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f6653e.f6661b.setBounds(rect);
        }
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.setLevel(i) : this.f6653e.f6661b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.setState(iArr) : this.f6653e.f6661b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f6653e.f6661b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33220j(drawable, z);
        } else {
            this.f6653e.f6661b.setAutoMirrored(z);
        }
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f6653e.f6661b.setColorFilter(colorFilter);
        }
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTint(int i) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33216n(drawable, i);
        } else {
            this.f6653e.f6661b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33215o(drawable, colorStateList);
        } else {
            this.f6653e.f6661b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33214p(drawable, mode);
        } else {
            this.f6653e.f6661b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f6653e.f6661b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (this.f6653e.f6662c.isStarted()) {
        } else {
            this.f6653e.f6662c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f6653e.f6662c.end();
        }
    }
}
