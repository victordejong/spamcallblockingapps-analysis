package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p066d0.C2134a;
import p109h0.AbstractMenuC2990a;
import p163m0.C3610x;
/* renamed from: androidx.appcompat.view.menu.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e.class */
public class C0136e implements AbstractMenuC2990a {

    /* renamed from: y */
    public static final int[] f426y = {1, 4, 5, 3, 2, 0};

    /* renamed from: a */
    public final Context f427a;

    /* renamed from: b */
    public final Resources f428b;

    /* renamed from: c */
    public boolean f429c;

    /* renamed from: d */
    public boolean f430d;

    /* renamed from: e */
    public AbstractC0137a f431e;

    /* renamed from: m */
    public CharSequence f439m;

    /* renamed from: n */
    public Drawable f440n;

    /* renamed from: o */
    public View f441o;

    /* renamed from: v */
    public C0140g f448v;

    /* renamed from: x */
    public boolean f450x;

    /* renamed from: l */
    public int f438l = 0;

    /* renamed from: p */
    public boolean f442p = false;

    /* renamed from: q */
    public boolean f443q = false;

    /* renamed from: r */
    public boolean f444r = false;

    /* renamed from: s */
    public boolean f445s = false;

    /* renamed from: t */
    public ArrayList<C0140g> f446t = new ArrayList<>();

    /* renamed from: u */
    public CopyOnWriteArrayList<WeakReference<AbstractC0144i>> f447u = new CopyOnWriteArrayList<>();

    /* renamed from: w */
    public boolean f449w = false;

    /* renamed from: f */
    public ArrayList<C0140g> f432f = new ArrayList<>();

    /* renamed from: g */
    public ArrayList<C0140g> f433g = new ArrayList<>();

    /* renamed from: h */
    public boolean f434h = true;

    /* renamed from: i */
    public ArrayList<C0140g> f435i = new ArrayList<>();

    /* renamed from: j */
    public ArrayList<C0140g> f436j = new ArrayList<>();

    /* renamed from: k */
    public boolean f437k = true;

    /* renamed from: androidx.appcompat.view.menu.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e$a.class */
    public interface AbstractC0137a {
        /* renamed from: a */
        boolean mo2424a(C0136e c0136e, MenuItem menuItem);

        /* renamed from: b */
        void mo2423b(C0136e c0136e);
    }

    /* renamed from: androidx.appcompat.view.menu.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e$b.class */
    public interface AbstractC0138b {
        /* renamed from: a */
        boolean mo8663a(C0140g c0140g);
    }

    public C0136e(Context context) {
        boolean z;
        this.f427a = context;
        Resources resources = context.getResources();
        this.f428b = resources;
        boolean z2 = false;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = C3610x.f11801a;
            if (Build.VERSION.SDK_INT >= 28) {
                z = viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                z = identifier != 0 && resources2.getBoolean(identifier);
            }
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        this.f430d = z2;
    }

