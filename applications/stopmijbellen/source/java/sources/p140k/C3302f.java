package p140k;

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
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.widget.C0233h0;
import androidx.appcompat.widget.C0303z0;
import com.google.android.gms.internal.ads.C1676a;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p109h0.AbstractMenuC2990a;
import p109h0.AbstractMenuItemC2991b;
import p117h8.C3035k;
import p151l.MenuItemC3416c;
import p163m0.AbstractC3549b;
/* renamed from: k.f */
/* loaded from: classes-dex2jar.jar:k/f.class */
public class C3302f extends MenuInflater {

    /* renamed from: e */
    public static final Class<?>[] f11166e;

    /* renamed from: f */
    public static final Class<?>[] f11167f;

    /* renamed from: a */
    public final Object[] f11168a;

    /* renamed from: b */
    public final Object[] f11169b;

    /* renamed from: c */
    public Context f11170c;

    /* renamed from: d */
    public Object f11171d;

    /* renamed from: k.f$a */
    /* loaded from: classes-dex2jar.jar:k/f$a.class */
    public static class MenuItem$OnMenuItemClickListenerC3303a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c */
        public static final Class<?>[] f11172c = {MenuItem.class};

        /* renamed from: a */
        public Object f11173a;

        /* renamed from: b */
        public Method f11174b;

