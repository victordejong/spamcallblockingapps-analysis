package p1727n3.p1734b.p1741e.p1742i;

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
import com.mopub.common.Constants;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuC26505a;
import p1727n3.p1807k.p1821i.C26624y;
/* renamed from: n3.b.e.i.g */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/g.class */
public class C25469g implements AbstractMenuC26505a {

    /* renamed from: y */
    public static final int[] f71215y = {1, 4, 5, 3, 2, 0};

    /* renamed from: a */
    public final Context f71216a;

    /* renamed from: b */
    public final Resources f71217b;

    /* renamed from: c */
    public boolean f71218c;

    /* renamed from: d */
    public boolean f71219d;

    /* renamed from: e */
    public AbstractC25470a f71220e;

    /* renamed from: m */
    public CharSequence f71228m;

    /* renamed from: n */
    public Drawable f71229n;

    /* renamed from: o */
    public View f71230o;

    /* renamed from: v */
    public C25473i f71237v;

    /* renamed from: x */
    public boolean f71239x;

    /* renamed from: l */
    public int f71227l = 0;

    /* renamed from: p */
    public boolean f71231p = false;

    /* renamed from: q */
    public boolean f71232q = false;

    /* renamed from: r */
    public boolean f71233r = false;

    /* renamed from: s */
    public boolean f71234s = false;

    /* renamed from: t */
    public ArrayList<C25473i> f71235t = new ArrayList<>();

    /* renamed from: u */
    public CopyOnWriteArrayList<WeakReference<AbstractC25483m>> f71236u = new CopyOnWriteArrayList<>();

    /* renamed from: w */
    public boolean f71238w = false;

    /* renamed from: f */
    public ArrayList<C25473i> f71221f = new ArrayList<>();

    /* renamed from: g */
    public ArrayList<C25473i> f71222g = new ArrayList<>();

    /* renamed from: h */
    public boolean f71223h = true;

    /* renamed from: i */
    public ArrayList<C25473i> f71224i = new ArrayList<>();

    /* renamed from: j */
    public ArrayList<C25473i> f71225j = new ArrayList<>();

    /* renamed from: k */
    public boolean f71226k = true;

    /* renamed from: n3.b.e.i.g$a */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/g$a.class */
    public interface AbstractC25470a {
        /* renamed from: a */
        boolean mo3369a(C25469g c25469g, MenuItem menuItem);

        /* renamed from: b */
        void mo3368b(C25469g c25469g);
    }

    /* renamed from: n3.b.e.i.g$b */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/g$b.class */
    public interface AbstractC25471b {
        /* renamed from: e */
        boolean mo3457e(C25473i c25473i);
    }

    public C25469g(Context context) {
        boolean z;
        this.f71216a = context;
        Resources resources = context.getResources();
        this.f71217b = resources;
        boolean z2 = false;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = C26624y.f74522a;
            if (Build.VERSION.SDK_INT >= 28) {
                z = viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", Constants.ANDROID_PLATFORM);
                z = identifier != 0 && resources2.getBoolean(identifier);
            }
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        this.f71219d = z2;
    }

    /* renamed from: A */
    public void m3484A() {
        if (!this.f71231p) {
            this.f71231p = true;
            this.f71232q = false;
            this.f71233r = false;
        }
    }

