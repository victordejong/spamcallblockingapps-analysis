package p020b.p021a.p028o;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.view.menu.MenuItemC0184j;
import androidx.appcompat.widget.C0286e0;
import androidx.appcompat.widget.C0317q;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p021a.C1432j;
import p020b.p041h.p043f.p044a.AbstractMenuC1539a;
import p020b.p041h.p050l.AbstractC1605b;
import p020b.p041h.p050l.C1665i;
/* renamed from: b.a.o.g */
/* loaded from: classes-dex2jar.jar:b/a/o/g.class */
public class C1462g extends MenuInflater {

    /* renamed from: a */
    static final Class<?>[] f5854a;

    /* renamed from: b */
    static final Class<?>[] f5855b;

    /* renamed from: c */
    final Object[] f5856c;

    /* renamed from: d */
    final Object[] f5857d;

    /* renamed from: e */
    Context f5858e;

    /* renamed from: f */
    private Object f5859f;

    /* renamed from: b.a.o.g$a */
    /* loaded from: classes-dex2jar.jar:b/a/o/g$a.class */
    public static class MenuItem$OnMenuItemClickListenerC1463a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        private static final Class<?>[] f5860a = {MenuItem.class};

        /* renamed from: b */
        private Object f5861b;

        /* renamed from: c */
        private Method f5862c;

