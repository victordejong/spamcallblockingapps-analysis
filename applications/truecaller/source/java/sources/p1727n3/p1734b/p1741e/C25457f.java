package p1727n3.p1734b.p1741e;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.C0032R;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1734b.p1741e.p1742i.C25473i;
import p1727n3.p1734b.p1741e.p1742i.MenuItemC25475j;
import p1727n3.p1734b.p1743f.C25540r0;
import p1727n3.p1734b.p1743f.C25553w;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuC26505a;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b;
import p1727n3.p1807k.p1821i.AbstractC26561b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b.e.f */
/* loaded from: classes-dex2jar.jar:n3/b/e/f.class */
public class C25457f extends MenuInflater {

    /* renamed from: e */
    public static final Class<?>[] f71114e;

    /* renamed from: f */
    public static final Class<?>[] f71115f;

    /* renamed from: a */
    public final Object[] f71116a;

    /* renamed from: b */
    public final Object[] f71117b;

    /* renamed from: c */
    public Context f71118c;

    /* renamed from: d */
    public Object f71119d;

    /* renamed from: n3.b.e.f$a */
    /* loaded from: classes-dex2jar.jar:n3/b/e/f$a.class */
    public static class MenuItem$OnMenuItemClickListenerC25458a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c */
        public static final Class<?>[] f71120c = {MenuItem.class};

        /* renamed from: a */
        public Object f71121a;

        /* renamed from: b */
        public Method f71122b;

