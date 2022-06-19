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
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.view.menu.MenuItemC0188j;
import androidx.appcompat.widget.C0268aa;
import androidx.appcompat.widget.C0311as;
import androidx.core.p017b.p018a.AbstractMenuC0460a;
import androidx.core.p023g.AbstractC0530b;
import androidx.core.p023g.C0538g;
import com.crashlytics.android.core.CodedOutputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.view.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g.class */
public class C0162g extends MenuInflater {

    /* renamed from: a */
    static final Class<?>[] f545a = {Context.class};

    /* renamed from: b */
    static final Class<?>[] f546b = f545a;

    /* renamed from: c */
    final Object[] f547c;

    /* renamed from: d */
    final Object[] f548d;

    /* renamed from: e */
    Context f549e;

    /* renamed from: f */
    private Object f550f;

    /* renamed from: androidx.appcompat.view.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$a.class */
    public static class MenuItem$OnMenuItemClickListenerC0163a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        private static final Class<?>[] f551a = {MenuItem.class};

        /* renamed from: b */
        private Object f552b;

        /* renamed from: c */
        private Method f553c;

        public MenuItem$OnMenuItemClickListenerC0163a(Object obj, String str) {
            this.f552b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f553c = cls.getMethod(str, f551a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f553c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f553c.invoke(this.f552b, menuItem)).booleanValue();
                }
                this.f553c.invoke(this.f552b, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: androidx.appcompat.view.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$b.class */
    public class C0164b {

        /* renamed from: A */
        private String f554A;

        /* renamed from: B */
        private String f555B;

        /* renamed from: C */
        private CharSequence f556C;

        /* renamed from: D */
        private CharSequence f557D;

        /* renamed from: E */
        private ColorStateList f558E = null;

        /* renamed from: F */
        private PorterDuff.Mode f559F = null;

        /* renamed from: a */
        AbstractC0530b f560a;

        /* renamed from: c */
        private Menu f562c;

        /* renamed from: d */
        private int f563d;

        /* renamed from: e */
        private int f564e;

        /* renamed from: f */
        private int f565f;

        /* renamed from: g */
        private int f566g;

        /* renamed from: h */
        private boolean f567h;

        /* renamed from: i */
        private boolean f568i;

        /* renamed from: j */
        private boolean f569j;

        /* renamed from: k */
        private int f570k;

        /* renamed from: l */
        private int f571l;

        /* renamed from: m */
        private CharSequence f572m;

        /* renamed from: n */
        private CharSequence f573n;

        /* renamed from: o */
        private int f574o;

        /* renamed from: p */
        private char f575p;

        /* renamed from: q */
        private int f576q;

        /* renamed from: r */
        private char f577r;

        /* renamed from: s */
        private int f578s;

        /* renamed from: t */
        private int f579t;

        /* renamed from: u */
        private boolean f580u;

        /* renamed from: v */
        private boolean f581v;

        /* renamed from: w */
        private boolean f582w;

        /* renamed from: x */
        private int f583x;

        /* renamed from: y */
        private int f584y;

        /* renamed from: z */
        private String f585z;

        public C0164b(Menu menu) {
            C0162g.this = r4;
            this.f562c = menu;
            m7625a();
        }

        /* renamed from: a */
        private char m7622a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* renamed from: a */
        private <T> T m7621a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, C0162g.this.f549e.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* renamed from: a */
        private void m7623a(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.f580u).setVisible(this.f581v).setEnabled(this.f582w).setCheckable(this.f579t >= 1).setTitleCondensed(this.f573n).setIcon(this.f574o);
            int i = this.f583x;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f555B != null) {
                if (C0162g.this.f549e.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC0163a(C0162g.this.m7628a(), this.f555B));
            }
            boolean z2 = menuItem instanceof C0186i;
            if (z2) {
                C0186i c0186i = (C0186i) menuItem;
            }
            if (this.f579t >= 2) {
                if (z2) {
                    ((C0186i) menuItem).m7557a(true);
                } else if (menuItem instanceof MenuItemC0188j) {
                    ((MenuItemC0188j) menuItem).m7538a(true);
                }
            }
            String str = this.f585z;
            if (str != null) {
                menuItem.setActionView((View) m7621a(str, C0162g.f545a, C0162g.this.f547c));
                z = true;
            }
            int i2 = this.f584y;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            AbstractC0530b abstractC0530b = this.f560a;
            if (abstractC0530b != null) {
                C0538g.m6327a(menuItem, abstractC0530b);
            }
            C0538g.m6326a(menuItem, this.f556C);
            C0538g.m6324b(menuItem, this.f557D);
            C0538g.m6325b(menuItem, this.f575p, this.f576q);
            C0538g.m6330a(menuItem, this.f577r, this.f578s);
            PorterDuff.Mode mode = this.f559F;
            if (mode != null) {
                C0538g.m6328a(menuItem, mode);
            }
            ColorStateList colorStateList = this.f558E;
            if (colorStateList != null) {
                C0538g.m6329a(menuItem, colorStateList);
            }
        }

