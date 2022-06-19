package p1727n3.p1792h0.p1793a.p1794a;

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
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1788g.C26174a;
import p1727n3.p1792h0.p1793a.p1794a.C26261g;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
/* renamed from: n3.h0.a.a.c */
/* loaded from: classes-dex2jar.jar:n3/h0/a/a/c.class */
public class C26253c extends AbstractC26260f implements Animatable {

    /* renamed from: b */
    public C26255b f73187b;

    /* renamed from: c */
    public Context f73188c;

    /* renamed from: d */
    public ArgbEvaluator f73189d;

    /* renamed from: e */
    public final Drawable.Callback f73190e;

    /* renamed from: n3.h0.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/c$a.class */
    public class C26254a implements Drawable.Callback {
        public C26254a() {
            C26253c.this = r4;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            C26253c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C26253c.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C26253c.this.unscheduleSelf(runnable);
        }
    }

    /* renamed from: n3.h0.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/c$b.class */
    public static class C26255b extends Drawable.ConstantState {

        /* renamed from: a */
        public int f73192a;

        /* renamed from: b */
        public C26261g f73193b;

        /* renamed from: c */
        public AnimatorSet f73194c;

        /* renamed from: d */
        public ArrayList<Animator> f73195d;

        /* renamed from: e */
        public C26174a<Animator, String> f73196e;

