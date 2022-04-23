package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.ab;
import androidx.appcompat.widget.p;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import okhttp3.internal.http2.Settings;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g.class */
public final class g extends MenuInflater {

    /* renamed from: a  reason: collision with root package name */
    static final Class<?>[] f744a;

    /* renamed from: b  reason: collision with root package name */
    static final Class<?>[] f745b;

    /* renamed from: c  reason: collision with root package name */
    final Object[] f746c;

    /* renamed from: d  reason: collision with root package name */
    final Object[] f747d;
    Context e;
    Object f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$a.class */
    public static final class a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        private static final Class<?>[] f748a = {MenuItem.class};

        /* renamed from: b  reason: collision with root package name */
        private Object f749b;

        /* renamed from: c  reason: collision with root package name */
        private Method f750c;

        public a(Object obj, String str) {
            this.f749b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f750c = cls.getMethod(str, f748a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f750c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f750c.invoke(this.f749b, menuItem)).booleanValue();
                }
                this.f750c.invoke(this.f749b, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$b.class */
    public final class b {
        private String A;
        private String B;
        private CharSequence C;
        private CharSequence D;
        private ColorStateList E = null;
        private PorterDuff.Mode F = null;

        /* renamed from: a  reason: collision with root package name */
        boolean f751a;

        /* renamed from: b  reason: collision with root package name */
        androidx.core.view.b f752b;

        /* renamed from: d  reason: collision with root package name */
        private Menu f754d;
        private int e;
        private int f;
        private int g;
        private int h;
        private boolean i;
        private boolean j;
        private int k;
        private int l;
        private CharSequence m;
        private CharSequence n;
        private int o;
        private char p;
        private int q;
        private char r;
        private int s;
        private int t;
        private boolean u;
        private boolean v;
        private boolean w;
        private int x;
        private int y;
        private String z;

        public b(Menu menu) {
            this.f754d = menu;
            a();
        }

        private static char a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private <T> T a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.e.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: ".concat(String.valueOf(str)), e);
                return null;
            }
        }