        /* renamed from: a */
        public void m7625a() {
            this.f563d = 0;
            this.f564e = 0;
            this.f565f = 0;
            this.f566g = 0;
            this.f567h = true;
            this.f568i = true;
        }

        /* renamed from: a */
        public void m7624a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = C0162g.this.f549e.obtainStyledAttributes(attributeSet, C0051a.C0061j.MenuGroup);
            this.f563d = obtainStyledAttributes.getResourceId(C0051a.C0061j.MenuGroup_android_id, 0);
            this.f564e = obtainStyledAttributes.getInt(C0051a.C0061j.MenuGroup_android_menuCategory, 0);
            this.f565f = obtainStyledAttributes.getInt(C0051a.C0061j.MenuGroup_android_orderInCategory, 0);
            this.f566g = obtainStyledAttributes.getInt(C0051a.C0061j.MenuGroup_android_checkableBehavior, 0);
            this.f567h = obtainStyledAttributes.getBoolean(C0051a.C0061j.MenuGroup_android_visible, true);
            this.f568i = obtainStyledAttributes.getBoolean(C0051a.C0061j.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: b */
        public void m7620b() {
            this.f569j = true;
            m7623a(this.f562c.add(this.f563d, this.f570k, this.f571l, this.f572m));
        }

        /* renamed from: b */
        public void m7619b(AttributeSet attributeSet) {
            C0311as m7157a = C0311as.m7157a(C0162g.this.f549e, attributeSet, C0051a.C0061j.MenuItem);
            this.f570k = m7157a.m7143g(C0051a.C0061j.MenuItem_android_id, 0);
            this.f571l = (m7157a.m7161a(C0051a.C0061j.MenuItem_android_menuCategory, this.f564e) & (-65536)) | (m7157a.m7161a(C0051a.C0061j.MenuItem_android_orderInCategory, this.f565f) & 65535);
            this.f572m = m7157a.m7152c(C0051a.C0061j.MenuItem_android_title);
            this.f573n = m7157a.m7152c(C0051a.C0061j.MenuItem_android_titleCondensed);
            this.f574o = m7157a.m7143g(C0051a.C0061j.MenuItem_android_icon, 0);
            this.f575p = m7622a(m7157a.m7150d(C0051a.C0061j.MenuItem_android_alphabeticShortcut));
            this.f576q = m7157a.m7161a(C0051a.C0061j.MenuItem_alphabeticModifiers, CodedOutputStream.DEFAULT_BUFFER_SIZE);
            this.f577r = m7622a(m7157a.m7150d(C0051a.C0061j.MenuItem_android_numericShortcut));
            this.f578s = m7157a.m7161a(C0051a.C0061j.MenuItem_numericModifiers, CodedOutputStream.DEFAULT_BUFFER_SIZE);
            if (m7157a.m7144g(C0051a.C0061j.MenuItem_android_checkable)) {
                this.f579t = m7157a.m7159a(C0051a.C0061j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f579t = this.f566g;
            }
            this.f580u = m7157a.m7159a(C0051a.C0061j.MenuItem_android_checked, false);
            this.f581v = m7157a.m7159a(C0051a.C0061j.MenuItem_android_visible, this.f567h);
            this.f582w = m7157a.m7159a(C0051a.C0061j.MenuItem_android_enabled, this.f568i);
            this.f583x = m7157a.m7161a(C0051a.C0061j.MenuItem_showAsAction, -1);
            this.f555B = m7157a.m7150d(C0051a.C0061j.MenuItem_android_onClick);
            this.f584y = m7157a.m7143g(C0051a.C0061j.MenuItem_actionLayout, 0);
            this.f585z = m7157a.m7150d(C0051a.C0061j.MenuItem_actionViewClass);
            this.f554A = m7157a.m7150d(C0051a.C0061j.MenuItem_actionProviderClass);
            Object[] objArr = this.f554A != null ? 1 : null;
            if (objArr != null && this.f584y == 0 && this.f585z == null) {
                this.f560a = (AbstractC0530b) m7621a(this.f554A, C0162g.f546b, C0162g.this.f548d);
            } else {
                if (objArr != null) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f560a = null;
            }
            this.f556C = m7157a.m7152c(C0051a.C0061j.MenuItem_contentDescription);
            this.f557D = m7157a.m7152c(C0051a.C0061j.MenuItem_tooltipText);
            if (m7157a.m7144g(C0051a.C0061j.MenuItem_iconTintMode)) {
                this.f559F = C0268aa.m7306a(m7157a.m7161a(C0051a.C0061j.MenuItem_iconTintMode, -1), this.f559F);
            } else {
                this.f559F = null;
            }
            if (m7157a.m7144g(C0051a.C0061j.MenuItem_iconTint)) {
                this.f558E = m7157a.m7148e(C0051a.C0061j.MenuItem_iconTint);
            } else {
                this.f558E = null;
            }
            m7157a.m7164a();
            this.f569j = false;
        }

        /* renamed from: c */
        public SubMenu m7618c() {
            this.f569j = true;
            SubMenu addSubMenu = this.f562c.addSubMenu(this.f563d, this.f570k, this.f571l, this.f572m);
            m7623a(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: d */
        public boolean m7617d() {
            return this.f569j;
        }
    }

    public C0162g(Context context) {
        super(context);
        this.f549e = context;
        this.f547c = new Object[]{context};
        this.f548d = this.f547c;
    }

    /* renamed from: a */
    private Object m7627a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        Object obj2 = obj;
        if (obj instanceof ContextWrapper) {
            obj2 = m7627a(((ContextWrapper) obj).getBaseContext());
        }
        return obj2;
    }

    /* renamed from: a */
    private void m7626a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        int next;
        boolean z;
        boolean z2;
        String str;
        C0164b c0164b = new C0164b(menu);
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
        int i = next;
        while (!z3) {
            if (i == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (i != 2) {
                if (i != 3) {
                    z2 = z4;
                    str = obj;
                    z = z3;
                } else {
                    String name2 = xmlPullParser.getName();
                    if (z4 && name2.equals(obj)) {
                        str = null;
                        z2 = false;
                        z = z3;
                    } else if (name2.equals("group")) {
                        c0164b.m7625a();
                        z2 = z4;
                        str = obj;
                        z = z3;
                    } else if (name2.equals("item")) {
                        z2 = z4;
                        str = obj;
                        z = z3;
                        if (!c0164b.m7617d()) {
                            if (c0164b.f560a == null || !c0164b.f560a.mo6350c()) {
                                c0164b.m7620b();
                                z2 = z4;
                                str = obj;
                                z = z3;
                            } else {
                                c0164b.m7618c();
                                z2 = z4;
                                str = obj;
                                z = z3;
                            }
                        }
                    } else {
                        z2 = z4;
                        str = obj;
                        z = z3;
                        if (name2.equals("menu")) {
                            z = true;
                            z2 = z4;
                            str = obj;
                        }
                    }
                }
            } else if (z4) {
                z2 = z4;
                str = obj;
                z = z3;
            } else {
                str = xmlPullParser.getName();
                if (str.equals("group")) {
                    c0164b.m7624a(attributeSet);
                    z2 = z4;
                    str = obj;
                    z = z3;
                } else if (str.equals("item")) {
                    c0164b.m7619b(attributeSet);
                    z2 = z4;
                    str = obj;
                    z = z3;
                } else if (str.equals("menu")) {
                    m7626a(xmlPullParser, attributeSet, c0164b.m7618c());
                    z2 = z4;
                    str = obj;
                    z = z3;
                } else {
                    z2 = true;
                    z = z3;
                }
            }
            i = xmlPullParser.next();
            z4 = z2;
            obj = str;
            z3 = z;
        }
    }

    /* renamed from: a */
    Object m7628a() {
        if (this.f550f == null) {
            this.f550f = m7627a(this.f549e);
        }
        return this.f550f;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof AbstractMenuC0460a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                try {
                    XmlResourceParser layout = this.f549e.getResources().getLayout(i);
                    xmlResourceParser3 = layout;
                    xmlResourceParser = layout;
                    xmlResourceParser2 = layout;
                    m7626a(layout, Xml.asAttributeSet(layout), menu);
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
