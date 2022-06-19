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
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.C0272i;
import androidx.appcompat.view.menu.MenuItemC0274j;
import androidx.appcompat.widget.C0370ab;
import androidx.appcompat.widget.C0407p;
import androidx.core.p030a.p031a.AbstractMenuC0712a;
import androidx.core.p030a.p031a.AbstractMenuItemC0713b;
import androidx.core.view.AbstractC0899b;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import okhttp3.internal.http2.Settings;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.view.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g.class */
public final class C0248g extends MenuInflater {

    /* renamed from: a */
    static final Class<?>[] f711a;

    /* renamed from: b */
    static final Class<?>[] f712b;

    /* renamed from: c */
    final Object[] f713c;

    /* renamed from: d */
    final Object[] f714d;

    /* renamed from: e */
    Context f715e;

    /* renamed from: f */
    Object f716f;

    /* renamed from: androidx.appcompat.view.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$a.class */
    public static final class MenuItem$OnMenuItemClickListenerC0249a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        private static final Class<?>[] f717a = {MenuItem.class};

        /* renamed from: b */
        private Object f718b;

        /* renamed from: c */
        private Method f719c;

        public MenuItem$OnMenuItemClickListenerC0249a(Object obj, String str) {
            this.f718b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f719c = cls.getMethod(str, f717a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f719c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f719c.invoke(this.f718b, menuItem)).booleanValue();
                }
                this.f719c.invoke(this.f718b, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: androidx.appcompat.view.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$b.class */
    public final class C0250b {

        /* renamed from: A */
        private String f720A;

        /* renamed from: B */
        private String f721B;

        /* renamed from: C */
        private CharSequence f722C;

        /* renamed from: D */
        private CharSequence f723D;

        /* renamed from: E */
        private ColorStateList f724E = null;

        /* renamed from: F */
        private PorterDuff.Mode f725F = null;

        /* renamed from: a */
        boolean f726a;

        /* renamed from: b */
        AbstractC0899b f727b;

        /* renamed from: d */
        private Menu f729d;

        /* renamed from: e */
        private int f730e;

        /* renamed from: f */
        private int f731f;

        /* renamed from: g */
        private int f732g;

        /* renamed from: h */
        private int f733h;

        /* renamed from: i */
        private boolean f734i;

        /* renamed from: j */
        private boolean f735j;

        /* renamed from: k */
        private int f736k;

        /* renamed from: l */
        private int f737l;

        /* renamed from: m */
        private CharSequence f738m;

        /* renamed from: n */
        private CharSequence f739n;

        /* renamed from: o */
        private int f740o;

        /* renamed from: p */
        private char f741p;

        /* renamed from: q */
        private int f742q;

        /* renamed from: r */
        private char f743r;

        /* renamed from: s */
        private int f744s;

        /* renamed from: t */
        private int f745t;

        /* renamed from: u */
        private boolean f746u;

        /* renamed from: v */
        private boolean f747v;

        /* renamed from: w */
        private boolean f748w;

        /* renamed from: x */
        private int f749x;

        /* renamed from: y */
        private int f750y;

        /* renamed from: z */
        private String f751z;

        public C0250b(Menu menu) {
            C0248g.this = r4;
            this.f729d = menu;
            m46148a();
        }

        /* renamed from: a */
        private static char m46145a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* renamed from: a */
        private <T> T m46144a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, C0248g.this.f715e.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: ".concat(String.valueOf(str)), e);
                return null;
            }
        }