        public MenuItem$OnMenuItemClickListenerC25458a(Object obj, String str) {
            this.f71121a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f71122b = cls.getMethod(str, f71120c);
            } catch (Exception e) {
                InflateException inflateException = new InflateException(C22128a.m8647Z1(cls, C22128a.m8692L("Couldn't resolve menu item onClick handler ", str, " in class ")));
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f71122b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f71122b.invoke(this.f71121a, menuItem)).booleanValue();
                }
                this.f71122b.invoke(this.f71121a, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: n3.b.e.f$b */
    /* loaded from: classes-dex2jar.jar:n3/b/e/f$b.class */
    public class C25459b {

        /* renamed from: A */
        public AbstractC26561b f71123A;

        /* renamed from: B */
        public CharSequence f71124B;

        /* renamed from: C */
        public CharSequence f71125C;

        /* renamed from: a */
        public Menu f71129a;

        /* renamed from: h */
        public boolean f71136h;

        /* renamed from: i */
        public int f71137i;

        /* renamed from: j */
        public int f71138j;

        /* renamed from: k */
        public CharSequence f71139k;

        /* renamed from: l */
        public CharSequence f71140l;

        /* renamed from: m */
        public int f71141m;

        /* renamed from: n */
        public char f71142n;

        /* renamed from: o */
        public int f71143o;

        /* renamed from: p */
        public char f71144p;

        /* renamed from: q */
        public int f71145q;

        /* renamed from: r */
        public int f71146r;

        /* renamed from: s */
        public boolean f71147s;

        /* renamed from: t */
        public boolean f71148t;

        /* renamed from: u */
        public boolean f71149u;

        /* renamed from: v */
        public int f71150v;

        /* renamed from: w */
        public int f71151w;

        /* renamed from: x */
        public String f71152x;

        /* renamed from: y */
        public String f71153y;

        /* renamed from: z */
        public String f71154z;

        /* renamed from: D */
        public ColorStateList f71126D = null;

        /* renamed from: E */
        public PorterDuff.Mode f71127E = null;

        /* renamed from: b */
        public int f71130b = 0;

        /* renamed from: c */
        public int f71131c = 0;

        /* renamed from: d */
        public int f71132d = 0;

        /* renamed from: e */
        public int f71133e = 0;

        /* renamed from: f */
        public boolean f71134f = true;

        /* renamed from: g */
        public boolean f71135g = true;

        public C25459b(Menu menu) {
            C25457f.this = r4;
            this.f71129a = menu;
        }

        /* renamed from: a */
        public SubMenu m3497a() {
            this.f71136h = true;
            SubMenu addSubMenu = this.f71129a.addSubMenu(this.f71130b, this.f71137i, this.f71138j, this.f71139k);
            m3495c(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: b */
        public final <T> T m3496b(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, C25457f.this.f71118c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                return null;
            }
        }

        /* renamed from: c */
        public final void m3495c(MenuItem menuItem) {
            int i = Build.VERSION.SDK_INT;
            boolean z = false;
            menuItem.setChecked(this.f71147s).setVisible(this.f71148t).setEnabled(this.f71149u).setCheckable(this.f71146r >= 1).setTitleCondensed(this.f71140l).setIcon(this.f71141m);
            int i2 = this.f71150v;
            if (i2 >= 0) {
                menuItem.setShowAsAction(i2);
            }
            if (this.f71154z != null) {
                if (C25457f.this.f71118c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                C25457f c25457f = C25457f.this;
                if (c25457f.f71119d == null) {
                    c25457f.f71119d = c25457f.m3499a(c25457f.f71118c);
                }
                menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC25458a(c25457f.f71119d, this.f71154z));
            }
            if (this.f71146r >= 2) {
                if (menuItem instanceof C25473i) {
                    ((C25473i) menuItem).m3448k(true);
                } else if (menuItem instanceof MenuItemC25475j) {
                    MenuItemC25475j menuItemC25475j = (MenuItemC25475j) menuItem;
                    try {
                        if (menuItemC25475j.f71275e == null) {
                            menuItemC25475j.f71275e = menuItemC25475j.f71274d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        menuItemC25475j.f71275e.invoke(menuItemC25475j.f71274d, Boolean.TRUE);
                    } catch (Exception e) {
                    }
                }
            }
            String str = this.f71152x;
            if (str != null) {
                menuItem.setActionView((View) m3496b(str, C25457f.f71114e, C25457f.this.f71116a));
                z = true;
            }
            int i3 = this.f71151w;
            if (i3 > 0 && !z) {
                menuItem.setActionView(i3);
            }
            AbstractC26561b abstractC26561b = this.f71123A;
            if (abstractC26561b != null && (menuItem instanceof AbstractMenuItemC26506b)) {
                ((AbstractMenuItemC26506b) menuItem).mo1723b(abstractC26561b);
            }
            CharSequence charSequence = this.f71124B;
            boolean z2 = menuItem instanceof AbstractMenuItemC26506b;
            if (z2) {
                ((AbstractMenuItemC26506b) menuItem).mo50026setContentDescription(charSequence);
            } else if (i >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.f71125C;
            if (z2) {
                ((AbstractMenuItemC26506b) menuItem).mo50027setTooltipText(charSequence2);
            } else if (i >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c = this.f71142n;
            int i4 = this.f71143o;
            if (z2) {
                ((AbstractMenuItemC26506b) menuItem).setAlphabeticShortcut(c, i4);
            } else if (i >= 26) {
                menuItem.setAlphabeticShortcut(c, i4);
            }
            char c2 = this.f71144p;
            int i5 = this.f71145q;
            if (z2) {
                ((AbstractMenuItemC26506b) menuItem).setNumericShortcut(c2, i5);
            } else if (i >= 26) {
                menuItem.setNumericShortcut(c2, i5);
            }
            PorterDuff.Mode mode = this.f71127E;
            if (mode != null) {
                if (z2) {
                    ((AbstractMenuItemC26506b) menuItem).setIconTintMode(mode);
                } else if (i >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.f71126D;
            if (colorStateList != null) {
                if (z2) {
                    ((AbstractMenuItemC26506b) menuItem).setIconTintList(colorStateList);
                } else if (i < 26) {
                } else {
                    menuItem.setIconTintList(colorStateList);
                }
            }
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f71114e = clsArr;
        f71115f = clsArr;
    }

    public C25457f(Context context) {
        super(context);
        this.f71118c = context;
        Object[] objArr = {context};
        this.f71116a = objArr;
        this.f71117b = objArr;
    }

    /* renamed from: a */
    public final Object m3499a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        Object obj2 = obj;
        if (obj instanceof ContextWrapper) {
            obj2 = m3499a(((ContextWrapper) obj).getBaseContext());
        }
        return obj2;
    }

    /* renamed from: b */
    public final void m3498b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        boolean z;
        String m3310m;
        String m3310m2;
        C25459b c25459b = new C25459b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType != 2) {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            } else {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException(C22128a.m8543z2("Expecting menu, got ", name));
                }
                eventType = xmlPullParser.next();
            }
        }
        Object obj = null;
        boolean z2 = false;
        boolean z3 = false;
        int i = eventType;
        while (!z2) {
            if (i == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (i != 2) {
                if (i == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z3 && name2.equals(obj)) {
                        obj = null;
                        z = false;
                    } else if (name2.equals("group")) {
                        c25459b.f71130b = 0;
                        c25459b.f71131c = 0;
                        c25459b.f71132d = 0;
                        c25459b.f71133e = 0;
                        c25459b.f71134f = true;
                        c25459b.f71135g = true;
                    } else if (name2.equals("item")) {
                        if (!c25459b.f71136h) {
                            AbstractC26561b abstractC26561b = c25459b.f71123A;
                            if (abstractC26561b == null || !abstractC26561b.mo1676a()) {
                                c25459b.f71136h = true;
                                c25459b.m3495c(c25459b.f71129a.add(c25459b.f71130b, c25459b.f71137i, c25459b.f71138j, c25459b.f71139k));
                            } else {
                                c25459b.m3497a();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z2 = true;
                        z = z3;
                    }
                    i = xmlPullParser.next();
                    z3 = z;
                    z2 = z2;
                }
                z = z3;
                i = xmlPullParser.next();
                z3 = z;
                z2 = z2;
            } else {
                if (!z3) {
                    String name3 = xmlPullParser.getName();
                    if (name3.equals("group")) {
                        TypedArray obtainStyledAttributes = C25457f.this.f71118c.obtainStyledAttributes(attributeSet, C0032R.styleable.MenuGroup);
                        c25459b.f71130b = obtainStyledAttributes.getResourceId(C0032R.styleable.MenuGroup_android_id, 0);
                        c25459b.f71131c = obtainStyledAttributes.getInt(C0032R.styleable.MenuGroup_android_menuCategory, 0);
                        c25459b.f71132d = obtainStyledAttributes.getInt(C0032R.styleable.MenuGroup_android_orderInCategory, 0);
                        c25459b.f71133e = obtainStyledAttributes.getInt(C0032R.styleable.MenuGroup_android_checkableBehavior, 0);
                        c25459b.f71134f = obtainStyledAttributes.getBoolean(C0032R.styleable.MenuGroup_android_visible, true);
                        c25459b.f71135g = obtainStyledAttributes.getBoolean(C0032R.styleable.MenuGroup_android_enabled, true);
                        obtainStyledAttributes.recycle();
                    } else if (name3.equals("item")) {
                        C25540r0 m3307p = C25540r0.m3307p(C25457f.this.f71118c, attributeSet, C0032R.styleable.MenuItem);
                        c25459b.f71137i = m3307p.m3311l(C0032R.styleable.MenuItem_android_id, 0);
                        c25459b.f71138j = (m3307p.m3313j(C0032R.styleable.MenuItem_android_menuCategory, c25459b.f71131c) & (-65536)) | (m3307p.m3313j(C0032R.styleable.MenuItem_android_orderInCategory, c25459b.f71132d) & 65535);
                        c25459b.f71139k = m3307p.m3309n(C0032R.styleable.MenuItem_android_title);
                        c25459b.f71140l = m3307p.m3309n(C0032R.styleable.MenuItem_android_titleCondensed);
                        c25459b.f71141m = m3307p.m3311l(C0032R.styleable.MenuItem_android_icon, 0);
                        c25459b.f71142n = m3307p.m3310m(C0032R.styleable.MenuItem_android_alphabeticShortcut) == null ? (char) 0 : m3310m.charAt(0);
                        c25459b.f71143o = m3307p.m3313j(C0032R.styleable.MenuItem_alphabeticModifiers, 4096);
                        c25459b.f71144p = m3307p.m3310m(C0032R.styleable.MenuItem_android_numericShortcut) == null ? (char) 0 : m3310m2.charAt(0);
                        c25459b.f71145q = m3307p.m3313j(C0032R.styleable.MenuItem_numericModifiers, 4096);
                        int i2 = C0032R.styleable.MenuItem_android_checkable;
                        if (m3307p.m3308o(i2)) {
                            c25459b.f71146r = m3307p.m3322a(i2, false) ? 1 : 0;
                        } else {
                            c25459b.f71146r = c25459b.f71133e;
                        }
                        c25459b.f71147s = m3307p.m3322a(C0032R.styleable.MenuItem_android_checked, false);
                        c25459b.f71148t = m3307p.m3322a(C0032R.styleable.MenuItem_android_visible, c25459b.f71134f);
                        c25459b.f71149u = m3307p.m3322a(C0032R.styleable.MenuItem_android_enabled, c25459b.f71135g);
                        c25459b.f71150v = m3307p.m3313j(C0032R.styleable.MenuItem_showAsAction, -1);
                        c25459b.f71154z = m3307p.m3310m(C0032R.styleable.MenuItem_android_onClick);
                        c25459b.f71151w = m3307p.m3311l(C0032R.styleable.MenuItem_actionLayout, 0);
                        c25459b.f71152x = m3307p.m3310m(C0032R.styleable.MenuItem_actionViewClass);
                        String m3310m3 = m3307p.m3310m(C0032R.styleable.MenuItem_actionProviderClass);
                        c25459b.f71153y = m3310m3;
                        if ((m3310m3 != null) && c25459b.f71151w == 0 && c25459b.f71152x == null) {
                            c25459b.f71123A = (AbstractC26561b) c25459b.m3496b(m3310m3, f71115f, C25457f.this.f71117b);
                        } else {
                            c25459b.f71123A = null;
                        }
                        c25459b.f71124B = m3307p.m3309n(C0032R.styleable.MenuItem_contentDescription);
                        c25459b.f71125C = m3307p.m3309n(C0032R.styleable.MenuItem_tooltipText);
                        int i3 = C0032R.styleable.MenuItem_iconTintMode;
                        if (m3307p.m3308o(i3)) {
                            c25459b.f71127E = C25553w.m3248c(m3307p.m3313j(i3, -1), c25459b.f71127E);
                        } else {
                            c25459b.f71127E = null;
                        }
                        int i4 = C0032R.styleable.MenuItem_iconTint;
                        if (m3307p.m3308o(i4)) {
                            c25459b.f71126D = m3307p.m3320c(i4);
                        } else {
                            c25459b.f71126D = null;
                        }
                        m3307p.f71466b.recycle();
                        c25459b.f71136h = false;
                    } else {
                        if (name3.equals("menu")) {
                            m3498b(xmlPullParser, attributeSet, c25459b.m3497a());
                            z = z3;
                        } else {
                            obj = name3;
                            z = true;
                        }
                        i = xmlPullParser.next();
                        z3 = z;
                        z2 = z2;
                    }
                }
                z = z3;
                i = xmlPullParser.next();
                z3 = z;
                z2 = z2;
            }
        }
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof AbstractMenuC26505a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                try {
                    XmlResourceParser layout = this.f71118c.getResources().getLayout(i);
                    xmlResourceParser3 = layout;
                    xmlResourceParser = layout;
                    xmlResourceParser2 = layout;
                    m3498b(layout, Xml.asAttributeSet(layout), menu);
                    layout.close();
                } catch (IOException e) {
                    XmlResourceParser xmlResourceParser4 = xmlResourceParser;
                    XmlResourceParser xmlResourceParser5 = xmlResourceParser;
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (XmlPullParserException e2) {
                XmlResourceParser xmlResourceParser6 = xmlResourceParser2;
                XmlResourceParser xmlResourceParser7 = xmlResourceParser2;
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
