package androidx.appcompat.b.a;

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
import androidx.appcompat.b.a.b;
import androidx.appcompat.b.a.e;
import androidx.appcompat.c.a;
import androidx.appcompat.widget.t;
import androidx.b.h;
import androidx.core.content.res.g;
import androidx.l.a.a.i;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a.class */
public class a extends androidx.appcompat.b.a.e implements androidx.core.graphics.drawable.b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f700a = "a";

    /* renamed from: b  reason: collision with root package name */
    private b f701b;

    /* renamed from: c  reason: collision with root package name */
    private f f702c;

    /* renamed from: d  reason: collision with root package name */
    private int f703d;
    private int e;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$a.class */
    public static final class C0021a extends f {

        /* renamed from: a  reason: collision with root package name */
        private final Animatable f704a;

        C0021a(Animatable animatable) {
            super();
            this.f704a = animatable;
        }

        @Override // androidx.appcompat.b.a.a.f
        public final void a() {
            this.f704a.start();
        }

        @Override // androidx.appcompat.b.a.a.f
        public final void b() {
            this.f704a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$b.class */
    public static final class b extends e.a {

        /* renamed from: a  reason: collision with root package name */
        androidx.b.d<Long> f705a;

        /* renamed from: b  reason: collision with root package name */
        h<Integer> f706b;

        b(b bVar, a aVar, Resources resources) {
            super(bVar, aVar, resources);
            if (bVar != null) {
                this.f705a = bVar.f705a;
                this.f706b = bVar.f706b;
                return;
            }
            this.f705a = new androidx.b.d<>();
            this.f706b = new h<>();
        }

        static long a(int i, int i2) {
            return i2 | (i << 32);
        }

        final int a(int i) {
            if (i < 0) {
                return 0;
            }
            return this.f706b.a(i, 0).intValue();
        }

        final int a(int i, int i2, Drawable drawable, boolean z) {
            int a2 = super.a(drawable);
            long a3 = a(i, i2);
            long j = z ? 8589934592L : 0L;
            long j2 = a2;
            this.f705a.c(a3, Long.valueOf(j2 | j));
            if (z) {
                this.f705a.c(a(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return a2;
        }

        final int a(int[] iArr) {
            int b2 = super.b(iArr);
            return b2 >= 0 ? b2 : super.b(StateSet.WILD_CARD);
        }

        final int a(int[] iArr, Drawable drawable, int i) {
            int a2 = a(drawable);
            this.L[a2] = iArr;
            this.f706b.b(a2, Integer.valueOf(i));
            return a2;
        }

        @Override // androidx.appcompat.b.a.e.a, androidx.appcompat.b.a.b.AbstractC0022b
        final void a() {
            this.f705a = this.f705a.clone();
            this.f706b = this.f706b.clone();
        }

        @Override // androidx.appcompat.b.a.e.a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new a(this, null);
        }

        @Override // androidx.appcompat.b.a.e.a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new a(this, resources);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$c.class */
    public static final class c extends f {

        /* renamed from: a  reason: collision with root package name */
        private final androidx.l.a.a.c f707a;

        c(androidx.l.a.a.c cVar) {
            super();
            this.f707a = cVar;
        }

        @Override // androidx.appcompat.b.a.a.f
        public final void a() {
            this.f707a.start();
        }

        @Override // androidx.appcompat.b.a.a.f
        public final void b() {
            this.f707a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$d.class */
    public static final class d extends f {

        /* renamed from: a  reason: collision with root package name */
        private final ObjectAnimator f708a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f709b;

        d(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            e eVar = new e(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(eVar.f710a);
            ofInt.setInterpolator(eVar);
            this.f709b = z2;
            this.f708a = ofInt;
        }

        @Override // androidx.appcompat.b.a.a.f
        public final void a() {
            this.f708a.start();
        }

        @Override // androidx.appcompat.b.a.a.f
        public final void b() {
            this.f708a.cancel();
        }

        @Override // androidx.appcompat.b.a.a.f
        public final boolean c() {
            return this.f709b;
        }

        @Override // androidx.appcompat.b.a.a.f
        public final void d() {
            this.f708a.reverse();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$e.class */
    static final class e implements TimeInterpolator {

        /* renamed from: a  reason: collision with root package name */
        int f710a;

        /* renamed from: b  reason: collision with root package name */
        private int[] f711b;

        /* renamed from: c  reason: collision with root package name */
        private int f712c;

        e(AnimationDrawable animationDrawable, boolean z) {
            a(animationDrawable, z);
        }

        private int a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f712c = numberOfFrames;
            int[] iArr = this.f711b;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f711b = new int[numberOfFrames];
            }
            int[] iArr2 = this.f711b;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f710a = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            int i = (int) ((f * this.f710a) + 0.5f);
            int i2 = this.f712c;
            int[] iArr = this.f711b;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f710a : BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$f.class */
    public static abstract class f {
        private f() {
        }

        public abstract void a();

        public abstract void b();

        public boolean c() {
            return false;
        }

        public void d() {
        }
    }

    public a() {
        this(null, null);
    }

    a(b bVar, Resources resources) {
        super(null);
        this.f703d = -1;
        this.e = -1;
        a(new b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    public static a a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            a aVar = new a();
            TypedArray a2 = g.a(resources, theme, attributeSet, a.b.AnimatedStateListDrawableCompat);
            aVar.setVisible(a2.getBoolean(a.b.AnimatedStateListDrawableCompat_android_visible, true), true);
            b bVar = aVar.f701b;
            if (Build.VERSION.SDK_INT >= 21) {
                bVar.f |= a2.getChangingConfigurations();
            }
            bVar.k = a2.getBoolean(a.b.AnimatedStateListDrawableCompat_android_variablePadding, bVar.k);
            bVar.n = a2.getBoolean(a.b.AnimatedStateListDrawableCompat_android_constantSize, bVar.n);
            bVar.C = a2.getInt(a.b.AnimatedStateListDrawableCompat_android_enterFadeDuration, bVar.C);
            bVar.D = a2.getInt(a.b.AnimatedStateListDrawableCompat_android_exitFadeDuration, bVar.D);
            aVar.setDither(a2.getBoolean(a.b.AnimatedStateListDrawableCompat_android_dither, bVar.z));
            aVar.a(resources);
            a2.recycle();
            aVar.b(context, resources, xmlPullParser, attributeSet, theme);
            aVar.onStateChange(aVar.getState());
            return aVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    private void b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
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
                        TypedArray a2 = g.a(resources, theme, attributeSet, a.b.AnimatedStateListDrawableItem);
                        int resourceId = a2.getResourceId(a.b.AnimatedStateListDrawableItem_android_id, 0);
                        Drawable drawable = null;
                        int resourceId2 = a2.getResourceId(a.b.AnimatedStateListDrawableItem_android_drawable, -1);
                        if (resourceId2 > 0) {
                            drawable = t.a().a(context, resourceId2);
                        }
                        a2.recycle();
                        int attributeCount = attributeSet.getAttributeCount();
                        int[] iArr = new int[attributeCount];
                        int i = 0;
                        for (int i2 = 0; i2 < attributeCount; i2++) {
                            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                            i = i;
                            if (attributeNameResource != 0) {
                                i = i;
                                if (attributeNameResource != 16842960) {
                                    i = i;
                                    if (attributeNameResource != 16843161) {
                                        iArr[i] = attributeSet.getAttributeBooleanValue(i2, false) ? attributeNameResource : -attributeNameResource;
                                        i++;
                                    }
                                }
                            }
                        }
                        int[] trimStateSet = StateSet.trimStateSet(iArr, i);
                        Drawable drawable2 = drawable;
                        if (drawable == null) {
                            do {
                                next = xmlPullParser.next();
                            } while (next == 4);
                            if (next == 2) {
                                drawable2 = xmlPullParser.getName().equals("vector") ? i.a(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                            } else {
                                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                            }
                        }
                        if (drawable2 != null) {
                            this.f701b.a(trimStateSet, drawable2, resourceId);
                        } else {
                            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                    } else if (xmlPullParser.getName().equals("transition")) {
                        c(context, resources, xmlPullParser, attributeSet, theme);
                    }
                }
            } else {
                return;
            }
        }
    }

    private int c(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray a2 = g.a(resources, theme, attributeSet, a.b.AnimatedStateListDrawableTransition);
        int resourceId = a2.getResourceId(a.b.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = a2.getResourceId(a.b.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = a2.getResourceId(a.b.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable a3 = resourceId3 > 0 ? t.a().a(context, resourceId3) : null;
        boolean z = a2.getBoolean(a.b.AnimatedStateListDrawableTransition_android_reversible, false);
        a2.recycle();
        Drawable drawable = a3;
        if (a3 == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                drawable = xmlPullParser.getName().equals("animated-vector") ? androidx.l.a.a.c.a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
        }
        if (drawable == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        } else if (resourceId != -1 && resourceId2 != -1) {
            return this.f701b.a(resourceId, resourceId2, drawable, z);
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public b b() {
        return new b(this.f701b, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b
    public final void a(b.AbstractC0022b bVar) {
        super.a(bVar);
        if (bVar instanceof b) {
            this.f701b = (b) bVar;
        }
    }

    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getOutline(Outline outline) {
        super.getOutline(outline);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        f fVar = this.f702c;
        if (fVar != null) {
            fVar.b();
            this.f702c = null;
            a(this.f703d);
            this.f703d = -1;
            this.e = -1;
        }
    }

    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f && super.mutate() == this) {
            this.f701b.a();
            this.f = true;
        }
        return this;
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i) {
        return super.onLayoutDirectionChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:43:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bf  */
    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onStateChange(int[] r7) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.b.a.a.onStateChange(int[]):boolean");
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
        super.setAutoMirrored(z);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z) {
        super.setDither(z);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public /* bridge */ /* synthetic */ void setTintMode(PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        f fVar = this.f702c;
        if (fVar != null && (visible || z2)) {
            if (z) {
                fVar.a();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }
}