    /* renamed from: a */
    public MenuItem m8714a(int i, int i2, int i3, CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 >= 0) {
            int[] iArr = f426y;
            if (i5 < iArr.length) {
                int i6 = (iArr[i5] << 16) | (65535 & i3);
                C0140g c0140g = new C0140g(this, i, i2, i3, i6, charSequence, this.f438l);
                ArrayList<C0140g> arrayList = this.f432f;
                int size = arrayList.size();
                while (true) {
                    int i7 = size - 1;
                    if (i7 < 0) {
                        i4 = 0;
                        break;
                    }
                    size = i7;
                    if (arrayList.get(i7).f461d <= i6) {
                        i4 = i7 + 1;
                        break;
                    }
                }
                arrayList.add(i4, c0140g);
                mo696p(true);
                return c0140g;
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m8714a(0, 0, 0, this.f428b.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m8714a(i, i2, i3, this.f428b.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m8714a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m8714a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f427a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        int i6 = 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
            i6 = 0;
        }
        while (i6 < size) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem m8714a = m8714a(i, i2, i3, resolveInfo.loadLabel(packageManager));
            Drawable loadIcon = resolveInfo.loadIcon(packageManager);
            C0140g c0140g = (C0140g) m8714a;
            c0140g.setIcon(loadIcon);
            c0140g.setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = c0140g;
            }
            i6++;
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f428b.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f428b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0140g c0140g = (C0140g) m8714a(i, i2, i3, charSequence);
        SubMenuC0151l subMenuC0151l = new SubMenuC0151l(this.f427a, this, c0140g);
        c0140g.f472o = subMenuC0151l;
        subMenuC0151l.setHeaderTitle(c0140g.f462e);
        return subMenuC0151l;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public void m8713b(AbstractC0144i abstractC0144i, Context context) {
        this.f447u.add(new WeakReference<>(abstractC0144i));
        abstractC0144i.mo715c(context, this);
        this.f437k = true;
    }

    /* renamed from: c */
    public final void m8712c(boolean z) {
        if (this.f445s) {
            return;
        }
        this.f445s = true;
        Iterator<WeakReference<AbstractC0144i>> it2 = this.f447u.iterator();
        while (it2.hasNext()) {
            WeakReference<AbstractC0144i> next = it2.next();
            AbstractC0144i abstractC0144i = next.get();
            if (abstractC0144i == null) {
                this.f447u.remove(next);
            } else {
                abstractC0144i.mo717a(this, z);
            }
        }
        this.f445s = false;
    }

    @Override // android.view.Menu
    public void clear() {
        C0140g c0140g = this.f448v;
        if (c0140g != null) {
            mo8680d(c0140g);
        }
        this.f432f.clear();
        mo696p(true);
    }

    public void clearHeader() {
        this.f440n = null;
        this.f439m = null;
        this.f441o = null;
        mo696p(false);
    }

    @Override // android.view.Menu
    public void close() {
        m8712c(true);
    }

    /* renamed from: d */
    public boolean mo8680d(C0140g c0140g) {
        boolean z;
        boolean z2 = false;
        if (!this.f447u.isEmpty()) {
            if (this.f448v != c0140g) {
                z2 = false;
            } else {
                m8699y();
                Iterator<WeakReference<AbstractC0144i>> it2 = this.f447u.iterator();
                boolean z3 = false;
                while (true) {
                    z = z3;
                    if (!it2.hasNext()) {
                        break;
                    }
                    WeakReference<AbstractC0144i> next = it2.next();
                    AbstractC0144i abstractC0144i = next.get();
                    if (abstractC0144i == null) {
                        this.f447u.remove(next);
                    } else {
                        z = abstractC0144i.mo708j(this, c0140g);
                        z3 = z;
                        if (z) {
                            break;
                        }
                    }
                }
                m8700x();
                z2 = z;
                if (z) {
                    this.f448v = null;
                    z2 = z;
                }
            }
        }
        return z2;
    }

    /* renamed from: e */
    public boolean mo8679e(C0136e c0136e, MenuItem menuItem) {
        AbstractC0137a abstractC0137a = this.f431e;
        return abstractC0137a != null && abstractC0137a.mo2424a(c0136e, menuItem);
    }

    /* renamed from: f */
    public boolean mo8678f(C0140g c0140g) {
        boolean z;
        boolean z2 = false;
        if (this.f447u.isEmpty()) {
            return false;
        }
        m8699y();
        Iterator<WeakReference<AbstractC0144i>> it2 = this.f447u.iterator();
        while (true) {
            z = z2;
            if (!it2.hasNext()) {
                break;
            }
            WeakReference<AbstractC0144i> next = it2.next();
            AbstractC0144i abstractC0144i = next.get();
            if (abstractC0144i == null) {
                this.f447u.remove(next);
            } else {
                z = abstractC0144i.mo707k(this, c0140g);
                z2 = z;
                if (z) {
                    break;
                }
            }
        }
        m8700x();
        if (z) {
            this.f448v = c0140g;
        }
        return z;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0140g c0140g = this.f432f.get(i2);
            if (c0140g.f458a == i) {
                return c0140g;
            }
            if (c0140g.hasSubMenu() && (findItem = c0140g.f472o.findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: g */
    public C0140g m8711g(int i, KeyEvent keyEvent) {
        ArrayList<C0140g> arrayList = this.f446t;
        arrayList.clear();
        m8710h(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean mo8674n = mo8674n();
        for (int i2 = 0; i2 < size; i2++) {
            C0140g c0140g = arrayList.get(i2);
            char c = mo8674n ? c0140g.f467j : c0140g.f465h;
            char[] cArr = keyData.meta;
            if ((c == cArr[0] && (metaState & 2) == 0) || ((c == cArr[2] && (metaState & 2) != 0) || (mo8674n && c == '\b' && i == 67))) {
                return c0140g;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f432f.get(i);
    }

    /* renamed from: h */
    public void m8710h(List<C0140g> list, int i, KeyEvent keyEvent) {
        boolean mo8674n = mo8674n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f432f.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0140g c0140g = this.f432f.get(i2);
                if (c0140g.hasSubMenu()) {
                    c0140g.f472o.m8710h(list, i, keyEvent);
                }
                char c = mo8674n ? c0140g.f467j : c0140g.f465h;
                if (((modifiers & 69647) == ((mo8674n ? c0140g.f468k : c0140g.f466i) & 69647)) && c != 0) {
                    char[] cArr = keyData.meta;
                    if ((c == cArr[0] || c == cArr[2] || (mo8674n && c == '\b' && i == 67)) && c0140g.isEnabled()) {
                        list.add(c0140g);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f450x) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f432f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public void m8709i() {
        ArrayList<C0140g> m8708l = m8708l();
        if (!this.f437k) {
            return;
        }
        Iterator<WeakReference<AbstractC0144i>> it2 = this.f447u.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            WeakReference<AbstractC0144i> next = it2.next();
            AbstractC0144i abstractC0144i = next.get();
            if (abstractC0144i == null) {
                this.f447u.remove(next);
            } else {
                z |= abstractC0144i.mo710h();
            }
        }
        if (z) {
            this.f435i.clear();
            this.f436j.clear();
            int size = m8708l.size();
            for (int i = 0; i < size; i++) {
                C0140g c0140g = m8708l.get(i);
                if (c0140g.m8694g()) {
                    this.f435i.add(c0140g);
                } else {
                    this.f436j.add(c0140g);
                }
            }
        } else {
            this.f435i.clear();
            this.f436j.clear();
            this.f436j.addAll(m8708l());
        }
        this.f437k = false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m8711g(i, keyEvent) != null;
    }

    /* renamed from: j */
    public String mo8677j() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: k */
    public C0136e mo8676k() {
        return this;
    }

    /* renamed from: l */
    public ArrayList<C0140g> m8708l() {
        if (!this.f434h) {
            return this.f433g;
        }
        this.f433g.clear();
        int size = this.f432f.size();
        for (int i = 0; i < size; i++) {
            C0140g c0140g = this.f432f.get(i);
            if (c0140g.isVisible()) {
                this.f433g.add(c0140g);
            }
        }
        this.f434h = false;
        this.f437k = true;
        return this.f433g;
    }

    /* renamed from: m */
    public boolean mo8675m() {
        return this.f449w;
    }

    /* renamed from: n */
    public boolean mo8674n() {
        return this.f429c;
    }

    /* renamed from: o */
    public boolean mo8673o() {
        return this.f430d;
    }

    /* renamed from: p */
    public void mo696p(boolean z) {
        if (this.f442p) {
            this.f443q = true;
            if (!z) {
                return;
            }
            this.f444r = true;
            return;
        }
        if (z) {
            this.f434h = true;
            this.f437k = true;
        }
        if (this.f447u.isEmpty()) {
            return;
        }
        m8699y();
        Iterator<WeakReference<AbstractC0144i>> it2 = this.f447u.iterator();
        while (it2.hasNext()) {
            WeakReference<AbstractC0144i> next = it2.next();
            AbstractC0144i abstractC0144i = next.get();
            if (abstractC0144i == null) {
                this.f447u.remove(next);
            } else {
                abstractC0144i.mo711g(z);
            }
        }
        m8700x();
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m8707q(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C0140g m8711g = m8711g(i, keyEvent);
        boolean m8706r = m8711g != null ? m8706r(m8711g, null, i2) : false;
        if ((i2 & 2) != 0) {
            m8712c(true);
        }
        return m8706r;
    }

    /* renamed from: q */
    public boolean m8707q(MenuItem menuItem, int i) {
        return m8706r(menuItem, null, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00bf  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m8706r(android.view.MenuItem r7, androidx.appcompat.view.menu.AbstractC0144i r8, int r9) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.C0136e.m8706r(android.view.MenuItem, androidx.appcompat.view.menu.i, int):boolean");
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f432f.get(i2).f459b == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int size2 = this.f432f.size();
            for (int i3 = 0; i3 < size2 - i2 && this.f432f.get(i2).f459b == i; i3++) {
                m8705s(i2, false);
            }
            mo696p(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f432f.get(i2).f458a == i) {
                break;
            } else {
                i2++;
            }
        }
        m8705s(i2, true);
    }

    /* renamed from: s */
    public final void m8705s(int i, boolean z) {
        if (i < 0 || i >= this.f432f.size()) {
            return;
        }
        this.f432f.remove(i);
        if (!z) {
            return;
        }
        mo696p(true);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f432f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0140g c0140g = this.f432f.get(i2);
            if (c0140g.f459b == i) {
                c0140g.m8690k(z2);
                c0140g.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f449w = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f432f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0140g c0140g = this.f432f.get(i2);
            if (c0140g.f459b == i) {
                c0140g.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        boolean z2;
        int size = this.f432f.size();
        int i2 = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            if (i2 >= size) {
                break;
            }
            C0140g c0140g = this.f432f.get(i2);
            boolean z4 = z2;
            if (c0140g.f459b == i) {
                z4 = z2;
                if (c0140g.m8688m(z)) {
                    z4 = true;
                }
            }
            i2++;
            z3 = z4;
        }
        if (z2) {
            mo696p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f429c = z;
        mo696p(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f432f.size();
    }

    /* renamed from: t */
    public void m8704t(AbstractC0144i abstractC0144i) {
        Iterator<WeakReference<AbstractC0144i>> it2 = this.f447u.iterator();
        while (it2.hasNext()) {
            WeakReference<AbstractC0144i> next = it2.next();
            AbstractC0144i abstractC0144i2 = next.get();
            if (abstractC0144i2 == null || abstractC0144i2 == abstractC0144i) {
                this.f447u.remove(next);
            }
        }
    }

    /* renamed from: u */
    public void m8703u(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo8677j());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0151l) item.getSubMenu()).m8703u(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    /* renamed from: v */
    public void m8702v(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        int i = 0;
        while (i < size) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            SparseArray<? extends Parcelable> sparseArray2 = sparseArray;
            if (actionView != null) {
                sparseArray2 = sparseArray;
                if (actionView.getId() != -1) {
                    SparseArray<? extends Parcelable> sparseArray3 = sparseArray;
                    if (sparseArray == null) {
                        sparseArray3 = new SparseArray<>();
                    }
                    actionView.saveHierarchyState(sparseArray3);
                    sparseArray2 = sparseArray3;
                    if (item.isActionViewExpanded()) {
                        bundle.putInt("android:menu:expandedactionview", item.getItemId());
                        sparseArray2 = sparseArray3;
                    }
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0151l) item.getSubMenu()).m8702v(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo8677j(), sparseArray);
        }
    }

    /* renamed from: w */
    public final void m8701w(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = this.f428b;
        if (view != null) {
            this.f441o = view;
            this.f439m = null;
            this.f440n = null;
        } else {
            if (i > 0) {
                this.f439m = resources.getText(i);
            } else if (charSequence != null) {
                this.f439m = charSequence;
            }
            if (i2 > 0) {
                Context context = this.f427a;
                Object obj = C2134a.f7832a;
                this.f440n = C2134a.C2136b.m3841b(context, i2);
            } else if (drawable != null) {
                this.f440n = drawable;
            }
            this.f441o = null;
        }
        mo696p(false);
    }

    /* renamed from: x */
    public void m8700x() {
        this.f442p = false;
        if (this.f443q) {
            this.f443q = false;
            mo696p(this.f444r);
        }
    }

    /* renamed from: y */
    public void m8699y() {
        if (!this.f442p) {
            this.f442p = true;
            this.f443q = false;
            this.f444r = false;
        }
    }
}