        public C26255b(C26255b c26255b, Drawable.Callback callback, Resources resources) {
            if (c26255b != null) {
                this.f73192a = c26255b.f73192a;
                C26261g c26261g = c26255b.f73193b;
                if (c26261g != null) {
                    Drawable.ConstantState constantState = c26261g.getConstantState();
                    if (resources != null) {
                        this.f73193b = (C26261g) constantState.newDrawable(resources);
                    } else {
                        this.f73193b = (C26261g) constantState.newDrawable();
                    }
                    C26261g c26261g2 = this.f73193b;
                    c26261g2.mutate();
                    this.f73193b = c26261g2;
                    c26261g2.setCallback(callback);
                    this.f73193b.setBounds(c26255b.f73193b.getBounds());
                    this.f73193b.f73206f = false;
                }
                ArrayList<Animator> arrayList = c26255b.f73195d;
                if (arrayList == null) {
                    return;
                }
                int size = arrayList.size();
                this.f73195d = new ArrayList<>(size);
                this.f73196e = new C26174a<>(size);
                for (int i = 0; i < size; i++) {
                    Animator animator = c26255b.f73195d.get(i);
                    Animator clone = animator.clone();
                    String orDefault = c26255b.f73196e.getOrDefault(animator, null);
                    clone.setTarget(this.f73193b.f73202b.f73245b.f73243p.getOrDefault(orDefault, null));
                    this.f73195d.add(clone);
                    this.f73196e.put(clone, orDefault);
                }
                if (this.f73194c == null) {
                    this.f73194c = new AnimatorSet();
                }
                this.f73194c.playTogether(this.f73195d);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f73192a;
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

    /* renamed from: n3.h0.a.a.c$c */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/c$c.class */
    public static class C26256c extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f73197a;

        public C26256c(Drawable.ConstantState constantState) {
            this.f73197a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f73197a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f73197a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C26253c c26253c = new C26253c(null, null, null);
            Drawable newDrawable = this.f73197a.newDrawable();
            c26253c.f73200a = newDrawable;
            newDrawable.setCallback(c26253c.f73190e);
            return c26253c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C26253c c26253c = new C26253c(null, null, null);
            Drawable newDrawable = this.f73197a.newDrawable(resources);
            c26253c.f73200a = newDrawable;
            newDrawable.setCallback(c26253c.f73190e);
            return c26253c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C26253c c26253c = new C26253c(null, null, null);
            Drawable newDrawable = this.f73197a.newDrawable(resources, theme);
            c26253c.f73200a = newDrawable;
            newDrawable.setCallback(c26253c.f73190e);
            return c26253c;
        }
    }

    public C26253c() {
        this(null, null, null);
    }

    public C26253c(Context context, C26255b c26255b, Resources resources) {
        this.f73189d = null;
        C26254a c26254a = new C26254a();
        this.f73190e = c26254a;
        this.f73188c = context;
        this.f73187b = new C26255b(null, c26254a, null);
    }

    @Override // p1727n3.p1792h0.p1793a.p1794a.AbstractC26260f, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f73187b.f73193b.draw(canvas);
        if (!this.f73187b.f73194c.isStarted()) {
            return;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getAlpha() : this.f73187b.f73193b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f73187b.f73192a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getColorFilter() : this.f73187b.f73193b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f73200a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C26256c(this.f73200a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f73187b.f73193b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f73187b.f73193b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getOpacity() : this.f73187b.f73193b.getOpacity();
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
        C26261g c26261g;
        int next;
        int i = Build.VERSION.SDK_INT;
        Drawable drawable = this.f73200a;
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
                    TypedArray m43263W0 = MediaSessionCompat.m43263W0(resources, theme, attributeSet, C26251a.f73179e);
                    int resourceId = m43263W0.getResourceId(0, 0);
                    if (resourceId != 0) {
                        PorterDuff.Mode mode = C26261g.f73201j;
                        if (i >= 24) {
                            c26261g = new C26261g();
                            ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
                            c26261g.f73200a = resources.getDrawable(resourceId, theme);
                            new C26261g.C26268i(c26261g.f73200a.getConstantState());
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
                                c26261g = C26261g.m2248a(resources, xml, asAttributeSet, theme);
                            } catch (IOException | XmlPullParserException e3) {
                                c26261g = null;
                            }
                        }
                        c26261g.f73206f = false;
                        c26261g.setCallback(this.f73190e);
                        C26261g c26261g2 = this.f73187b.f73193b;
                        if (c26261g2 != null) {
                            c26261g2.setCallback(null);
                        }
                        this.f73187b.f73193b = c26261g;
                    }
                    m43263W0.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C26251a.f73180f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f73188c;
                        if (context == null) {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        if (i >= 24) {
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
                                animator = C26257d.m2253a(context, resources2, theme2, xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), null, 0, 1.0f);
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
                        animator.setTarget(this.f73187b.f73193b.f73202b.f73245b.f73243p.getOrDefault(string, null));
                        C26255b c26255b = this.f73187b;
                        if (c26255b.f73195d == null) {
                            c26255b.f73195d = new ArrayList<>();
                            this.f73187b.f73196e = new C26174a<>();
                        }
                        this.f73187b.f73195d.add(animator);
                        this.f73187b.f73196e.put(animator, string);
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        C26255b c26255b2 = this.f73187b;
        if (c26255b2.f73194c == null) {
            c26255b2.f73194c = new AnimatorSet();
        }
        c26255b2.f73194c.playTogether(c26255b2.f73195d);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.isAutoMirrored() : this.f73187b.f73193b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f73200a;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f73187b.f73194c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.isStateful() : this.f73187b.f73193b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f73187b.f73193b.setBounds(rect);
        }
    }

    @Override // p1727n3.p1792h0.p1793a.p1794a.AbstractC26260f, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.setLevel(i) : this.f73187b.f73193b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.setState(iArr) : this.f73187b.f73193b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f73187b.f73193b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
            return;
        }
        C26261g c26261g = this.f73187b.f73193b;
        Drawable drawable2 = c26261g.f73200a;
        if (drawable2 != null) {
            drawable2.setAutoMirrored(z);
        } else {
            c26261g.f73202b.f73248e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        C26261g c26261g = this.f73187b.f73193b;
        Drawable drawable2 = c26261g.f73200a;
        if (drawable2 != null) {
            drawable2.setColorFilter(colorFilter);
            return;
        }
        c26261g.f73204d = colorFilter;
        c26261g.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            MediaSessionCompat.m43188w1(drawable, i);
        } else {
            this.f73187b.f73193b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            MediaSessionCompat.m43185x1(drawable, colorStateList);
        } else {
            this.f73187b.f73193b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            MediaSessionCompat.m43182y1(drawable, mode);
        } else {
            this.f73187b.f73193b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f73187b.f73193b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (this.f73187b.f73194c.isStarted()) {
        } else {
            this.f73187b.f73194c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f73187b.f73194c.end();
        }
    }
}
