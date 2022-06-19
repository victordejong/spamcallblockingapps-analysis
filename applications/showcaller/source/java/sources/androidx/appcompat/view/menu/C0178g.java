package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.content.C0586a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p020b.p041h.p043f.p044a.AbstractMenuC1539a;
import p020b.p041h.p050l.AbstractC1605b;
import p020b.p041h.p050l.C1693x;
/* renamed from: androidx.appcompat.view.menu.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g.class */
public class C0178g implements AbstractMenuC1539a {

    /* renamed from: a */
    private static final int[] f629a = {1, 4, 5, 3, 2, 0};

    /* renamed from: A */
    private boolean f630A;

    /* renamed from: b */
    private final Context f631b;

    /* renamed from: c */
    private final Resources f632c;

    /* renamed from: d */
    private boolean f633d;

    /* renamed from: e */
    private boolean f634e;

    /* renamed from: f */
    private AbstractC0179a f635f;

    /* renamed from: n */
    private ContextMenu.ContextMenuInfo f643n;

    /* renamed from: o */
    CharSequence f644o;

    /* renamed from: p */
    Drawable f645p;

    /* renamed from: q */
    View f646q;

    /* renamed from: y */
    private C0182i f654y;

    /* renamed from: m */
    private int f642m = 0;

    /* renamed from: r */
    private boolean f647r = false;

    /* renamed from: s */
    private boolean f648s = false;

    /* renamed from: t */
    private boolean f649t = false;

    /* renamed from: u */
    private boolean f650u = false;

    /* renamed from: v */
    private boolean f651v = false;

    /* renamed from: w */
    private ArrayList<C0182i> f652w = new ArrayList<>();

    /* renamed from: x */
    private CopyOnWriteArrayList<WeakReference<AbstractC0193m>> f653x = new CopyOnWriteArrayList<>();

    /* renamed from: z */
    private boolean f655z = false;

    /* renamed from: g */
    private ArrayList<C0182i> f636g = new ArrayList<>();

    /* renamed from: h */
    private ArrayList<C0182i> f637h = new ArrayList<>();

    /* renamed from: i */
    private boolean f638i = true;

    /* renamed from: j */
    private ArrayList<C0182i> f639j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<C0182i> f640k = new ArrayList<>();

    /* renamed from: l */
    private boolean f641l = true;

    /* renamed from: androidx.appcompat.view.menu.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$a.class */
    public interface AbstractC0179a {
        /* renamed from: a */
        boolean mo4426a(C0178g c0178g, MenuItem menuItem);

        /* renamed from: b */
        void mo4425b(C0178g c0178g);
    }

    /* renamed from: androidx.appcompat.view.menu.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$b.class */
    public interface AbstractC0180b {
        /* renamed from: a */
        boolean mo35227a(C0182i c0182i);
    }

    public C0178g(Context context) {
        this.f631b = context;
        this.f632c = context.getResources();
        m35385f0(true);
    }