        private void a(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.u).setVisible(this.v).setEnabled(this.w).setCheckable(this.t > 0).setTitleCondensed(this.n).setIcon(this.o);
            int i = this.x;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.B != null) {
                if (!g.this.e.isRestricted()) {
                    g gVar = g.this;
                    if (gVar.f == null) {
                        gVar.f = gVar.a(gVar.e);
                    }
                    menuItem.setOnMenuItemClickListener(new a(gVar.f, this.B));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.t >= 2) {
                if (menuItem instanceof i) {
                    ((i) menuItem).a(true);
                } else if (menuItem instanceof j) {
                    j jVar = (j) menuItem;
                    try {
                        if (jVar.f822c == null) {
                            jVar.f822c = jVar.f821b.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        jVar.f822c.invoke(jVar.f821b, Boolean.TRUE);
                    } catch (Exception e) {
                        Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
                    }
                }
            }
            String str = this.z;
            if (str != null) {
                menuItem.setActionView((View) a(str, g.f744a, g.this.f746c));
                z = true;
            }
            int i2 = this.y;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            androidx.core.view.b bVar = this.f752b;
            if (bVar != null) {
                if (menuItem instanceof androidx.core.a.a.b) {
                    ((androidx.core.a.a.b) menuItem).a(bVar);
                } else {
                    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            CharSequence charSequence = this.C;
            boolean z2 = menuItem instanceof androidx.core.a.a.b;
            if (z2) {
                ((androidx.core.a.a.b) menuItem).a(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.D;
            if (z2) {
                ((androidx.core.a.a.b) menuItem).b(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c2 = this.p;
            int i3 = this.q;
            if (z2) {
                ((androidx.core.a.a.b) menuItem).setAlphabeticShortcut(c2, i3);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setAlphabeticShortcut(c2, i3);
            }
            char c3 = this.r;
            int i4 = this.s;
            if (z2) {
                ((androidx.core.a.a.b) menuItem).setNumericShortcut(c3, i4);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setNumericShortcut(c3, i4);
            }
            PorterDuff.Mode mode = this.F;
            if (mode != null) {
                if (z2) {
                    ((androidx.core.a.a.b) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.E;
            if (colorStateList == null) {
                return;
            }
            if (z2) {
                ((androidx.core.a.a.b) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setIconTintList(colorStateList);
            }
        }

        public final void a() {
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = true;
            this.j = true;
        }

        public final void a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = g.this.e.obtainStyledAttributes(attributeSet, a.j.MenuGroup);
            this.e = obtainStyledAttributes.getResourceId(a.j.MenuGroup_android_id, 0);
            this.f = obtainStyledAttributes.getInt(a.j.MenuGroup_android_menuCategory, 0);
            this.g = obtainStyledAttributes.getInt(a.j.MenuGroup_android_orderInCategory, 0);
            this.h = obtainStyledAttributes.getInt(a.j.MenuGroup_android_checkableBehavior, 0);
            this.i = obtainStyledAttributes.getBoolean(a.j.MenuGroup_android_visible, true);
            this.j = obtainStyledAttributes.getBoolean(a.j.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        public final void b() {
            this.f751a = true;
            a(this.f754d.add(this.e, this.k, this.l, this.m));
        }

        public final void b(AttributeSet attributeSet) {
            ab a2 = ab.a(g.this.e, attributeSet, a.j.MenuItem);
            this.k = a2.g(a.j.MenuItem_android_id, 0);
            this.l = (a2.a(a.j.MenuItem_android_menuCategory, this.f) & (-65536)) | (a2.a(a.j.MenuItem_android_orderInCategory, this.g) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            this.m = a2.c(a.j.MenuItem_android_title);
            this.n = a2.c(a.j.MenuItem_android_titleCondensed);
            this.o = a2.g(a.j.MenuItem_android_icon, 0);
            this.p = a(a2.d(a.j.MenuItem_android_alphabeticShortcut));
            this.q = a2.a(a.j.MenuItem_alphabeticModifiers, 4096);
            this.r = a(a2.d(a.j.MenuItem_android_numericShortcut));
            this.s = a2.a(a.j.MenuItem_numericModifiers, 4096);
            if (a2.g(a.j.MenuItem_android_checkable)) {
                this.t = a2.a(a.j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.t = this.h;
            }
            this.u = a2.a(a.j.MenuItem_android_checked, false);
            this.v = a2.a(a.j.MenuItem_android_visible, this.i);
            this.w = a2.a(a.j.MenuItem_android_enabled, this.j);
            this.x = a2.a(a.j.MenuItem_showAsAction, -1);
            this.B = a2.d(a.j.MenuItem_android_onClick);
            this.y = a2.g(a.j.MenuItem_actionLayout, 0);
            this.z = a2.d(a.j.MenuItem_actionViewClass);
            String d2 = a2.d(a.j.MenuItem_actionProviderClass);
            this.A = d2;
            boolean z = d2 != null;
            if (z && this.y == 0 && this.z == null) {
                this.f752b = (androidx.core.view.b) a(d2, g.f745b, g.this.f747d);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f752b = null;
            }
            this.C = a2.c(a.j.MenuItem_contentDescription);
            this.D = a2.c(a.j.MenuItem_tooltipText);
            if (a2.g(a.j.MenuItem_iconTintMode)) {
                this.F = p.a(a2.a(a.j.MenuItem_iconTintMode, -1), this.F);
            } else {
                this.F = null;
            }
            if (a2.g(a.j.MenuItem_iconTint)) {
                this.E = a2.e(a.j.MenuItem_iconTint);
            } else {
                this.E = null;
            }
            a2.f1044a.recycle();
            this.f751a = false;
        }

        public final SubMenu c() {
            this.f751a = true;
            SubMenu addSubMenu = this.f754d.addSubMenu(this.e, this.k, this.l, this.m);
            a(addSubMenu.getItem());
            return addSubMenu;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f744a = clsArr;
        f745b = clsArr;
    }

    public g(Context context) {
        super(context);
        this.e = context;
        Object[] objArr = {context};
        this.f746c = objArr;
        this.f747d = objArr;
    }

    private void a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int next;
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType != 2) {
                int next2 = xmlPullParser.next();
                eventType = next2;
                if (next2 == 1) {
                    next = next2;
                    break;
                }
            } else {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    next = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got ".concat(String.valueOf(name)));
                }
            }
        }
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (next != 1) {
                if (next == 2) {
                    z = z;
                    z2 = z2;
                    str = str;
                    if (!z2) {
                        str = xmlPullParser.getName();
                        if (str.equals("group")) {
                            bVar.a(attributeSet);
                            z = z;
                            z2 = z2;
                            str = str;
                        } else if (str.equals("item")) {
                            bVar.b(attributeSet);
                            z = z;
                            z2 = z2;
                            str = str;
                        } else if (str.equals("menu")) {
                            a(xmlPullParser, attributeSet, bVar.c());
                            z = z;
                            z2 = z2;
                            str = str;
                        } else {
                            z2 = true;
                            z = z;
                        }
                    }
                } else if (next != 3) {
                    z = z;
                    z2 = z2;
                    str = str;
                } else {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        str = null;
                        z2 = false;
                        z = z;
                    } else if (name2.equals("group")) {
                        bVar.a();
                        z = z;
                        z2 = z2;
                        str = str;
                    } else if (name2.equals("item")) {
                        z = z;
                        z2 = z2;
                        str = str;
                        if (!bVar.f751a) {
                            if (bVar.f752b == null || !bVar.f752b.c()) {
                                bVar.b();
                                z = z;
                                z2 = z2;
                                str = str;
                            } else {
                                bVar.c();
                                z = z;
                                z2 = z2;
                                str = str;
                            }
                        }
                    } else {
                        z = z;
                        z2 = z2;
                        str = str;
                        if (name2.equals("menu")) {
                            z = true;
                            z2 = z2;
                            str = str;
                        }
                    }
                }
                next = xmlPullParser.next();
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    final Object a(Object obj) {
        while (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) {
            obj = ((ContextWrapper) obj).getBaseContext();
        }
        return obj;
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof androidx.core.a.a.a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                try {
                    XmlResourceParser layout = this.e.getResources().getLayout(i);
                    xmlResourceParser3 = layout;
                    xmlResourceParser = layout;
                    xmlResourceParser2 = layout;
                    a(layout, Xml.asAttributeSet(layout), menu);
                    if (layout != null) {
                        layout.close();
                    }
                } catch (XmlPullParserException e) {
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } catch (Throwable th) {
            if (xmlResourceParser3 != null) {
                xmlResourceParser3.close();
            }
            throw th;
        }
    }
}
