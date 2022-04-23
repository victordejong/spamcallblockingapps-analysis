package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.b.g;
import androidx.b.h;
import androidx.l.a.a.i;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t.class */
public final class t {

    /* renamed from: b  reason: collision with root package name */
    private static t f1131b;

    /* renamed from: d  reason: collision with root package name */
    private WeakHashMap<Context, h<ColorStateList>> f1133d;
    private g<String, d> e;
    private h<String> f;
    private final WeakHashMap<Context, androidx.b.d<WeakReference<Drawable.ConstantState>>> g = new WeakHashMap<>(0);
    private TypedValue h;
    private boolean i;
    private e j;

    /* renamed from: a  reason: collision with root package name */
    private static final PorterDuff.Mode f1130a = PorterDuff.Mode.SRC_IN;

    /* renamed from: c  reason: collision with root package name */
    private static final c f1132c = new c(6);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$a.class */
    public static final class a implements d {
        a() {
        }

        @Override // androidx.appcompat.widget.t.d
        public final Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.appcompat.b.a.a.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$b.class */
    public static final class b implements d {
        b() {
        }

        @Override // androidx.appcompat.widget.t.d
        public final Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.l.a.a.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$c.class */
    public static final class c extends androidx.b.e<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }

        static int a(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$d.class */
    public interface d {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$e.class */
    public interface e {
        ColorStateList a(Context context, int i);

        PorterDuff.Mode a(int i);

        Drawable a(t tVar, Context context, int i);

        boolean a(Context context, int i, Drawable drawable);

        boolean b(Context context, int i, Drawable drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$f.class */
    public static final class f implements d {
        f() {
        }

        @Override // androidx.appcompat.widget.t.d
        public final Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return i.a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    private static long a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private PorterDuff.Mode a(int i) {
        e eVar = this.j;
        if (eVar == null) {
            return null;
        }
        return eVar.a(i);
    }

    public static PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (t.class) {
            try {
                c cVar = f1132c;
                PorterDuffColorFilter porterDuffColorFilter2 = cVar.get(Integer.valueOf(c.a(i, mode)));
                porterDuffColorFilter = porterDuffColorFilter2;
                if (porterDuffColorFilter2 == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    cVar.put(Integer.valueOf(c.a(i, mode)), porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005e, code lost:
        if (r0.a(r6, r7, r9) == false) goto L_0x0061;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable a(android.content.Context r6, int r7, boolean r8, android.graphics.drawable.Drawable r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            android.content.res.ColorStateList r0 = r0.b(r1, r2)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0044
            r0 = r9
            r6 = r0
            r0 = r9
            boolean r0 = androidx.appcompat.widget.p.c(r0)
            if (r0 == 0) goto L_0x001e
            r0 = r9
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r6 = r0
        L_0x001e:
            r0 = r6
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.a.f(r0)
            r6 = r0
            r0 = r6
            r1 = r10
            androidx.core.graphics.drawable.a.a(r0, r1)
            r0 = r5
            r1 = r7
            android.graphics.PorterDuff$Mode r0 = r0.a(r1)
            r9 = r0
            r0 = r6
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007b
            r0 = r6
            r1 = r9
            androidx.core.graphics.drawable.a.a(r0, r1)
            r0 = r6
            r10 = r0
            goto L_0x007b
        L_0x0044:
            r0 = r5
            androidx.appcompat.widget.t$e r0 = r0.j
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0061
            r0 = r9
            r10 = r0
            r0 = r11
            r1 = r6
            r2 = r7
            r3 = r9
            boolean r0 = r0.a(r1, r2, r3)
            if (r0 != 0) goto L_0x007b
        L_0x0061:
            r0 = r9
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r9
            boolean r0 = r0.a(r1, r2, r3)
            if (r0 != 0) goto L_0x007b
            r0 = r9
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L_0x007b
            r0 = 0
            r10 = r0
        L_0x007b:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.t.a(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    private Drawable a(Context context, long j) {
        synchronized (this) {
            androidx.b.d<WeakReference<Drawable.ConstantState>> dVar = this.g.get(context);
            if (dVar == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> a2 = dVar.a(j, null);
            if (a2 != null) {
                Drawable.ConstantState constantState = a2.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                dVar.a(j);
            }
            return null;
        }
    }

    public static t a() {
        t tVar;
        synchronized (t.class) {
            try {
                if (f1131b == null) {
                    t tVar2 = new t();
                    f1131b = tVar2;
                    if (Build.VERSION.SDK_INT < 24) {
                        tVar2.a("vector", new f());
                        tVar2.a("animated-vector", new b());
                        tVar2.a("animated-selector", new a());
                    }
                }
                tVar = f1131b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Drawable drawable, z zVar, int[] iArr) {
        if (!p.c(drawable) || drawable.mutate() == drawable) {
            if (zVar.f1155d || zVar.f1154c) {
                ColorStateList colorStateList = zVar.f1155d ? zVar.f1152a : null;
                PorterDuff.Mode mode = zVar.f1154c ? zVar.f1153b : f1130a;
                PorterDuffColorFilter porterDuffColorFilter = null;
                if (colorStateList != null) {
                    porterDuffColorFilter = mode == null ? null : a(colorStateList.getColorForState(iArr, 0), mode);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    private void a(String str, d dVar) {
        if (this.e == null) {
            this.e = new g<>();
        }
        this.e.put(str, dVar);
    }

    private boolean a(Context context, long j, Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            androidx.b.d<WeakReference<Drawable.ConstantState>> dVar = this.g.get(context);
            androidx.b.d<WeakReference<Drawable.ConstantState>> dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new androidx.b.d<>();
                this.g.put(context, dVar2);
            }
            dVar2.b(j, new WeakReference<>(constantState));
            return true;
        }
    }

    private Drawable c(Context context, int i) {
        int next;
        g<String, d> gVar = this.e;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        h<String> hVar = this.f;
        if (hVar != null) {
            String a2 = hVar.a(i, null);
            if ("appcompat_skip_skip".equals(a2)) {
                return null;
            }
            if (a2 != null && this.e.get(a2) == null) {
                return null;
            }
        } else {
            this.f = new h<>();
        }
        if (this.h == null) {
            this.h = new TypedValue();
        }
        TypedValue typedValue = this.h;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long a3 = a(typedValue);
        Drawable a4 = a(context, a3);
        if (a4 != null) {
            return a4;
        }
        Drawable drawable = a4;
        if (typedValue.string != null) {
            drawable = a4;
            if (typedValue.string.toString().endsWith(".xml")) {
                drawable = a4;
                try {
                    XmlResourceParser xml = resources.getXml(i);
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                    do {
                        next = xml.next();
                        if (next == 2) {
                            break;
                        }
                    } while (next != 1);
                    if (next == 2) {
                        String name = xml.getName();
                        this.f.c(i, name);
                        d dVar = this.e.get(name);
                        Drawable drawable2 = a4;
                        if (dVar != null) {
                            drawable2 = dVar.a(context, xml, asAttributeSet, context.getTheme());
                        }
                        drawable = drawable2;
                        if (drawable2 != null) {
                            drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                            a(context, a3, drawable2);
                            drawable = drawable2;
                        }
                    } else {
                        throw new XmlPullParserException("No start tag found");
                    }
                } catch (Exception e2) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e2);
                }
            }
        }
        if (drawable == null) {
            this.f.c(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    public final Drawable a(Context context, int i) {
        Drawable a2;
        synchronized (this) {
            a2 = a(context, i, false);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
        if (r11 == false) goto L_0x004a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable a(android.content.Context r7, int r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.t.a(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable a(Context context, ag agVar, int i) {
        synchronized (this) {
            Drawable c2 = c(context, i);
            Drawable drawable = c2;
            if (c2 == null) {
                drawable = agVar.a(i);
            }
            if (drawable == null) {
                return null;
            }
            return a(context, i, false, drawable);
        }
    }

    public final void a(Context context) {
        synchronized (this) {
            androidx.b.d<WeakReference<Drawable.ConstantState>> dVar = this.g.get(context);
            if (dVar != null) {
                dVar.d();
            }
        }
    }

    public final void a(e eVar) {
        synchronized (this) {
            this.j = eVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Context context, int i, Drawable drawable) {
        e eVar = this.j;
        return eVar != null && eVar.b(context, i, drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ColorStateList b(Context context, int i) {
        ColorStateList colorStateList;
        h<ColorStateList> hVar;
        synchronized (this) {
            WeakHashMap<Context, h<ColorStateList>> weakHashMap = this.f1133d;
            ColorStateList colorStateList2 = null;
            ColorStateList a2 = (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) ? null : hVar.a(i, null);
            colorStateList = a2;
            if (a2 == null) {
                e eVar = this.j;
                if (eVar != null) {
                    colorStateList2 = eVar.a(context, i);
                }
                if (colorStateList2 != null) {
                    if (this.f1133d == null) {
                        this.f1133d = new WeakHashMap<>();
                    }
                    h<ColorStateList> hVar2 = this.f1133d.get(context);
                    h<ColorStateList> hVar3 = hVar2;
                    if (hVar2 == null) {
                        hVar3 = new h<>();
                        this.f1133d.put(context, hVar3);
                    }
                    hVar3.c(i, colorStateList2);
                }
                colorStateList = colorStateList2;
            }
        }
        return colorStateList;
    }
}
