package androidx.l.a.a;

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
import androidx.core.content.res.g;
import androidx.l.a.a.b;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/l/a/a/c.class */
public final class c extends h implements androidx.l.a.a.b {

    /* renamed from: a  reason: collision with root package name */
    ArrayList<b.a> f2487a;

    /* renamed from: b  reason: collision with root package name */
    final Drawable.Callback f2488b;

    /* renamed from: d  reason: collision with root package name */
    private a f2489d;
    private Context e;
    private ArgbEvaluator f;
    private Animator.AnimatorListener g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/c$a.class */
    public static final class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        int f2491a;

        /* renamed from: b  reason: collision with root package name */
        i f2492b;

        /* renamed from: c  reason: collision with root package name */
        AnimatorSet f2493c;

        /* renamed from: d  reason: collision with root package name */
        ArrayList<Animator> f2494d;
        androidx.b.a<Animator, String> e;

        public a(Context context, a aVar, Drawable.Callback callback, Resources resources) {
            if (aVar != null) {
                this.f2491a = aVar.f2491a;
                i iVar = aVar.f2492b;
                if (iVar != null) {
                    Drawable.ConstantState constantState = iVar.getConstantState();
                    if (resources != null) {
                        this.f2492b = (i) constantState.newDrawable(resources);
                    } else {
                        this.f2492b = (i) constantState.newDrawable();
                    }
                    i iVar2 = (i) this.f2492b.mutate();
                    this.f2492b = iVar2;
                    iVar2.setCallback(callback);
                    this.f2492b.setBounds(aVar.f2492b.getBounds());
                    this.f2492b.f2502b = false;
                }
                ArrayList<Animator> arrayList = aVar.f2494d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f2494d = new ArrayList<>(size);
                    this.e = new androidx.b.a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = aVar.f2494d.get(i);
                        Animator clone = animator.clone();
                        String str = aVar.e.get(animator);
                        clone.setTarget(this.f2492b.a(str));
                        this.f2494d.add(clone);
                        this.e.put(clone, str);
                    }
                    a();
                }
            }
        }

        public final void a() {
            if (this.f2493c == null) {
                this.f2493c = new AnimatorSet();
            }
            this.f2493c.playTogether(this.f2494d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f2491a;
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

    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/c$b.class */
    static final class b extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        private final Drawable.ConstantState f2495a;

        public b(Drawable.ConstantState constantState) {
            this.f2495a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f2495a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f2495a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            c cVar = new c();
            cVar.f2500c = this.f2495a.newDrawable();
            cVar.f2500c.setCallback(cVar.f2488b);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            c cVar = new c();
            cVar.f2500c = this.f2495a.newDrawable(resources);
            cVar.f2500c.setCallback(cVar.f2488b);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            cVar.f2500c = this.f2495a.newDrawable(resources, theme);
            cVar.f2500c.setCallback(cVar.f2488b);
            return cVar;
        }
    }

    c() {
        this(null, null, null);
    }

    private c(Context context) {
        this(context, null, null);
    }

    private c(Context context, a aVar, Resources resources) {
        this.f = null;
        this.g = null;
        this.f2487a = null;
        Drawable.Callback callback = new Drawable.Callback() { // from class: androidx.l.a.a.c.1
            @Override // android.graphics.drawable.Drawable.Callback
            public final void invalidateDrawable(Drawable drawable) {
                c.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                c.this.scheduleSelf(runnable, j);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                c.this.unscheduleSelf(runnable);
            }
        };
        this.f2488b = callback;
        this.e = context;
        if (aVar != null) {
            this.f2489d = aVar;
        } else {
            this.f2489d = new a(context, aVar, callback, resources);
        }
    }

    public static c a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        c cVar = new c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    private void a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                a(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f == null) {
                    this.f = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f);
            }
        }
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        if (this.f2500c != null) {
            return androidx.core.graphics.drawable.a.c(this.f2500c);
        }
        return false;
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f2500c != null) {
            this.f2500c.draw(canvas);
            return;
        }
        this.f2489d.f2492b.draw(canvas);
        if (this.f2489d.f2493c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f2500c != null ? androidx.core.graphics.drawable.a.b(this.f2500c) : this.f2489d.f2492b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return this.f2500c != null ? this.f2500c.getChangingConfigurations() : super.getChangingConfigurations() | this.f2489d.f2491a;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f2500c != null ? androidx.core.graphics.drawable.a.d(this.f2500c) : this.f2489d.f2492b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f2500c == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new b(this.f2500c.getConstantState());
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f2500c != null ? this.f2500c.getIntrinsicHeight() : this.f2489d.f2492b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f2500c != null ? this.f2500c.getIntrinsicWidth() : this.f2489d.f2492b.getIntrinsicWidth();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f2500c != null ? this.f2500c.getOpacity() : this.f2489d.f2492b.getOpacity();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray a2 = g.a(resources, theme, attributeSet, androidx.l.a.a.a.e);
                    int resourceId = a2.getResourceId(0, 0);
                    if (resourceId != 0) {
                        i a3 = i.a(resources, resourceId, theme);
                        a3.f2502b = false;
                        a3.setCallback(this.f2488b);
                        if (this.f2489d.f2492b != null) {
                            this.f2489d.f2492b.setCallback(null);
                        }
                        this.f2489d.f2492b = a3;
                    }
                    a2.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, androidx.l.a.a.a.f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.e;
                        if (context != null) {
                            Animator loadAnimator = Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, resourceId2) : e.a(context, context.getResources(), context.getTheme(), resourceId2);
                            loadAnimator.setTarget(this.f2489d.f2492b.a(string));
                            if (Build.VERSION.SDK_INT < 21) {
                                a(loadAnimator);
                            }
                            if (this.f2489d.f2494d == null) {
                                this.f2489d.f2494d = new ArrayList<>();
                                this.f2489d.e = new androidx.b.a<>();
                            }
                            this.f2489d.f2494d.add(loadAnimator);
                            this.f2489d.e.put(loadAnimator, string);
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
        this.f2489d.a();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f2500c != null ? androidx.core.graphics.drawable.a.a(this.f2500c) : this.f2489d.f2492b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f2500c != null ? ((AnimatedVectorDrawable) this.f2500c).isRunning() : this.f2489d.f2493c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return this.f2500c != null ? this.f2500c.isStateful() : this.f2489d.f2492b.isStateful();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (this.f2500c != null) {
            this.f2500c.mutate();
        }
        return this;
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        if (this.f2500c != null) {
            this.f2500c.setBounds(rect);
        } else {
            this.f2489d.f2492b.setBounds(rect);
        }
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    protected final boolean onLevelChange(int i) {
        return this.f2500c != null ? this.f2500c.setLevel(i) : this.f2489d.f2492b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        return this.f2500c != null ? this.f2500c.setState(iArr) : this.f2489d.f2492b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f2500c != null) {
            this.f2500c.setAlpha(i);
        } else {
            this.f2489d.f2492b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, z);
        } else {
            this.f2489d.f2492b.setAutoMirrored(z);
        }
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f2500c != null) {
            this.f2500c.setColorFilter(colorFilter);
        } else {
            this.f2489d.f2492b.setColorFilter(colorFilter);
        }
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTint(int i) {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, i);
        } else {
            this.f2489d.f2492b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, colorStateList);
        } else {
            this.f2489d.f2492b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, mode);
        } else {
            this.f2489d.f2492b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        if (this.f2500c != null) {
            return this.f2500c.setVisible(z, z2);
        }
        this.f2489d.f2492b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        if (this.f2500c != null) {
            ((AnimatedVectorDrawable) this.f2500c).start();
        } else if (!this.f2489d.f2493c.isStarted()) {
            this.f2489d.f2493c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        if (this.f2500c != null) {
            ((AnimatedVectorDrawable) this.f2500c).stop();
        } else {
            this.f2489d.f2493c.end();
        }
    }
}