        /* renamed from: a */
        private void m46146a(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.f746u).setVisible(this.f747v).setEnabled(this.f748w).setCheckable(this.f745t > 0).setTitleCondensed(this.f739n).setIcon(this.f740o);
            int i = this.f749x;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f721B != null) {
                if (C0248g.this.f715e.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                C0248g c0248g = C0248g.this;
                if (c0248g.f716f == null) {
                    c0248g.f716f = c0248g.m46150a(c0248g.f715e);
                }
                menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC0249a(c0248g.f716f, this.f721B));
            }
            if (this.f745t >= 2) {
                if (menuItem instanceof C0272i) {
                    ((C0272i) menuItem).m46076a(true);
                } else if (menuItem instanceof MenuItemC0274j) {
                    MenuItemC0274j menuItemC0274j = (MenuItemC0274j) menuItem;
                    try {
                        if (menuItemC0274j.f945c == null) {
                            menuItemC0274j.f945c = menuItemC0274j.f944b.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        menuItemC0274j.f945c.invoke(menuItemC0274j.f944b, Boolean.TRUE);
                    } catch (Exception e) {
                        Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
                    }
                }
            }
            String str = this.f751z;
            if (str != null) {
                menuItem.setActionView((View) m46144a(str, C0248g.f711a, C0248g.this.f713c));
                z = true;
            }
            int i2 = this.f750y;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            AbstractC0899b abstractC0899b = this.f727b;
            if (abstractC0899b != null) {
                if (menuItem instanceof AbstractMenuItemC0713b) {
                    ((AbstractMenuItemC0713b) menuItem).mo44634a(abstractC0899b);
                } else {
                    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            CharSequence charSequence = this.f722C;
            boolean z2 = menuItem instanceof AbstractMenuItemC0713b;
            if (z2) {
                ((AbstractMenuItemC0713b) menuItem).mo44633a(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.f723D;
            if (z2) {
                ((AbstractMenuItemC0713b) menuItem).mo44632b(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c = this.f741p;
            int i3 = this.f742q;
            if (z2) {
                ((AbstractMenuItemC0713b) menuItem).setAlphabeticShortcut(c, i3);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setAlphabeticShortcut(c, i3);
            }
            char c2 = this.f743r;
            int i4 = this.f744s;
            if (z2) {
                ((AbstractMenuItemC0713b) menuItem).setNumericShortcut(c2, i4);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setNumericShortcut(c2, i4);
            }
            PorterDuff.Mode mode = this.f725F;
            if (mode != null) {
                if (z2) {
                    ((AbstractMenuItemC0713b) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.f724E;
            if (colorStateList != null) {
                if (z2) {
                    ((AbstractMenuItemC0713b) menuItem).setIconTintList(colorStateList);
                } else if (Build.VERSION.SDK_INT < 26) {
                } else {
                    menuItem.setIconTintList(colorStateList);
                }
            }
        }

        /* renamed from: a */
        public final void m46148a() {
            this.f730e = 0;
            this.f731f = 0;
            this.f732g = 0;
            this.f733h = 0;
            this.f734i = true;
            this.f735j = true;
        }

        /* renamed from: a */
        public final void m46147a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = C0248g.this.f715e.obtainStyledAttributes(attributeSet, C0142a.C0152j.MenuGroup);
            this.f730e = obtainStyledAttributes.getResourceId(C0142a.C0152j.MenuGroup_android_id, 0);
            this.f731f = obtainStyledAttributes.getInt(C0142a.C0152j.MenuGroup_android_menuCategory, 0);
            this.f732g = obtainStyledAttributes.getInt(C0142a.C0152j.MenuGroup_android_orderInCategory, 0);
            this.f733h = obtainStyledAttributes.getInt(C0142a.C0152j.MenuGroup_android_checkableBehavior, 0);
            this.f734i = obtainStyledAttributes.getBoolean(C0142a.C0152j.MenuGroup_android_visible, true);
            this.f735j = obtainStyledAttributes.getBoolean(C0142a.C0152j.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: b */
        public final void m46143b() {
            this.f726a = true;
            m46146a(this.f729d.add(this.f730e, this.f736k, this.f737l, this.f738m));
        }

        /* renamed from: b */
        public final void m46142b(AttributeSet attributeSet) {
            C0370ab m45805a = C0370ab.m45805a(C0248g.this.f715e, attributeSet, C0142a.C0152j.MenuItem);
            this.f736k = m45805a.m45792g(C0142a.C0152j.MenuItem_android_id, 0);
            this.f737l = (m45805a.m45809a(C0142a.C0152j.MenuItem_android_menuCategory, this.f731f) & (-65536)) | (m45805a.m45809a(C0142a.C0152j.MenuItem_android_orderInCategory, this.f732g) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            this.f738m = m45805a.m45801c(C0142a.C0152j.MenuItem_android_title);
            this.f739n = m45805a.m45801c(C0142a.C0152j.MenuItem_android_titleCondensed);
            this.f740o = m45805a.m45792g(C0142a.C0152j.MenuItem_android_icon, 0);
            this.f741p = m46145a(m45805a.m45799d(C0142a.C0152j.MenuItem_android_alphabeticShortcut));
            this.f742q = m45805a.m45809a(C0142a.C0152j.MenuItem_alphabeticModifiers, 4096);
            this.f743r = m46145a(m45805a.m45799d(C0142a.C0152j.MenuItem_android_numericShortcut));
            this.f744s = m45805a.m45809a(C0142a.C0152j.MenuItem_numericModifiers, 4096);
            if (m45805a.m45793g(C0142a.C0152j.MenuItem_android_checkable)) {
                this.f745t = m45805a.m45807a(C0142a.C0152j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f745t = this.f733h;
            }
            this.f746u = m45805a.m45807a(C0142a.C0152j.MenuItem_android_checked, false);
            this.f747v = m45805a.m45807a(C0142a.C0152j.MenuItem_android_visible, this.f734i);
            this.f748w = m45805a.m45807a(C0142a.C0152j.MenuItem_android_enabled, this.f735j);
            this.f749x = m45805a.m45809a(C0142a.C0152j.MenuItem_showAsAction, -1);
            this.f721B = m45805a.m45799d(C0142a.C0152j.MenuItem_android_onClick);
            this.f750y = m45805a.m45792g(C0142a.C0152j.MenuItem_actionLayout, 0);
            this.f751z = m45805a.m45799d(C0142a.C0152j.MenuItem_actionViewClass);
            String m45799d = m45805a.m45799d(C0142a.C0152j.MenuItem_actionProviderClass);
            this.f720A = m45799d;
            Object[] objArr = m45799d != null ? 1 : null;
            if (objArr != null && this.f750y == 0 && this.f751z == null) {
                this.f727b = (AbstractC0899b) m46144a(m45799d, C0248g.f712b, C0248g.this.f714d);
            } else {
                if (objArr != null) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f727b = null;
            }
            this.f722C = m45805a.m45801c(C0142a.C0152j.MenuItem_contentDescription);
            this.f723D = m45805a.m45801c(C0142a.C0152j.MenuItem_tooltipText);
            if (m45805a.m45793g(C0142a.C0152j.MenuItem_iconTintMode)) {
                this.f725F = C0407p.m45622a(m45805a.m45809a(C0142a.C0152j.MenuItem_iconTintMode, -1), this.f725F);
            } else {
                this.f725F = null;
            }
            if (m45805a.m45793g(C0142a.C0152j.MenuItem_iconTint)) {
                this.f724E = m45805a.m45797e(C0142a.C0152j.MenuItem_iconTint);
            } else {
                this.f724E = null;
            }
            m45805a.f1491a.recycle();
            this.f726a = false;
        }

        /* renamed from: c */
        public final SubMenu m46141c() {
            this.f726a = true;
            SubMenu addSubMenu = this.f729d.addSubMenu(this.f730e, this.f736k, this.f737l, this.f738m);
            m46146a(addSubMenu.getItem());
            return addSubMenu;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f711a = clsArr;
        f712b = clsArr;
    }

    public C0248g(Context context) {
        super(context);
        this.f715e = context;
        Object[] objArr = {context};
        this.f713c = objArr;
        this.f714d = objArr;
    }

    /* renamed from: a */
    private void m46149a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int next;
        boolean z;
        boolean z2;
        String str;
        C0250b c0250b = new C0250b(menu);
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
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(String.valueOf(name)));
                }
                next = xmlPullParser.next();
            }
        }
        Object obj = null;
        boolean z3 = false;
        boolean z4 = false;
        while (!z3) {
            if (next == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (next == 2) {
                z = z3;
                z2 = z4;
                str = obj;
                if (!z4) {
                    str = xmlPullParser.getName();
                    if (str.equals("group")) {
                        c0250b.m46147a(attributeSet);
                        z = z3;
                        z2 = z4;
                        str = obj;
                    } else if (str.equals("item")) {
                        c0250b.m46142b(attributeSet);
                        z = z3;
                        z2 = z4;
                        str = obj;
                    } else if (str.equals("menu")) {
                        m46149a(xmlPullParser, attributeSet, c0250b.m46141c());
                        z = z3;
                        z2 = z4;
                        str = obj;
                    } else {
                        z2 = true;
                        z = z3;
                    }
                }
            } else if (next != 3) {
                z = z3;
                z2 = z4;
                str = obj;
            } else {
                String name2 = xmlPullParser.getName();
                if (z4 && name2.equals(obj)) {
                    str = null;
                    z2 = false;
                    z = z3;
                } else if (name2.equals("group")) {
                    c0250b.m46148a();
                    z = z3;
                    z2 = z4;
                    str = obj;
                } else if (name2.equals("item")) {
                    z = z3;
                    z2 = z4;
                    str = obj;
                    if (!c0250b.f726a) {
                        if (c0250b.f727b == null || !c0250b.f727b.mo44201c()) {
                            c0250b.m46143b();
                            z = z3;
                            z2 = z4;
                            str = obj;
                        } else {
                            c0250b.m46141c();
                            z = z3;
                            z2 = z4;
                            str = obj;
                        }
                    }
                } else {
                    z = z3;
                    z2 = z4;
                    str = obj;
                    if (name2.equals("menu")) {
                        z = true;
                        z2 = z4;
                        str = obj;
                    }
                }
            }
            z3 = z;
            z4 = z2;
            obj = str;
            next = xmlPullParser.next();
        }
    }

    /* renamed from: a */
    final Object m46150a(Object obj) {
        while (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) {
            obj = ((ContextWrapper) obj).getBaseContext();
        }
        return obj;
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof AbstractMenuC0712a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                try {
                    XmlResourceParser layout = this.f715e.getResources().getLayout(i);
                    xmlResourceParser3 = layout;
                    xmlResourceParser = layout;
                    xmlResourceParser2 = layout;
                    m46149a(layout, Xml.asAttributeSet(layout), menu);
                    if (layout == null) {
                        return;
                    }
                    layout.close();
                } catch (XmlPullParserException e) {
                    XmlResourceParser xmlResourceParser4 = xmlResourceParser2;
                    XmlResourceParser xmlResourceParser5 = xmlResourceParser2;
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                XmlResourceParser xmlResourceParser6 = xmlResourceParser;
                XmlResourceParser xmlResourceParser7 = xmlResourceParser;
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
