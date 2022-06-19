package androidx.appcompat.view;

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
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.C0203i;
import androidx.appcompat.view.menu.MenuItemC0205j;
import androidx.appcompat.widget.C0317ap;
import androidx.appcompat.widget.C0369y;
import androidx.core.p019b.p020a.AbstractMenuC0483a;
import androidx.core.p026h.AbstractC0573b;
import androidx.core.p026h.C0581g;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.view.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g.class */
public class C0179g extends MenuInflater {

    /* renamed from: a */
    static final Class<?>[] f597a = {Context.class};

    /* renamed from: b */
    static final Class<?>[] f598b = f597a;

    /* renamed from: c */
    final Object[] f599c;

    /* renamed from: d */
    final Object[] f600d;

    /* renamed from: e */
    Context f601e;

    /* renamed from: f */
    private Object f602f;

    /* renamed from: androidx.appcompat.view.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$a.class */
    public static class MenuItem$OnMenuItemClickListenerC0180a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        private static final Class<?>[] f603a = {MenuItem.class};

        /* renamed from: b */
        private Object f604b;

        /* renamed from: c */
        private Method f605c;

        public MenuItem$OnMenuItemClickListenerC0180a(Object obj, String str) {
            this.f604b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f605c = cls.getMethod(str, f603a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            boolean z = true;
            try {
                if (this.f605c.getReturnType() == Boolean.TYPE) {
                    z = ((Boolean) this.f605c.invoke(this.f604b, menuItem)).booleanValue();
                } else {
                    this.f605c.invoke(this.f604b, menuItem);
                }
                return z;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: androidx.appcompat.view.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$b.class */
    public class C0181b {

        /* renamed from: A */
        private String f606A;

        /* renamed from: B */
        private String f607B;

        /* renamed from: C */
        private CharSequence f608C;

        /* renamed from: D */
        private CharSequence f609D;

        /* renamed from: E */
        private ColorStateList f610E = null;

        /* renamed from: F */
        private PorterDuff.Mode f611F = null;

        /* renamed from: a */
        AbstractC0573b f612a;

        /* renamed from: c */
        private Menu f614c;

        /* renamed from: d */
        private int f615d;

        /* renamed from: e */
        private int f616e;

        /* renamed from: f */
        private int f617f;

        /* renamed from: g */
        private int f618g;

        /* renamed from: h */
        private boolean f619h;

        /* renamed from: i */
        private boolean f620i;

        /* renamed from: j */
        private boolean f621j;

        /* renamed from: k */
        private int f622k;

        /* renamed from: l */
        private int f623l;

        /* renamed from: m */
        private CharSequence f624m;

        /* renamed from: n */
        private CharSequence f625n;

        /* renamed from: o */
        private int f626o;

        /* renamed from: p */
        private char f627p;

        /* renamed from: q */
        private int f628q;

        /* renamed from: r */
        private char f629r;

        /* renamed from: s */
        private int f630s;

        /* renamed from: t */
        private int f631t;

        /* renamed from: u */
        private boolean f632u;

        /* renamed from: v */
        private boolean f633v;

        /* renamed from: w */
        private boolean f634w;

        /* renamed from: x */
        private int f635x;

        /* renamed from: y */
        private int f636y;

        /* renamed from: z */
        private String f637z;

        public C0181b(Menu menu) {
            C0179g.this = r4;
            this.f614c = menu;
            m21956a();
        }

        /* renamed from: a */
        private char m21953a(String str) {
            return str == null ? (char) 0 : str.charAt(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        private <T> T m21952a(String str, Class<?>[] clsArr, Object[] objArr) {
            T t;
            try {
                Constructor<?> constructor = Class.forName(str, false, C0179g.this.f601e.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                t = constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                t = null;
            }
            return t;
        }

        /* renamed from: a */
        private void m21954a(MenuItem menuItem) {
            boolean z = true;
            menuItem.setChecked(this.f632u).setVisible(this.f633v).setEnabled(this.f634w).setCheckable(this.f631t >= 1).setTitleCondensed(this.f625n).setIcon(this.f626o);
            if (this.f635x >= 0) {
                menuItem.setShowAsAction(this.f635x);
            }
            if (this.f607B != null) {
                if (C0179g.this.f601e.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC0180a(C0179g.this.m21959a(), this.f607B));
            }
            if (menuItem instanceof C0203i) {
                C0203i c0203i = (C0203i) menuItem;
            }
            if (this.f631t >= 2) {
                if (menuItem instanceof C0203i) {
                    ((C0203i) menuItem).m21838a(true);
                } else if (menuItem instanceof MenuItemC0205j) {
                    ((MenuItemC0205j) menuItem).m21819a(true);
                }
            }
            if (this.f637z != null) {
                menuItem.setActionView((View) m21952a(this.f637z, C0179g.f597a, C0179g.this.f599c));
            } else {
                z = false;
            }
            if (this.f636y > 0) {
                if (!z) {
                    menuItem.setActionView(this.f636y);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            if (this.f612a != null) {
                C0581g.m20404a(menuItem, this.f612a);
            }
            C0581g.m20403a(menuItem, this.f608C);
            C0581g.m20401b(menuItem, this.f609D);
            C0581g.m20402b(menuItem, this.f627p, this.f628q);
            C0581g.m20407a(menuItem, this.f629r, this.f630s);
            if (this.f611F != null) {
                C0581g.m20405a(menuItem, this.f611F);
            }
            if (this.f610E != null) {
                C0581g.m20406a(menuItem, this.f610E);
            }
        }

        /* renamed from: a */
        public void m21956a() {
            this.f615d = 0;
            this.f616e = 0;
            this.f617f = 0;
            this.f618g = 0;
            this.f619h = true;
            this.f620i = true;
        }

        /* renamed from: a */
        public void m21955a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = C0179g.this.f601e.obtainStyledAttributes(attributeSet, C0083a.C0093j.MenuGroup);
            this.f615d = obtainStyledAttributes.getResourceId(C0083a.C0093j.MenuGroup_android_id, 0);
            this.f616e = obtainStyledAttributes.getInt(C0083a.C0093j.MenuGroup_android_menuCategory, 0);
            this.f617f = obtainStyledAttributes.getInt(C0083a.C0093j.MenuGroup_android_orderInCategory, 0);
            this.f618g = obtainStyledAttributes.getInt(C0083a.C0093j.MenuGroup_android_checkableBehavior, 0);
            this.f619h = obtainStyledAttributes.getBoolean(C0083a.C0093j.MenuGroup_android_visible, true);
            this.f620i = obtainStyledAttributes.getBoolean(C0083a.C0093j.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: b */
        public void m21951b() {
            this.f621j = true;
            m21954a(this.f614c.add(this.f615d, this.f622k, this.f623l, this.f624m));
        }

        /* renamed from: b */
        public void m21950b(AttributeSet attributeSet) {
            C0317ap m21434a = C0317ap.m21434a(C0179g.this.f601e, attributeSet, C0083a.C0093j.MenuItem);
            this.f622k = m21434a.m21420g(C0083a.C0093j.MenuItem_android_id, 0);
            this.f623l = (m21434a.m21438a(C0083a.C0093j.MenuItem_android_menuCategory, this.f616e) & (-65536)) | (m21434a.m21438a(C0083a.C0093j.MenuItem_android_orderInCategory, this.f617f) & 65535);
            this.f624m = m21434a.m21429c(C0083a.C0093j.MenuItem_android_title);
            this.f625n = m21434a.m21429c(C0083a.C0093j.MenuItem_android_titleCondensed);
            this.f626o = m21434a.m21420g(C0083a.C0093j.MenuItem_android_icon, 0);
            this.f627p = m21953a(m21434a.m21427d(C0083a.C0093j.MenuItem_android_alphabeticShortcut));
            this.f628q = m21434a.m21438a(C0083a.C0093j.MenuItem_alphabeticModifiers, 4096);
            this.f629r = m21953a(m21434a.m21427d(C0083a.C0093j.MenuItem_android_numericShortcut));
            this.f630s = m21434a.m21438a(C0083a.C0093j.MenuItem_numericModifiers, 4096);
            if (m21434a.m21421g(C0083a.C0093j.MenuItem_android_checkable)) {
                this.f631t = m21434a.m21436a(C0083a.C0093j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f631t = this.f618g;
            }
            this.f632u = m21434a.m21436a(C0083a.C0093j.MenuItem_android_checked, false);
            this.f633v = m21434a.m21436a(C0083a.C0093j.MenuItem_android_visible, this.f619h);
            this.f634w = m21434a.m21436a(C0083a.C0093j.MenuItem_android_enabled, this.f620i);
            this.f635x = m21434a.m21438a(C0083a.C0093j.MenuItem_showAsAction, -1);
            this.f607B = m21434a.m21427d(C0083a.C0093j.MenuItem_android_onClick);
            this.f636y = m21434a.m21420g(C0083a.C0093j.MenuItem_actionLayout, 0);
            this.f637z = m21434a.m21427d(C0083a.C0093j.MenuItem_actionViewClass);
            this.f606A = m21434a.m21427d(C0083a.C0093j.MenuItem_actionProviderClass);
            boolean z = this.f606A != null;
            if (z && this.f636y == 0 && this.f637z == null) {
                this.f612a = (AbstractC0573b) m21952a(this.f606A, C0179g.f598b, C0179g.this.f600d);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f612a = null;
            }
            this.f608C = m21434a.m21429c(C0083a.C0093j.MenuItem_contentDescription);
            this.f609D = m21434a.m21429c(C0083a.C0093j.MenuItem_tooltipText);
            if (m21434a.m21421g(C0083a.C0093j.MenuItem_iconTintMode)) {
                this.f611F = C0369y.m21168a(m21434a.m21438a(C0083a.C0093j.MenuItem_iconTintMode, -1), this.f611F);
            } else {
                this.f611F = null;
            }
            if (m21434a.m21421g(C0083a.C0093j.MenuItem_iconTint)) {
                this.f610E = m21434a.m21425e(C0083a.C0093j.MenuItem_iconTint);
            } else {
                this.f610E = null;
            }
            m21434a.m21441a();
            this.f621j = false;
        }

        /* renamed from: c */
        public SubMenu m21949c() {
            this.f621j = true;
            SubMenu addSubMenu = this.f614c.addSubMenu(this.f615d, this.f622k, this.f623l, this.f624m);
            m21954a(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: d */
        public boolean m21948d() {
            return this.f621j;
        }
    }

    public C0179g(Context context) {
        super(context);
        this.f601e = context;
        this.f599c = new Object[]{context};
        this.f600d = this.f599c;
    }

    /* renamed from: a */
    private Object m21958a(Object obj) {
        Object obj2;
        if (obj instanceof Activity) {
            obj2 = obj;
        } else {
            obj2 = obj;
            if (obj instanceof ContextWrapper) {
                obj2 = m21958a(((ContextWrapper) obj).getBaseContext());
            }
        }
        return obj2;
    }

    /* renamed from: a */
    private void m21957a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        int next;
        C0181b c0181b = new C0181b(menu);
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
        String str = null;
        boolean z = false;
        int i = next;
        boolean z2 = false;
        while (!z2) {
            switch (i) {
                case 1:
                    throw new RuntimeException("Unexpected end of document");
                case 2:
                    if (!z) {
                        String name2 = xmlPullParser.getName();
                        if (!name2.equals("group")) {
                            if (!name2.equals("item")) {
                                if (!name2.equals("menu")) {
                                    str = name2;
                                    z = true;
                                    break;
                                } else {
                                    m21957a(xmlPullParser, attributeSet, c0181b.m21949c());
                                    break;
                                }
                            } else {
                                c0181b.m21950b(attributeSet);
                                break;
                            }
                        } else {
                            c0181b.m21955a(attributeSet);
                            break;
                        }
                    } else {
                        break;
                    }
                case 3:
                    String name3 = xmlPullParser.getName();
                    if (z && name3.equals(str)) {
                        str = null;
                        z = false;
                        break;
                    } else if (!name3.equals("group")) {
                        if (!name3.equals("item")) {
                            if (!name3.equals("menu")) {
                                break;
                            } else {
                                z2 = true;
                                break;
                            }
                        } else if (!c0181b.m21948d()) {
                            if (c0181b.f612a != null && c0181b.f612a.mo20427c()) {
                                c0181b.m21949c();
                                break;
                            } else {
                                c0181b.m21951b();
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        c0181b.m21956a();
                        break;
                    }
                    break;
            }
            i = xmlPullParser.next();
        }
    }

    /* renamed from: a */
    Object m21959a() {
        if (this.f602f == null) {
            this.f602f = m21958a(this.f601e);
        }
        return this.f602f;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof AbstractMenuC0483a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                XmlResourceParser layout = this.f601e.getResources().getLayout(i);
                xmlResourceParser3 = layout;
                xmlResourceParser = layout;
                xmlResourceParser2 = layout;
                m21957a(layout, Xml.asAttributeSet(layout), menu);
                if (layout == null) {
                    return;
                }
                layout.close();
            } catch (IOException e) {
                XmlResourceParser xmlResourceParser4 = xmlResourceParser2;
                XmlResourceParser xmlResourceParser5 = xmlResourceParser2;
                throw new InflateException("Error inflating menu XML", e);
            } catch (XmlPullParserException e2) {
                XmlResourceParser xmlResourceParser6 = xmlResourceParser3;
                XmlResourceParser xmlResourceParser7 = xmlResourceParser3;
                throw new InflateException("Error inflating menu XML", e2);
            }
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