        public MenuItem$OnMenuItemClickListenerC1463a(Object obj, String str) {
            this.f5861b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f5862c = cls.getMethod(str, f5860a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f5862c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f5862c.invoke(this.f5861b, menuItem)).booleanValue();
                }
                this.f5862c.invoke(this.f5861b, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: b.a.o.g$b */
    /* loaded from: classes-dex2jar.jar:b/a/o/g$b.class */
    public class C1464b {

        /* renamed from: A */
        AbstractC1605b f5863A;

        /* renamed from: B */
        private CharSequence f5864B;

        /* renamed from: C */
        private CharSequence f5865C;

        /* renamed from: D */
        private ColorStateList f5866D = null;

        /* renamed from: E */
        private PorterDuff.Mode f5867E = null;

        /* renamed from: a */
        private Menu f5869a;

        /* renamed from: b */
        private int f5870b;

        /* renamed from: c */
        private int f5871c;

        /* renamed from: d */
        private int f5872d;

        /* renamed from: e */
        private int f5873e;

        /* renamed from: f */
        private boolean f5874f;

        /* renamed from: g */
        private boolean f5875g;

        /* renamed from: h */
        private boolean f5876h;

        /* renamed from: i */
        private int f5877i;

        /* renamed from: j */
        private int f5878j;

        /* renamed from: k */
        private CharSequence f5879k;

        /* renamed from: l */
        private CharSequence f5880l;

        /* renamed from: m */
        private int f5881m;

        /* renamed from: n */
        private char f5882n;

        /* renamed from: o */
        private int f5883o;

        /* renamed from: p */
        private char f5884p;

        /* renamed from: q */
        private int f5885q;

        /* renamed from: r */
        private int f5886r;

        /* renamed from: s */
        private boolean f5887s;

        /* renamed from: t */
        private boolean f5888t;

        /* renamed from: u */
        private boolean f5889u;

        /* renamed from: v */
        private int f5890v;

        /* renamed from: w */
        private int f5891w;

        /* renamed from: x */
        private String f5892x;

        /* renamed from: y */
        private String f5893y;

        /* renamed from: z */
        private String f5894z;

        public C1464b(Menu menu) {
            C1462g.this = r4;
            this.f5869a = menu;
            m30006h();
        }

        /* renamed from: c */
        private char m30011c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* renamed from: e */
        private <T> T m30009e(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, C1462g.this.f5858e.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* renamed from: i */
        private void m30005i(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.f5887s).setVisible(this.f5888t).setEnabled(this.f5889u).setCheckable(this.f5886r >= 1).setTitleCondensed(this.f5880l).setIcon(this.f5881m);
            int i = this.f5890v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f5894z != null) {
                if (C1462g.this.f5858e.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC1463a(C1462g.this.m30015b(), this.f5894z));
            }
            if (this.f5886r >= 2) {
                if (menuItem instanceof C0182i) {
                    ((C0182i) menuItem).m35344t(true);
                } else if (menuItem instanceof MenuItemC0184j) {
                    ((MenuItemC0184j) menuItem).m35337h(true);
                }
            }
            String str = this.f5892x;
            if (str != null) {
                menuItem.setActionView((View) m30009e(str, C1462g.f5854a, C1462g.this.f5856c));
                z = true;
            }
            int i2 = this.f5891w;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            AbstractC1605b abstractC1605b = this.f5863A;
            if (abstractC1605b != null) {
                C1665i.m29398a(menuItem, abstractC1605b);
            }
            C1665i.m29396c(menuItem, this.f5864B);
            C1665i.m29392g(menuItem, this.f5865C);
            C1665i.m29397b(menuItem, this.f5882n, this.f5883o);
            C1665i.m29393f(menuItem, this.f5884p, this.f5885q);
            PorterDuff.Mode mode = this.f5867E;
            if (mode != null) {
                C1665i.m29394e(menuItem, mode);
            }
            ColorStateList colorStateList = this.f5866D;
            if (colorStateList != null) {
                C1665i.m29395d(menuItem, colorStateList);
            }
        }

        /* renamed from: a */
        public void m30013a() {
            this.f5876h = true;
            m30005i(this.f5869a.add(this.f5870b, this.f5877i, this.f5878j, this.f5879k));
        }

        /* renamed from: b */
        public SubMenu m30012b() {
            this.f5876h = true;
            SubMenu addSubMenu = this.f5869a.addSubMenu(this.f5870b, this.f5877i, this.f5878j, this.f5879k);
            m30005i(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: d */
        public boolean m30010d() {
            return this.f5876h;
        }

        /* renamed from: f */
        public void m30008f(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = C1462g.this.f5858e.obtainStyledAttributes(attributeSet, C1432j.MenuGroup);
            this.f5870b = obtainStyledAttributes.getResourceId(C1432j.MenuGroup_android_id, 0);
            this.f5871c = obtainStyledAttributes.getInt(C1432j.MenuGroup_android_menuCategory, 0);
            this.f5872d = obtainStyledAttributes.getInt(C1432j.MenuGroup_android_orderInCategory, 0);
            this.f5873e = obtainStyledAttributes.getInt(C1432j.MenuGroup_android_checkableBehavior, 0);
            this.f5874f = obtainStyledAttributes.getBoolean(C1432j.MenuGroup_android_visible, true);
            this.f5875g = obtainStyledAttributes.getBoolean(C1432j.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: g */
        public void m30007g(AttributeSet attributeSet) {
            C0286e0 m34947u = C0286e0.m34947u(C1462g.this.f5858e, attributeSet, C1432j.MenuItem);
            this.f5877i = m34947u.m34954n(C1432j.MenuItem_android_id, 0);
            this.f5878j = (m34947u.m34957k(C1432j.MenuItem_android_menuCategory, this.f5871c) & (-65536)) | (m34947u.m34957k(C1432j.MenuItem_android_orderInCategory, this.f5872d) & 65535);
            this.f5879k = m34947u.m34952p(C1432j.MenuItem_android_title);
            this.f5880l = m34947u.m34952p(C1432j.MenuItem_android_titleCondensed);
            this.f5881m = m34947u.m34954n(C1432j.MenuItem_android_icon, 0);
            this.f5882n = m30011c(m34947u.m34953o(C1432j.MenuItem_android_alphabeticShortcut));
            this.f5883o = m34947u.m34957k(C1432j.MenuItem_alphabeticModifiers, 4096);
            this.f5884p = m30011c(m34947u.m34953o(C1432j.MenuItem_android_numericShortcut));
            this.f5885q = m34947u.m34957k(C1432j.MenuItem_numericModifiers, 4096);
            int i = C1432j.MenuItem_android_checkable;
            if (m34947u.m34949s(i)) {
                this.f5886r = m34947u.m34967a(i, false) ? 1 : 0;
            } else {
                this.f5886r = this.f5873e;
            }
            this.f5887s = m34947u.m34967a(C1432j.MenuItem_android_checked, false);
            this.f5888t = m34947u.m34967a(C1432j.MenuItem_android_visible, this.f5874f);
            this.f5889u = m34947u.m34967a(C1432j.MenuItem_android_enabled, this.f5875g);
            this.f5890v = m34947u.m34957k(C1432j.MenuItem_showAsAction, -1);
            this.f5894z = m34947u.m34953o(C1432j.MenuItem_android_onClick);
            this.f5891w = m34947u.m34954n(C1432j.MenuItem_actionLayout, 0);
            this.f5892x = m34947u.m34953o(C1432j.MenuItem_actionViewClass);
            String m34953o = m34947u.m34953o(C1432j.MenuItem_actionProviderClass);
            this.f5893y = m34953o;
            Object[] objArr = m34953o != null ? 1 : null;
            if (objArr != null && this.f5891w == 0 && this.f5892x == null) {
                this.f5863A = (AbstractC1605b) m30009e(m34953o, C1462g.f5855b, C1462g.this.f5857d);
            } else {
                if (objArr != null) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f5863A = null;
            }
            this.f5864B = m34947u.m34952p(C1432j.MenuItem_contentDescription);
            this.f5865C = m34947u.m34952p(C1432j.MenuItem_tooltipText);
            int i2 = C1432j.MenuItem_iconTintMode;
            if (m34947u.m34949s(i2)) {
                this.f5867E = C0317q.m34773e(m34947u.m34957k(i2, -1), this.f5867E);
            } else {
                this.f5867E = null;
            }
            int i3 = C1432j.MenuItem_iconTint;
            if (m34947u.m34949s(i3)) {
                this.f5866D = m34947u.m34965c(i3);
            } else {
                this.f5866D = null;
            }
            m34947u.m34945w();
            this.f5876h = false;
        }

        /* renamed from: h */
        public void m30006h() {
            this.f5870b = 0;
            this.f5871c = 0;
            this.f5872d = 0;
            this.f5873e = 0;
            this.f5874f = true;
            this.f5875g = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f5854a = clsArr;
        f5855b = clsArr;
    }

    public C1462g(Context context) {
        super(context);
        this.f5858e = context;
        Object[] objArr = {context};
        this.f5856c = objArr;
        this.f5857d = objArr;
    }

    /* renamed from: a */
    private Object m30016a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        Object obj2 = obj;
        if (obj instanceof ContextWrapper) {
            obj2 = m30016a(((ContextWrapper) obj).getBaseContext());
        }
        return obj2;
    }

    /* renamed from: c */
    private void m30014c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        int next;
        boolean z;
        boolean z2;
        String str;
        C1464b c1464b = new C1464b(menu);
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
                    throw new RuntimeException("Expecting menu, got " + name);
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
            if (next != 2) {
                if (next != 3) {
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
                        c1464b.m30006h();
                        z = z3;
                        z2 = z4;
                        str = obj;
                    } else if (name2.equals("item")) {
                        z = z3;
                        z2 = z4;
                        str = obj;
                        if (!c1464b.m30010d()) {
                            AbstractC1605b abstractC1605b = c1464b.f5863A;
                            if (abstractC1605b == null || !abstractC1605b.mo29631a()) {
                                c1464b.m30013a();
                                z = z3;
                                z2 = z4;
                                str = obj;
                            } else {
                                c1464b.m30012b();
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
            } else if (z4) {
                z = z3;
                z2 = z4;
                str = obj;
            } else {
                str = xmlPullParser.getName();
                if (str.equals("group")) {
                    c1464b.m30008f(attributeSet);
                    z = z3;
                    z2 = z4;
                    str = obj;
                } else if (str.equals("item")) {
                    c1464b.m30007g(attributeSet);
                    z = z3;
                    z2 = z4;
                    str = obj;
                } else if (str.equals("menu")) {
                    m30014c(xmlPullParser, attributeSet, c1464b.m30012b());
                    z = z3;
                    z2 = z4;
                    str = obj;
                } else {
                    z2 = true;
                    z = z3;
                }
            }
            z3 = z;
            z4 = z2;
            obj = str;
            next = xmlPullParser.next();
        }
    }

    /* renamed from: b */
    Object m30015b() {
        if (this.f5859f == null) {
            this.f5859f = m30016a(this.f5858e);
        }
        return this.f5859f;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof AbstractMenuC1539a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                try {
                    XmlResourceParser layout = this.f5858e.getResources().getLayout(i);
                    xmlResourceParser3 = layout;
                    xmlResourceParser = layout;
                    xmlResourceParser2 = layout;
                    m30014c(layout, Xml.asAttributeSet(layout), menu);
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
