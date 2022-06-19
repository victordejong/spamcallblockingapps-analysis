package p164m1;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p076e0.C2511f;
import p076e0.C2518h;
import p098g0.C2789a;
import p164m1.C3624f;
import p226s.C4251a;
/* renamed from: m1.b */
/* loaded from: classes-dex2jar.jar:m1/b.class */
public class C3616b extends AbstractC3623e implements Animatable {

    /* renamed from: b */
    public C3618b f11819b;

    /* renamed from: c */
    public Context f11820c;

    /* renamed from: d */
    public ArgbEvaluator f11821d;

    /* renamed from: e */
    public final Drawable.Callback f11822e;

    /* renamed from: m1.b$a */
    /* loaded from: classes-dex2jar.jar:m1/b$a.class */
    public class C3617a implements Drawable.Callback {
        public C3617a() {
            C3616b.this = r4;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            C3616b.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C3616b.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C3616b.this.unscheduleSelf(runnable);
        }
    }

    /* renamed from: m1.b$b */
    /* loaded from: classes-dex2jar.jar:m1/b$b.class */
    public static class C3618b extends Drawable.ConstantState {

        /* renamed from: a */
        public int f11824a;

        /* renamed from: b */
        public C3624f f11825b;

        /* renamed from: c */
        public AnimatorSet f11826c;

        /* renamed from: d */
        public ArrayList<Animator> f11827d;

        /* renamed from: e */
        public C4251a<Animator, String> f11828e;