        public MenuItem$OnMenuItemClickListenerC3303a(Object obj, String str) {
            this.f11173a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f11174b = cls.getMethod(str, f11172c);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f11174b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f11174b.invoke(this.f11173a, menuItem)).booleanValue();
                }
                this.f11174b.invoke(this.f11173a, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: k.f$b */
    /* loaded from: classes-dex2jar.jar:k/f$b.class */
    public class C3304b {

        /* renamed from: A */
        public CharSequence f11175A;

        /* renamed from: B */
        public CharSequence f11176B;

        /* renamed from: a */
        public Menu f11180a;

        /* renamed from: h */
        public boolean f11187h;

        /* renamed from: i */
        public int f11188i;

        /* renamed from: j */
        public int f11189j;

        /* renamed from: k */
        public CharSequence f11190k;

        /* renamed from: l */
        public CharSequence f11191l;

        /* renamed from: m */
        public int f11192m;

        /* renamed from: n */
        public char f11193n;

        /* renamed from: o */
        public int f11194o;

        /* renamed from: p */
        public char f11195p;

        /* renamed from: q */
        public int f11196q;

        /* renamed from: r */
        public int f11197r;

        /* renamed from: s */
        public boolean f11198s;

        /* renamed from: t */
        public boolean f11199t;

        /* renamed from: u */
        public boolean f11200u;

        /* renamed from: v */
        public int f11201v;

        /* renamed from: w */
        public int f11202w;

        /* renamed from: x */
        public String f11203x;

        /* renamed from: y */
        public String f11204y;

        /* renamed from: z */
        public AbstractC3549b f11205z;

        /* renamed from: C */
        public ColorStateList f11177C = null;

        /* renamed from: D */
        public PorterDuff.Mode f11178D = null;

        /* renamed from: b */
        public int f11181b = 0;

        /* renamed from: c */
        public int f11182c = 0;

        /* renamed from: d */
        public int f11183d = 0;

        /* renamed from: e */
        public int f11184e = 0;

        /* renamed from: f */
        public boolean f11185f = true;

        /* renamed from: g */
        public boolean f11186g = true;

        public C3304b(Menu menu) {
            C3302f.this = r4;
            this.f11180a = menu;
        }

        /* renamed from: a */
        public SubMenu m2400a() {
            this.f11187h = true;
            SubMenu addSubMenu = this.f11180a.addSubMenu(this.f11181b, this.f11188i, this.f11189j, this.f11190k);
            m2398c(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: b */
        public final <T> T m2399b(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, C3302f.this.f11170c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* renamed from: c */
        public final void m2398c(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.f11198s).setVisible(this.f11199t).setEnabled(this.f11200u).setCheckable(this.f11197r >= 1).setTitleCondensed(this.f11191l).setIcon(this.f11192m);
            int i = this.f11201v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f11204y != null) {
                if (C3302f.this.f11170c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                C3302f c3302f = C3302f.this;
                if (c3302f.f11171d == null) {
                    c3302f.f11171d = c3302f.m2402a(c3302f.f11170c);
                }
                menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC3303a(c3302f.f11171d, this.f11204y));
            }
            if (this.f11197r >= 2) {
                if (menuItem instanceof C0140g) {
                    ((C0140g) menuItem).m8690k(true);
                } else if (menuItem instanceof MenuItemC3416c) {
                    MenuItemC3416c menuItemC3416c = (MenuItemC3416c) menuItem;
                    try {
                        if (menuItemC3416c.f11473e == null) {
                            menuItemC3416c.f11473e = menuItemC3416c.f11472d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        menuItemC3416c.f11473e.invoke(menuItemC3416c.f11472d, Boolean.TRUE);
                    } catch (Exception e) {
                        Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
                    }
                }
            }
            String str = this.f11203x;
            if (str != null) {
                menuItem.setActionView((View) m2399b(str, C3302f.f11166e, C3302f.this.f11168a));
                z = true;
            }
            int i2 = this.f11202w;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            AbstractC3549b abstractC3549b = this.f11205z;
            if (abstractC3549b != null) {
                if (menuItem instanceof AbstractMenuItemC2991b) {
                    ((AbstractMenuItemC2991b) menuItem).mo2323b(abstractC3549b);
                } else {
                    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            CharSequence charSequence = this.f11175A;
            boolean z2 = menuItem instanceof AbstractMenuItemC2991b;
            if (z2) {
                ((AbstractMenuItemC2991b) menuItem).mo10809setContentDescription(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.f11176B;
            if (z2) {
                ((AbstractMenuItemC2991b) menuItem).mo10810setTooltipText(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c = this.f11193n;
            int i3 = this.f11194o;
            if (z2) {
                ((AbstractMenuItemC2991b) menuItem).setAlphabeticShortcut(c, i3);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setAlphabeticShortcut(c, i3);
            }
            char c2 = this.f11195p;
            int i4 = this.f11196q;
            if (z2) {
                ((AbstractMenuItemC2991b) menuItem).setNumericShortcut(c2, i4);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setNumericShortcut(c2, i4);
            }
            PorterDuff.Mode mode = this.f11178D;
            if (mode != null) {
                if (z2) {
                    ((AbstractMenuItemC2991b) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.f11177C;
            if (colorStateList != null) {
                if (z2) {
                    ((AbstractMenuItemC2991b) menuItem).setIconTintList(colorStateList);
                } else if (Build.VERSION.SDK_INT < 26) {
                } else {
                    menuItem.setIconTintList(colorStateList);
                }
            }
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f11166e = clsArr;
        f11167f = clsArr;
    }

    public C3302f(Context context) {
        super(context);
        this.f11170c = context;
        Object[] objArr = {context};
        this.f11168a = objArr;
        this.f11169b = objArr;
    }

    /* renamed from: a */
    public final Object m2402a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        Object obj2 = obj;
        if (obj instanceof ContextWrapper) {
            obj2 = m2402a(((ContextWrapper) obj).getBaseContext());
        }
        return obj2;
    }

    /* renamed from: b */
    public final void m2401b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        boolean z;
        String m8387m;
        String m8387m2;
        C3304b c3304b = new C3304b(menu);
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
                    throw new RuntimeException(C1676a.m4789h("Expecting menu, got ", name));
                }
                eventType = xmlPullParser.next();
            }
        }
        boolean z2 = false;
        boolean z3 = false;
        Object obj = null;
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
                        c3304b.f11181b = 0;
                        c3304b.f11182c = 0;
                        c3304b.f11183d = 0;
                        c3304b.f11184e = 0;
                        c3304b.f11185f = true;
                        c3304b.f11186g = true;
                    } else if (name2.equals("item")) {
                        if (!c3304b.f11187h) {
                            AbstractC3549b abstractC3549b = c3304b.f11205z;
                            if (abstractC3549b == null || !abstractC3549b.mo2190a()) {
                                c3304b.f11187h = true;
                                c3304b.m2398c(c3304b.f11180a.add(c3304b.f11181b, c3304b.f11188i, c3304b.f11189j, c3304b.f11190k));
                            } else {
                                c3304b.m2400a();
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
                        TypedArray obtainStyledAttributes = C3302f.this.f11170c.obtainStyledAttributes(attributeSet, C3035k.f10230q);
                        c3304b.f11181b = obtainStyledAttributes.getResourceId(1, 0);
                        c3304b.f11182c = obtainStyledAttributes.getInt(3, 0);
                        c3304b.f11183d = obtainStyledAttributes.getInt(4, 0);
                        c3304b.f11184e = obtainStyledAttributes.getInt(5, 0);
                        c3304b.f11185f = obtainStyledAttributes.getBoolean(2, true);
                        c3304b.f11186g = obtainStyledAttributes.getBoolean(0, true);
                        obtainStyledAttributes.recycle();
                    } else if (name3.equals("item")) {
                        C0303z0 m8384p = C0303z0.m8384p(C3302f.this.f11170c, attributeSet, C3035k.f10231r);
                        c3304b.f11188i = m8384p.m8388l(2, 0);
                        c3304b.f11189j = (m8384p.m8390j(5, c3304b.f11182c) & (-65536)) | (m8384p.m8390j(6, c3304b.f11183d) & 65535);
                        c3304b.f11190k = m8384p.m8386n(7);
                        c3304b.f11191l = m8384p.m8386n(8);
                        c3304b.f11192m = m8384p.m8388l(0, 0);
                        c3304b.f11193n = m8384p.m8387m(9) == null ? (char) 0 : m8387m.charAt(0);
                        c3304b.f11194o = m8384p.m8390j(16, 4096);
                        c3304b.f11195p = m8384p.m8387m(10) == null ? (char) 0 : m8387m2.charAt(0);
                        c3304b.f11196q = m8384p.m8390j(20, 4096);
                        if (m8384p.m8385o(11)) {
                            c3304b.f11197r = m8384p.m8399a(11, false) ? 1 : 0;
                        } else {
                            c3304b.f11197r = c3304b.f11184e;
                        }
                        c3304b.f11198s = m8384p.m8399a(3, false);
                        c3304b.f11199t = m8384p.m8399a(4, c3304b.f11185f);
                        c3304b.f11200u = m8384p.m8399a(1, c3304b.f11186g);
                        c3304b.f11201v = m8384p.m8390j(21, -1);
                        c3304b.f11204y = m8384p.m8387m(12);
                        c3304b.f11202w = m8384p.m8388l(13, 0);
                        c3304b.f11203x = m8384p.m8387m(15);
                        String m8387m3 = m8384p.m8387m(14);
                        boolean z4 = m8387m3 != null;
                        if (z4 && c3304b.f11202w == 0 && c3304b.f11203x == null) {
                            c3304b.f11205z = (AbstractC3549b) c3304b.m2399b(m8387m3, f11167f, C3302f.this.f11169b);
                        } else {
                            if (z4) {
                                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                            }
                            c3304b.f11205z = null;
                        }
                        c3304b.f11175A = m8384p.m8386n(17);
                        c3304b.f11176B = m8384p.m8386n(22);
                        if (m8384p.m8385o(19)) {
                            c3304b.f11178D = C0233h0.m8495e(m8384p.m8390j(19, -1), c3304b.f11178D);
                        } else {
                            c3304b.f11178D = null;
                        }
                        if (m8384p.m8385o(18)) {
                            c3304b.f11177C = m8384p.m8397c(18);
                        } else {
                            c3304b.f11177C = null;
                        }
                        m8384p.f1164b.recycle();
                        c3304b.f11187h = false;
                    } else {
                        if (name3.equals("menu")) {
                            m2401b(xmlPullParser, attributeSet, c3304b.m2400a());
                            z = z3;
                        } else {
                            z = true;
                            obj = name3;
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
        if (!(menu instanceof AbstractMenuC2990a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                try {
                    XmlResourceParser layout = this.f11170c.getResources().getLayout(i);
                    xmlResourceParser3 = layout;
                    xmlResourceParser = layout;
                    xmlResourceParser2 = layout;
                    m2401b(layout, Xml.asAttributeSet(layout), menu);
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