    /* renamed from: D */
    private static int m35411D(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = f629a;
            if (i2 < iArr.length) {
                return (i & 65535) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    /* renamed from: P */
    private void m35404P(int i, boolean z) {
        if (i < 0 || i >= this.f636g.size()) {
            return;
        }
        this.f636g.remove(i);
        if (!z) {
            return;
        }
        mo4492M(true);
    }

    /* renamed from: a0 */
    private void m35394a0(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources m35410E = m35410E();
        if (view != null) {
            this.f646q = view;
            this.f644o = null;
            this.f645p = null;
        } else {
            if (i > 0) {
                this.f644o = m35410E.getText(i);
            } else if (charSequence != null) {
                this.f644o = charSequence;
            }
            if (i2 > 0) {
                this.f645p = C0586a.m33348f(m35369w(), i2);
            } else if (drawable != null) {
                this.f645p = drawable;
            }
            this.f646q = null;
        }
        mo4492M(false);
    }

    /* renamed from: f0 */
    private void m35385f0(boolean z) {
        this.f634e = z && this.f632c.getConfiguration().keyboard != 1 && C1693x.m29214f(ViewConfiguration.get(this.f631b), this.f631b);
    }

    /* renamed from: g */
    private C0182i m35384g(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new C0182i(this, i, i2, i3, i4, charSequence, i5);
    }

    /* renamed from: i */
    private void m35381i(boolean z) {
        if (this.f653x.isEmpty()) {
            return;
        }
        m35382h0();
        Iterator<WeakReference<AbstractC0193m>> it = this.f653x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0193m> next = it.next();
            AbstractC0193m abstractC0193m = next.get();
            if (abstractC0193m == null) {
                this.f653x.remove(next);
            } else {
                abstractC0193m.mo4536c(z);
            }
        }
        m35383g0();
    }

    /* renamed from: j */
    private void m35380j(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || this.f653x.isEmpty()) {
            return;
        }
        Iterator<WeakReference<AbstractC0193m>> it = this.f653x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0193m> next = it.next();
            AbstractC0193m abstractC0193m = next.get();
            if (abstractC0193m == null) {
                this.f653x.remove(next);
            } else {
                int id = abstractC0193m.getId();
                if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    abstractC0193m.mo4530j(parcelable);
                }
            }
        }
    }

    /* renamed from: k */
    private void m35379k(Bundle bundle) {
        Parcelable mo4527m;
        if (this.f653x.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator<WeakReference<AbstractC0193m>> it = this.f653x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0193m> next = it.next();
            AbstractC0193m abstractC0193m = next.get();
            if (abstractC0193m == null) {
                this.f653x.remove(next);
            } else {
                int id = abstractC0193m.getId();
                if (id > 0 && (mo4527m = abstractC0193m.mo4527m()) != null) {
                    sparseArray.put(id, mo4527m);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
    }

    /* renamed from: l */
    private boolean m35378l(SubMenuC0202r subMenuC0202r, AbstractC0193m abstractC0193m) {
        boolean z = false;
        if (this.f653x.isEmpty()) {
            return false;
        }
        if (abstractC0193m != null) {
            z = abstractC0193m.mo4528l(subMenuC0202r);
        }
        Iterator<WeakReference<AbstractC0193m>> it = this.f653x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0193m> next = it.next();
            AbstractC0193m abstractC0193m2 = next.get();
            if (abstractC0193m2 == null) {
                this.f653x.remove(next);
            } else if (!z) {
                z = abstractC0193m2.mo4528l(subMenuC0202r);
            }
        }
        return z;
    }

    /* renamed from: p */
    private static int m35375p(ArrayList<C0182i> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).m35358f() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    /* renamed from: A */
    public View m35414A() {
        return this.f646q;
    }

    /* renamed from: B */
    public ArrayList<C0182i> m35413B() {
        m35371t();
        return this.f640k;
    }

    /* renamed from: C */
    public boolean m35412C() {
        return this.f650u;
    }

    /* renamed from: E */
    Resources m35410E() {
        return this.f632c;
    }

    /* renamed from: F */
    public C0178g mo35306F() {
        return this;
    }

    /* renamed from: G */
    public ArrayList<C0182i> m35409G() {
        if (!this.f638i) {
            return this.f637h;
        }
        this.f637h.clear();
        int size = this.f636g.size();
        for (int i = 0; i < size; i++) {
            C0182i c0182i = this.f636g.get(i);
            if (c0182i.isVisible()) {
                this.f637h.add(c0182i);
            }
        }
        this.f638i = false;
        this.f641l = true;
        return this.f637h;
    }

    /* renamed from: H */
    public boolean mo35305H() {
        return this.f655z;
    }

    /* renamed from: I */
    public boolean mo35304I() {
        return this.f633d;
    }

    /* renamed from: J */
    public boolean mo35303J() {
        return this.f634e;
    }

    /* renamed from: K */
    public void m35408K(C0182i c0182i) {
        this.f641l = true;
        mo4492M(true);
    }

    /* renamed from: L */
    public void m35407L(C0182i c0182i) {
        this.f638i = true;
        mo4492M(true);
    }

    /* renamed from: M */
    public void mo4492M(boolean z) {
        if (!this.f647r) {
            if (z) {
                this.f638i = true;
                this.f641l = true;
            }
            m35381i(z);
            return;
        }
        this.f648s = true;
        if (!z) {
            return;
        }
        this.f649t = true;
    }

    /* renamed from: N */
    public boolean m35406N(MenuItem menuItem, int i) {
        return m35405O(menuItem, null, i);
    }

    /* renamed from: O */
    public boolean m35405O(MenuItem menuItem, AbstractC0193m abstractC0193m, int i) {
        boolean z;
        C0182i c0182i = (C0182i) menuItem;
        if (c0182i == null || !c0182i.isEnabled()) {
            return false;
        }
        boolean m35353k = c0182i.m35353k();
        AbstractC1605b mo29771b = c0182i.mo29771b();
        boolean z2 = mo29771b != null && mo29771b.mo29631a();
        if (c0182i.m35354j()) {
            boolean expandActionView = m35353k | c0182i.expandActionView();
            z = expandActionView;
            if (expandActionView) {
                m35387e(true);
                z = expandActionView;
            }
        } else if (c0182i.hasSubMenu() || z2) {
            if ((i & 4) == 0) {
                m35387e(false);
            }
            if (!c0182i.hasSubMenu()) {
                c0182i.m35340x(new SubMenuC0202r(m35369w(), this, c0182i));
            }
            SubMenuC0202r subMenuC0202r = (SubMenuC0202r) c0182i.getSubMenu();
            if (z2) {
                mo29771b.mo29626f(subMenuC0202r);
            }
            boolean m35378l = m35353k | m35378l(subMenuC0202r, abstractC0193m);
            z = m35378l;
            if (!m35378l) {
                m35387e(true);
                z = m35378l;
            }
        } else {
            z = m35353k;
            if ((i & 1) == 0) {
                m35387e(true);
                z = m35353k;
            }
        }
        return z;
    }

    /* renamed from: Q */
    public void m35403Q(AbstractC0193m abstractC0193m) {
        Iterator<WeakReference<AbstractC0193m>> it = this.f653x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0193m> next = it.next();
            AbstractC0193m abstractC0193m2 = next.get();
            if (abstractC0193m2 == null || abstractC0193m2 == abstractC0193m) {
                this.f653x.remove(next);
            }
        }
    }

    /* renamed from: R */
    public void m35402R(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo35297v());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0202r) item.getSubMenu()).m35402R(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    /* renamed from: S */
    public void m35401S(Bundle bundle) {
        m35380j(bundle);
    }

    /* renamed from: T */
    public void m35400T(Bundle bundle) {
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
                ((SubMenuC0202r) item.getSubMenu()).m35400T(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo35297v(), sparseArray);
        }
    }

    /* renamed from: U */
    public void m35399U(Bundle bundle) {
        m35379k(bundle);
    }

    /* renamed from: V */
    public void mo35302V(AbstractC0179a abstractC0179a) {
        this.f635f = abstractC0179a;
    }

    /* renamed from: W */
    public C0178g m35398W(int i) {
        this.f642m = i;
        return this;
    }

    /* renamed from: X */
    public void m35397X(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f636g.size();
        m35382h0();
        for (int i = 0; i < size; i++) {
            C0182i c0182i = this.f636g.get(i);
            if (c0182i.getGroupId() == groupId && c0182i.m35351m() && c0182i.isCheckable()) {
                c0182i.m35345s(c0182i == menuItem);
            }
        }
        m35383g0();
    }

    /* renamed from: Y */
    public C0178g m35396Y(int i) {
        m35394a0(0, null, i, null, null);
        return this;
    }

    /* renamed from: Z */
    public C0178g m35395Z(Drawable drawable) {
        m35394a0(0, null, 0, drawable, null);
        return this;
    }

    /* renamed from: a */
    public MenuItem mo5463a(int i, int i2, int i3, CharSequence charSequence) {
        int m35411D = m35411D(i3);
        C0182i m35384g = m35384g(i, i2, i3, m35411D, charSequence, this.f642m);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f643n;
        if (contextMenuInfo != null) {
            m35384g.m35342v(contextMenuInfo);
        }
        ArrayList<C0182i> arrayList = this.f636g;
        arrayList.add(m35375p(arrayList, m35411D), m35384g);
        mo4492M(true);
        return m35384g;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return mo5463a(0, 0, 0, this.f632c.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return mo5463a(i, i2, i3, this.f632c.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return mo5463a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return mo5463a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f631b.getPackageManager();
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
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = intent3;
            }
            i6++;
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f632c.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f632c.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0182i c0182i = (C0182i) mo5463a(i, i2, i3, charSequence);
        SubMenuC0202r subMenuC0202r = new SubMenuC0202r(this.f631b, this, c0182i);
        c0182i.m35340x(subMenuC0202r);
        return subMenuC0202r;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public void m35393b(AbstractC0193m abstractC0193m) {
        m35391c(abstractC0193m, this.f631b);
    }

    /* renamed from: b0 */
    public C0178g m35392b0(int i) {
        m35394a0(i, null, 0, null, null);
        return this;
    }

    /* renamed from: c */
    public void m35391c(AbstractC0193m abstractC0193m, Context context) {
        this.f653x.add(new WeakReference<>(abstractC0193m));
        abstractC0193m.mo4531i(context, this);
        this.f641l = true;
    }

    /* renamed from: c0 */
    public C0178g m35390c0(CharSequence charSequence) {
        m35394a0(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.Menu
    public void clear() {
        C0182i c0182i = this.f654y;
        if (c0182i != null) {
            mo35301f(c0182i);
        }
        this.f636g.clear();
        mo4492M(true);
    }

    public void clearHeader() {
        this.f645p = null;
        this.f644o = null;
        this.f646q = null;
        mo4492M(false);
    }

    @Override // android.view.Menu
    public void close() {
        m35387e(true);
    }

    /* renamed from: d */
    public void m35389d() {
        AbstractC0179a abstractC0179a = this.f635f;
        if (abstractC0179a != null) {
            abstractC0179a.mo4425b(this);
        }
    }

    /* renamed from: d0 */
    public C0178g m35388d0(View view) {
        m35394a0(0, null, 0, null, view);
        return this;
    }

    /* renamed from: e */
    public final void m35387e(boolean z) {
        if (this.f651v) {
            return;
        }
        this.f651v = true;
        Iterator<WeakReference<AbstractC0193m>> it = this.f653x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0193m> next = it.next();
            AbstractC0193m abstractC0193m = next.get();
            if (abstractC0193m == null) {
                this.f653x.remove(next);
            } else {
                abstractC0193m.mo4537b(this, z);
            }
        }
        this.f651v = false;
    }

    /* renamed from: e0 */
    public void m35386e0(boolean z) {
        this.f630A = z;
    }

    /* renamed from: f */
    public boolean mo35301f(C0182i c0182i) {
        boolean z;
        boolean z2 = false;
        if (!this.f653x.isEmpty()) {
            if (this.f654y != c0182i) {
                z2 = false;
            } else {
                m35382h0();
                Iterator<WeakReference<AbstractC0193m>> it = this.f653x.iterator();
                boolean z3 = false;
                while (true) {
                    z = z3;
                    if (!it.hasNext()) {
                        break;
                    }
                    WeakReference<AbstractC0193m> next = it.next();
                    AbstractC0193m abstractC0193m = next.get();
                    if (abstractC0193m == null) {
                        this.f653x.remove(next);
                    } else {
                        z = abstractC0193m.mo4534e(this, c0182i);
                        z3 = z;
                        if (z) {
                            break;
                        }
                    }
                }
                m35383g0();
                z2 = z;
                if (z) {
                    this.f654y = null;
                    z2 = z;
                }
            }
        }
        return z2;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0182i c0182i = this.f636g.get(i2);
            if (c0182i.getItemId() == i) {
                return c0182i;
            }
            if (c0182i.hasSubMenu() && (findItem = c0182i.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: g0 */
    public void m35383g0() {
        this.f647r = false;
        if (this.f648s) {
            this.f648s = false;
            mo4492M(this.f649t);
        }
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f636g.get(i);
    }

    /* renamed from: h */
    public boolean mo35300h(C0178g c0178g, MenuItem menuItem) {
        AbstractC0179a abstractC0179a = this.f635f;
        return abstractC0179a != null && abstractC0179a.mo4426a(c0178g, menuItem);
    }

    /* renamed from: h0 */
    public void m35382h0() {
        if (!this.f647r) {
            this.f647r = true;
            this.f648s = false;
            this.f649t = false;
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f630A) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f636g.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m35373r(i, keyEvent) != null;
    }

    /* renamed from: m */
    public boolean mo35298m(C0182i c0182i) {
        boolean z;
        boolean z2 = false;
        if (this.f653x.isEmpty()) {
            return false;
        }
        m35382h0();
        Iterator<WeakReference<AbstractC0193m>> it = this.f653x.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            WeakReference<AbstractC0193m> next = it.next();
            AbstractC0193m abstractC0193m = next.get();
            if (abstractC0193m == null) {
                this.f653x.remove(next);
            } else {
                z = abstractC0193m.mo4533f(this, c0182i);
                z2 = z;
                if (z) {
                    break;
                }
            }
        }
        m35383g0();
        if (z) {
            this.f654y = c0182i;
        }
        return z;
    }

    /* renamed from: n */
    public int m35377n(int i) {
        return m35376o(i, 0);
    }

    /* renamed from: o */
    public int m35376o(int i, int i2) {
        int size = size();
        int i3 = i2;
        if (i2 < 0) {
            i3 = 0;
        }
        while (i3 < size) {
            if (this.f636g.get(i3).getGroupId() == i) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m35406N(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C0182i m35373r = m35373r(i, keyEvent);
        boolean m35406N = m35373r != null ? m35406N(m35373r, i2) : false;
        if ((i2 & 2) != 0) {
            m35387e(true);
        }
        return m35406N;
    }

    /* renamed from: q */
    public int m35374q(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f636g.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: r */
    C0182i m35373r(int i, KeyEvent keyEvent) {
        ArrayList<C0182i> arrayList = this.f652w;
        arrayList.clear();
        m35372s(arrayList, i, keyEvent);
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
        boolean mo35304I = mo35304I();
        for (int i2 = 0; i2 < size; i2++) {
            C0182i c0182i = arrayList.get(i2);
            char alphabeticShortcut = mo35304I ? c0182i.getAlphabeticShortcut() : c0182i.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (mo35304I && alphabeticShortcut == '\b' && i == 67))) {
                return c0182i;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int m35377n = m35377n(i);
        if (m35377n >= 0) {
            int size = this.f636g.size();
            for (int i2 = 0; i2 < size - m35377n && this.f636g.get(m35377n).getGroupId() == i; i2++) {
                m35404P(m35377n, false);
            }
            mo4492M(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m35404P(m35374q(i), true);
    }

    /* renamed from: s */
    void m35372s(List<C0182i> list, int i, KeyEvent keyEvent) {
        boolean mo35304I = mo35304I();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f636g.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0182i c0182i = this.f636g.get(i2);
                if (c0182i.hasSubMenu()) {
                    ((C0178g) c0182i.getSubMenu()).m35372s(list, i, keyEvent);
                }
                char alphabeticShortcut = mo35304I ? c0182i.getAlphabeticShortcut() : c0182i.getNumericShortcut();
                if (((modifiers & 69647) == ((mo35304I ? c0182i.getAlphabeticModifiers() : c0182i.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (mo35304I && alphabeticShortcut == '\b' && i == 67)) && c0182i.isEnabled()) {
                        list.add(c0182i);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f636g.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0182i c0182i = this.f636g.get(i2);
            if (c0182i.getGroupId() == i) {
                c0182i.m35344t(z2);
                c0182i.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f655z = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f636g.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0182i c0182i = this.f636g.get(i2);
            if (c0182i.getGroupId() == i) {
                c0182i.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        boolean z2;
        int size = this.f636g.size();
        int i2 = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            if (i2 >= size) {
                break;
            }
            C0182i c0182i = this.f636g.get(i2);
            boolean z4 = z2;
            if (c0182i.getGroupId() == i) {
                z4 = z2;
                if (c0182i.m35339y(z)) {
                    z4 = true;
                }
            }
            i2++;
            z3 = z4;
        }
        if (z2) {
            mo4492M(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f633d = z;
        mo4492M(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f636g.size();
    }

    /* renamed from: t */
    public void m35371t() {
        ArrayList<C0182i> m35409G = m35409G();
        if (!this.f641l) {
            return;
        }
        Iterator<WeakReference<AbstractC0193m>> it = this.f653x.iterator();
        boolean z = false;
        while (it.hasNext()) {
            WeakReference<AbstractC0193m> next = it.next();
            AbstractC0193m abstractC0193m = next.get();
            if (abstractC0193m == null) {
                this.f653x.remove(next);
            } else {
                z |= abstractC0193m.mo4535d();
            }
        }
        if (z) {
            this.f639j.clear();
            this.f640k.clear();
            int size = m35409G.size();
            for (int i = 0; i < size; i++) {
                C0182i c0182i = m35409G.get(i);
                if (c0182i.m35352l()) {
                    this.f639j.add(c0182i);
                } else {
                    this.f640k.add(c0182i);
                }
            }
        } else {
            this.f639j.clear();
            this.f640k.clear();
            this.f640k.addAll(m35409G());
        }
        this.f641l = false;
    }

    /* renamed from: u */
    public ArrayList<C0182i> m35370u() {
        m35371t();
        return this.f639j;
    }

    /* renamed from: v */
    public String mo35297v() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: w */
    public Context m35369w() {
        return this.f631b;
    }

    /* renamed from: x */
    public C0182i m35368x() {
        return this.f654y;
    }

    /* renamed from: y */
    public Drawable m35367y() {
        return this.f645p;
    }

    /* renamed from: z */
    public CharSequence m35366z() {
        return this.f644o;
    }
}