        public C3618b(C3618b c3618b, Drawable.Callback callback, Resources resources) {
            if (c3618b != null) {
                this.f11824a = c3618b.f11824a;
                C3624f c3624f = c3618b.f11825b;
                if (c3624f != null) {
                    Drawable.ConstantState constantState = c3624f.getConstantState();
                    if (resources != null) {
                        this.f11825b = (C3624f) constantState.newDrawable(resources);
                    } else {
                        this.f11825b = (C3624f) constantState.newDrawable();
                    }
                    C3624f c3624f2 = this.f11825b;
                    c3624f2.mutate();
                    this.f11825b = c3624f2;
                    c3624f2.setCallback(callback);
                    this.f11825b.setBounds(c3618b.f11825b.getBounds());
                    this.f11825b.f11838f = false;
                }
                ArrayList<Animator> arrayList = c3618b.f11827d;
                if (arrayList == null) {
                    return;
                }
                int size = arrayList.size();
                this.f11827d = new ArrayList<>(size);
                this.f11828e = new C4251a<>(size);
                for (int i = 0; i < size; i++) {
                    Animator animator = c3618b.f11827d.get(i);
                    Animator clone = animator.clone();
                    String orDefault = c3618b.f11828e.getOrDefault(animator, null);
                    clone.setTarget(this.f11825b.f11834b.f11889b.f11887p.getOrDefault(orDefault, null));
                    this.f11827d.add(clone);
                    this.f11828e.put(clone, orDefault);
                }
                if (this.f11826c == null) {
                    this.f11826c = new AnimatorSet();
                }
                this.f11826c.playTogether(this.f11827d);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f11824a;
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

    /* renamed from: m1.b$c */
    /* loaded from: classes-dex2jar.jar:m1/b$c.class */
    public static class C3619c extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f11829a;

        public C3619c(Drawable.ConstantState constantState) {
            this.f11829a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f11829a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f11829a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C3616b c3616b = new C3616b(null, null, null);
            Drawable newDrawable = this.f11829a.newDrawable();
            c3616b.f11832a = newDrawable;
            newDrawable.setCallback(c3616b.f11822e);
            return c3616b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C3616b c3616b = new C3616b(null, null, null);
            Drawable newDrawable = this.f11829a.newDrawable(resources);
            c3616b.f11832a = newDrawable;
            newDrawable.setCallback(c3616b.f11822e);
            return c3616b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C3616b c3616b = new C3616b(null, null, null);
            Drawable newDrawable = this.f11829a.newDrawable(resources, theme);
            c3616b.f11832a = newDrawable;
            newDrawable.setCallback(c3616b.f11822e);
            return c3616b;
        }
    }

    public C3616b() {
        this(null, null, null);
    }

    public C3616b(Context context, C3618b c3618b, Resources resources) {
        this.f11821d = null;
        C3617a c3617a = new C3617a();
        this.f11822e = c3617a;
        this.f11820c = context;
        this.f11819b = new C3618b(null, c3617a, null);
    }

    @Override // p164m1.AbstractC3623e, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f11819b.f11825b.draw(canvas);
        if (!this.f11819b.f11826c.isStarted()) {
            return;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getAlpha() : this.f11819b.f11825b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f11819b.f11824a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getColorFilter() : this.f11819b.f11825b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f11832a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C3619c(this.f11832a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f11819b.f11825b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f11819b.f11825b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getOpacity() : this.f11819b.f11825b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Animator animator;
        XmlResourceParser xmlResourceParser;
        Throwable th;
        XmlPullParserException e;
        XmlResourceParser xmlResourceParser2;
        IOException e2;
        XmlResourceParser xmlResourceParser3;
        C3624f c3624f;
        int next;
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray m3487d = C2518h.m3487d(resources, theme, attributeSet, C3615a.f11811e);
                    int resourceId = m3487d.getResourceId(0, 0);
                    if (resourceId != 0) {
                        PorterDuff.Mode mode = C3624f.f11833j;
                        if (Build.VERSION.SDK_INT >= 24) {
                            c3624f = new C3624f();
                            ThreadLocal<TypedValue> threadLocal = C2511f.f8775a;
                            c3624f.f11832a = resources.getDrawable(resourceId, theme);
                            new C3624f.C3633i(c3624f.f11832a.getConstantState());
                        } else {
                            try {
                                XmlResourceParser xml = resources.getXml(resourceId);
                                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                                do {
                                    next = xml.next();
                                    if (next == 2) {
                                        break;
                                    }
                                } while (next != 1);
                                if (next != 2) {
                                    throw new XmlPullParserException("No start tag found");
                                    break;
                                }
                                c3624f = C3624f.m1969a(resources, xml, asAttributeSet, theme);
                            } catch (IOException | XmlPullParserException e3) {
                                c3624f = null;
                            }
                        }
                        c3624f.f11838f = false;
                        c3624f.setCallback(this.f11822e);
                        C3624f c3624f2 = this.f11819b.f11825b;
                        if (c3624f2 != null) {
                            c3624f2.setCallback(null);
                        }
                        this.f11819b.f11825b = c3624f;
                    }
                    m3487d.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C3615a.f11812f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f11820c;
                        if (context == null) {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        if (Build.VERSION.SDK_INT >= 24) {
                            animator = AnimatorInflater.loadAnimator(context, resourceId2);
                        } else {
                            Resources resources2 = context.getResources();
                            Resources.Theme theme2 = context.getTheme();
                            try {
                                try {
                                    xmlResourceParser = resources2.getAnimation(resourceId2);
                                } catch (Throwable th2) {
                                    th = th2;
                                    xmlResourceParser = null;
                                }
                            } catch (IOException e4) {
                                e2 = e4;
                                xmlResourceParser3 = null;
                            } catch (XmlPullParserException e5) {
                                e = e5;
                                xmlResourceParser2 = null;
                            }
                            try {
                                animator = C3620c.m1974a(context, resources2, theme2, xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), null, 0, 1.0f);
                                xmlResourceParser.close();
                            } catch (IOException e6) {
                                e2 = e6;
                                xmlResourceParser3 = xmlResourceParser;
                                XmlResourceParser xmlResourceParser4 = xmlResourceParser3;
                                XmlResourceParser xmlResourceParser5 = xmlResourceParser3;
                                StringBuilder sb = new StringBuilder();
                                XmlResourceParser xmlResourceParser6 = xmlResourceParser3;
                                sb.append("Can't load animation resource ID #0x");
                                XmlResourceParser xmlResourceParser7 = xmlResourceParser3;
                                sb.append(Integer.toHexString(resourceId2));
                                XmlResourceParser xmlResourceParser8 = xmlResourceParser3;
                                Resources.NotFoundException notFoundException = new Resources.NotFoundException(sb.toString());
                                XmlResourceParser xmlResourceParser9 = xmlResourceParser3;
                                notFoundException.initCause(e2);
                                XmlResourceParser xmlResourceParser10 = xmlResourceParser3;
                                throw notFoundException;
                            } catch (XmlPullParserException e7) {
                                e = e7;
                                xmlResourceParser2 = xmlResourceParser;
                                XmlResourceParser xmlResourceParser11 = xmlResourceParser2;
                                XmlResourceParser xmlResourceParser12 = xmlResourceParser2;
                                StringBuilder sb2 = new StringBuilder();
                                XmlResourceParser xmlResourceParser13 = xmlResourceParser2;
                                sb2.append("Can't load animation resource ID #0x");
                                XmlResourceParser xmlResourceParser14 = xmlResourceParser2;
                                sb2.append(Integer.toHexString(resourceId2));
                                XmlResourceParser xmlResourceParser15 = xmlResourceParser2;
                                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException(sb2.toString());
                                XmlResourceParser xmlResourceParser16 = xmlResourceParser2;
                                notFoundException2.initCause(e);
                                XmlResourceParser xmlResourceParser17 = xmlResourceParser2;
                                throw notFoundException2;
                            } catch (Throwable th3) {
                                th = th3;
                                if (xmlResourceParser != null) {
                                    xmlResourceParser.close();
                                }
                                throw th;
                            }
                        }
                        animator.setTarget(this.f11819b.f11825b.f11834b.f11889b.f11887p.getOrDefault(string, null));
                        C3618b c3618b = this.f11819b;
                        if (c3618b.f11827d == null) {
                            c3618b.f11827d = new ArrayList<>();
                            this.f11819b.f11828e = new C4251a<>();
                        }
                        this.f11819b.f11827d.add(animator);
                        this.f11819b.f11828e.put(animator, string);
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        C3618b c3618b2 = this.f11819b;
        if (c3618b2.f11826c == null) {
            c3618b2.f11826c = new AnimatorSet();
        }
        c3618b2.f11826c.playTogether(c3618b2.f11827d);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.isAutoMirrored() : this.f11819b.f11825b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f11832a;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f11819b.f11826c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.isStateful() : this.f11819b.f11825b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f11819b.f11825b.setBounds(rect);
        }
    }

    @Override // p164m1.AbstractC3623e, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.setLevel(i) : this.f11819b.f11825b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.setState(iArr) : this.f11819b.f11825b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f11819b.f11825b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
            return;
        }
        C3624f c3624f = this.f11819b.f11825b;
        Drawable drawable2 = c3624f.f11832a;
        if (drawable2 != null) {
            drawable2.setAutoMirrored(z);
        } else {
            c3624f.f11834b.f11892e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        C3624f c3624f = this.f11819b.f11825b;
        Drawable drawable2 = c3624f.f11832a;
        if (drawable2 != null) {
            drawable2.setColorFilter(colorFilter);
            return;
        }
        c3624f.f11836d = colorFilter;
        c3624f.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            C2789a.m3011d(drawable, i);
        } else {
            this.f11819b.f11825b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            C2789a.m3010e(drawable, colorStateList);
        } else {
            this.f11819b.f11825b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            C2789a.m3009f(drawable, mode);
        } else {
            this.f11819b.f11825b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f11819b.f11825b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (this.f11819b.f11826c.isStarted()) {
        } else {
            this.f11819b.f11826c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f11819b.f11826c.end();
        }
    }
}