    /* renamed from: a */
    public MenuItem m3483a(int i, int i2, int i3, CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 >= 0) {
            int[] iArr = f71215y;
            if (i5 < iArr.length) {
                int i6 = (iArr[i5] << 16) | (65535 & i3);
                C25473i c25473i = new C25473i(this, i, i2, i3, i6, charSequence, this.f71227l);
                ArrayList<C25473i> arrayList = this.f71221f;
                int size = arrayList.size();
                while (true) {
                    int i7 = size - 1;
                    if (i7 < 0) {
                        i4 = 0;
                        break;
                    }
                    size = i7;
                    if (arrayList.get(i7).f71250d <= i6) {
                        i4 = i7 + 1;
                        break;
                    }
                }
                arrayList.add(i4, c25473i);
                m3467q(true);
                return c25473i;
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m3483a(0, 0, 0, this.f71217b.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m3483a(i, i2, i3, this.f71217b.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m3483a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m3483a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f71216a.getPackageManager();
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
            MenuItem m3483a = m3483a(i, i2, i3, resolveInfo.loadLabel(packageManager));
            Drawable loadIcon = resolveInfo.loadIcon(packageManager);
            C25473i c25473i = (C25473i) m3483a;
            c25473i.setIcon(loadIcon);
            c25473i.setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = c25473i;
            }
            i6++;
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f71217b.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f71217b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C25473i c25473i = (C25473i) m3483a(i, i2, i3, charSequence);
        r rVar = new r(this.f71216a, this, c25473i);
        c25473i.f71261o = rVar;
        rVar.setHeaderTitle(c25473i.f71251e);
        return rVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public void m3482b(AbstractC25483m abstractC25483m, Context context) {
        this.f71236u.add(new WeakReference<>(abstractC25483m));
        abstractC25483m.mo3417g(context, this);
        this.f71226k = true;
    }

    /* renamed from: c */
    public final void m3481c(boolean z) {
        if (this.f71234s) {
            return;
        }
        this.f71234s = true;
        Iterator<WeakReference<AbstractC25483m>> it = this.f71236u.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC25483m> next = it.next();
            AbstractC25483m abstractC25483m = next.get();
            if (abstractC25483m == null) {
                this.f71236u.remove(next);
            } else {
                abstractC25483m.mo3423a(this, z);
            }
        }
        this.f71234s = false;
    }

    @Override // android.view.Menu
    public void clear() {
        C25473i c25473i = this.f71237v;
        if (c25473i != null) {
            m3480d(c25473i);
        }
        this.f71221f.clear();
        m3467q(true);
    }

    public void clearHeader() {
        this.f71229n = null;
        this.f71228m = null;
        this.f71230o = null;
        m3467q(false);
    }

    @Override // android.view.Menu
    public void close() {
        m3481c(true);
    }

    /* renamed from: d */
    public boolean m3480d(C25473i c25473i) {
        boolean z;
        boolean z2 = false;
        if (!this.f71236u.isEmpty()) {
            if (this.f71237v != c25473i) {
                z2 = false;
            } else {
                m3484A();
                Iterator<WeakReference<AbstractC25483m>> it = this.f71236u.iterator();
                boolean z3 = false;
                while (true) {
                    z = z3;
                    if (!it.hasNext()) {
                        break;
                    }
                    WeakReference<AbstractC25483m> next = it.next();
                    AbstractC25483m abstractC25483m = next.get();
                    if (abstractC25483m == null) {
                        this.f71236u.remove(next);
                    } else {
                        z = abstractC25483m.mo3418f(this, c25473i);
                        z3 = z;
                        if (z) {
                            break;
                        }
                    }
                }
                m3458z();
                z2 = z;
                if (z) {
                    this.f71237v = null;
                    z2 = z;
                }
            }
        }
        return z2;
    }

    /* renamed from: e */
    public boolean m3479e(C25469g c25469g, MenuItem menuItem) {
        AbstractC25470a abstractC25470a = this.f71220e;
        return abstractC25470a != null && abstractC25470a.mo3369a(c25469g, menuItem);
    }

    /* renamed from: f */
    public boolean m3478f(C25473i c25473i) {
        boolean z;
        boolean z2 = false;
        if (this.f71236u.isEmpty()) {
            return false;
        }
        m3484A();
        Iterator<WeakReference<AbstractC25483m>> it = this.f71236u.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            WeakReference<AbstractC25483m> next = it.next();
            AbstractC25483m abstractC25483m = next.get();
            if (abstractC25483m == null) {
                this.f71236u.remove(next);
            } else {
                z = abstractC25483m.mo3422b(this, c25473i);
                z2 = z;
                if (z) {
                    break;
                }
            }
        }
        m3458z();
        if (z) {
            this.f71237v = c25473i;
        }
        return z;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C25473i c25473i = this.f71221f.get(i2);
            if (c25473i.f71247a == i) {
                return c25473i;
            }
            if (c25473i.hasSubMenu() && (findItem = c25473i.f71261o.findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: g */
    public C25473i m3477g(int i, KeyEvent keyEvent) {
        ArrayList<C25473i> arrayList = this.f71235t;
        arrayList.clear();
        m3476h(arrayList, i, keyEvent);
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
        boolean m3470n = m3470n();
        for (int i2 = 0; i2 < size; i2++) {
            C25473i c25473i = arrayList.get(i2);
            char c = m3470n ? c25473i.f71256j : c25473i.f71254h;
            char[] cArr = keyData.meta;
            if ((c == cArr[0] && (metaState & 2) == 0) || ((c == cArr[2] && (metaState & 2) != 0) || (m3470n && c == '\b' && i == 67))) {
                return c25473i;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f71221f.get(i);
    }

    /* renamed from: h */
    public void m3476h(List<C25473i> list, int i, KeyEvent keyEvent) {
        boolean m3470n = m3470n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f71221f.size();
            for (int i2 = 0; i2 < size; i2++) {
                C25473i c25473i = this.f71221f.get(i2);
                if (c25473i.hasSubMenu()) {
                    c25473i.f71261o.m3476h(list, i, keyEvent);
                }
                char c = m3470n ? c25473i.f71256j : c25473i.f71254h;
                if (((modifiers & 69647) == ((m3470n ? c25473i.f71257k : c25473i.f71255i) & 69647)) && c != 0) {
                    char[] cArr = keyData.meta;
                    if ((c == cArr[0] || c == cArr[2] || (m3470n && c == '\b' && i == 67)) && c25473i.isEnabled()) {
                        list.add(c25473i);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f71239x) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f71221f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public void m3475i() {
        ArrayList<C25473i> m3472l = m3472l();
        if (!this.f71226k) {
            return;
        }
        Iterator<WeakReference<AbstractC25483m>> it = this.f71236u.iterator();
        boolean z = false;
        while (it.hasNext()) {
            WeakReference<AbstractC25483m> next = it.next();
            AbstractC25483m abstractC25483m = next.get();
            if (abstractC25483m == null) {
                this.f71236u.remove(next);
            } else {
                z |= abstractC25483m.mo3419e();
            }
        }
        if (z) {
            this.f71224i.clear();
            this.f71225j.clear();
            int size = m3472l.size();
            for (int i = 0; i < size; i++) {
                C25473i c25473i = m3472l.get(i);
                if (c25473i.m3452g()) {
                    this.f71224i.add(c25473i);
                } else {
                    this.f71225j.add(c25473i);
                }
            }
        } else {
            this.f71224i.clear();
            this.f71225j.clear();
            this.f71225j.addAll(m3472l());
        }
        this.f71226k = false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m3477g(i, keyEvent) != null;
    }

    /* renamed from: j */
    public String m3474j() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: k */
    public C25469g m3473k() {
        return this;
    }

    /* renamed from: l */
    public ArrayList<C25473i> m3472l() {
        if (!this.f71223h) {
            return this.f71222g;
        }
        this.f71222g.clear();
        int size = this.f71221f.size();
        for (int i = 0; i < size; i++) {
            C25473i c25473i = this.f71221f.get(i);
            if (c25473i.isVisible()) {
                this.f71222g.add(c25473i);
            }
        }
        this.f71223h = false;
        this.f71226k = true;
        return this.f71222g;
    }

    /* renamed from: m */
    public boolean m3471m() {
        return this.f71238w;
    }

    /* renamed from: n */
    public boolean m3470n() {
        return this.f71218c;
    }

    /* renamed from: o */
    public boolean m3469o() {
        return this.f71219d;
    }

    /* renamed from: p */
    public void m3468p() {
        this.f71226k = true;
        m3467q(true);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m3466r(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C25473i m3477g = m3477g(i, keyEvent);
        boolean m3465s = m3477g != null ? m3465s(m3477g, null, i2) : false;
        if ((i2 & 2) != 0) {
            m3481c(true);
        }
        return m3465s;
    }

    /* renamed from: q */
    public void m3467q(boolean z) {
        if (this.f71231p) {
            this.f71232q = true;
            if (!z) {
                return;
            }
            this.f71233r = true;
            return;
        }
        if (z) {
            this.f71223h = true;
            this.f71226k = true;
        }
        if (this.f71236u.isEmpty()) {
            return;
        }
        m3484A();
        Iterator<WeakReference<AbstractC25483m>> it = this.f71236u.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC25483m> next = it.next();
            AbstractC25483m abstractC25483m = next.get();
            if (abstractC25483m == null) {
                this.f71236u.remove(next);
            } else {
                abstractC25483m.mo3420d(z);
            }
        }
        m3458z();
    }

    /* renamed from: r */
    public boolean m3466r(MenuItem menuItem, int i) {
        return m3465s(menuItem, null, i);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f71221f.get(i2).f71248b == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int size2 = this.f71221f.size();
            for (int i3 = 0; i3 < size2 - i2 && this.f71221f.get(i2).f71248b == i; i3++) {
                m3464t(i2, false);
            }
            m3467q(true);
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
            } else if (this.f71221f.get(i2).f71247a == i) {
                break;
            } else {
                i2++;
            }
        }
        m3464t(i2, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bd  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3465s(android.view.MenuItem r7, p1727n3.p1734b.p1741e.p1742i.AbstractC25483m r8, int r9) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1741e.p1742i.C25469g.m3465s(android.view.MenuItem, n3.b.e.i.m, int):boolean");
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f71221f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C25473i c25473i = this.f71221f.get(i2);
            if (c25473i.f71248b == i) {
                c25473i.m3448k(z2);
                c25473i.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f71238w = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f71221f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C25473i c25473i = this.f71221f.get(i2);
            if (c25473i.f71248b == i) {
                c25473i.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        boolean z2;
        int size = this.f71221f.size();
        int i2 = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            if (i2 >= size) {
                break;
            }
            C25473i c25473i = this.f71221f.get(i2);
            boolean z4 = z2;
            if (c25473i.f71248b == i) {
                z4 = z2;
                if (c25473i.m3446m(z)) {
                    z4 = true;
                }
            }
            i2++;
            z3 = z4;
        }
        if (z2) {
            m3467q(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f71218c = z;
        m3467q(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f71221f.size();
    }

    /* renamed from: t */
    public final void m3464t(int i, boolean z) {
        if (i < 0 || i >= this.f71221f.size()) {
            return;
        }
        this.f71221f.remove(i);
        if (!z) {
            return;
        }
        m3467q(true);
    }

    /* renamed from: u */
    public void m3463u(AbstractC25483m abstractC25483m) {
        Iterator<WeakReference<AbstractC25483m>> it = this.f71236u.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC25483m> next = it.next();
            AbstractC25483m abstractC25483m2 = next.get();
            if (abstractC25483m2 == null || abstractC25483m2 == abstractC25483m) {
                this.f71236u.remove(next);
            }
        }
    }

    /* renamed from: v */
    public void m3462v(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(m3474j());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                item.getSubMenu().m3462v(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    /* renamed from: w */
    public void m3461w(Bundle bundle) {
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
                item.getSubMenu().m3461w(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(m3474j(), sparseArray);
        }
    }

    /* renamed from: x */
    public void m3460x(AbstractC25470a abstractC25470a) {
        this.f71220e = abstractC25470a;
    }

    /* renamed from: y */
    public final void m3459y(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = this.f71217b;
        if (view != null) {
            this.f71230o = view;
            this.f71228m = null;
            this.f71229n = null;
        } else {
            if (i > 0) {
                this.f71228m = resources.getText(i);
            } else if (charSequence != null) {
                this.f71228m = charSequence;
            }
            if (i2 > 0) {
                Context context = this.f71216a;
                Object obj = C26467a.f74235a;
                this.f71229n = C26467a.C26470c.m1789b(context, i2);
            } else if (drawable != null) {
                this.f71229n = drawable;
            }
            this.f71230o = null;
        }
        m3467q(false);
    }

    /* renamed from: z */
    public void m3458z() {
        this.f71231p = false;
        if (this.f71232q) {
            this.f71232q = false;
            m3467q(this.f71233r);
        }
    }
}
