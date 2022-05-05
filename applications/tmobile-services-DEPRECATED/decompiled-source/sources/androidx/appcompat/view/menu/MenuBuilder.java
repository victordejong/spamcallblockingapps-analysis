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
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewConfigurationCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.internal.http2.C2445Settings;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuBuilder.class */
public class MenuBuilder implements SupportMenu {

    /* renamed from: A */
    private static final int[] f630A = {1, 4, 5, 3, 2, 0};

    /* renamed from: a */
    private final Context f631a;

    /* renamed from: b */
    private final Resources f632b;

    /* renamed from: c */
    private boolean f633c;

    /* renamed from: d */
    private boolean f634d;

    /* renamed from: e */
    private Callback f635e;

    /* renamed from: m */
    private ContextMenu.ContextMenuInfo f643m;

    /* renamed from: n */
    CharSequence f644n;

    /* renamed from: o */
    Drawable f645o;

    /* renamed from: p */
    View f646p;

    /* renamed from: x */
    private MenuItemImpl f654x;

    /* renamed from: z */
    private boolean f656z;

    /* renamed from: l */
    private int f642l = 0;

    /* renamed from: q */
    private boolean f647q = false;

    /* renamed from: r */
    private boolean f648r = false;

    /* renamed from: s */
    private boolean f649s = false;

    /* renamed from: t */
    private boolean f650t = false;

    /* renamed from: u */
    private boolean f651u = false;

    /* renamed from: v */
    private ArrayList<MenuItemImpl> f652v = new ArrayList<>();

    /* renamed from: w */
    private CopyOnWriteArrayList<WeakReference<MenuPresenter>> f653w = new CopyOnWriteArrayList<>();

    /* renamed from: y */
    private boolean f655y = false;

    /* renamed from: f */
    private ArrayList<MenuItemImpl> f636f = new ArrayList<>();

    /* renamed from: g */
    private ArrayList<MenuItemImpl> f637g = new ArrayList<>();

    /* renamed from: h */
    private boolean f638h = true;

    /* renamed from: i */
    private ArrayList<MenuItemImpl> f639i = new ArrayList<>();

    /* renamed from: j */
    private ArrayList<MenuItemImpl> f640j = new ArrayList<>();

    /* renamed from: k */
    private boolean f641k = true;

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuBuilder$Callback.class */
    public interface Callback {
        /* renamed from: a */
        boolean mo9407a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem);

        /* renamed from: b */
        void mo9406b(@NonNull MenuBuilder menuBuilder);
    }

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuBuilder$ItemInvoker.class */
    public interface ItemInvoker {
        /* renamed from: a */
        boolean mo21701a(MenuItemImpl menuItemImpl);
    }

    public MenuBuilder(Context context) {
        this.f631a = context;
        this.f632b = context.getResources();
        m21866f0(true);
    }

    /* renamed from: D */
    private static int m21892D(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = f630A;
            if (i2 < iArr.length) {
                return (i & C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    /* renamed from: P */
    private void m21885P(int i, boolean z) {
        if (i >= 0 && i < this.f636f.size()) {
            this.f636f.remove(i);
            if (z) {
                mo9484M(true);
            }
        }
    }

    /* renamed from: a0 */
    private void m21875a0(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources E = m21891E();
        if (view != null) {
            this.f646p = view;
            this.f644n = null;
            this.f645o = null;
        } else {
            if (i > 0) {
                this.f644n = E.getText(i);
            } else if (charSequence != null) {
                this.f644n = charSequence;
            }
            if (i2 > 0) {
                this.f645o = ContextCompat.m19673f(m21850w(), i2);
            } else if (drawable != null) {
                this.f645o = drawable;
            }
            this.f646p = null;
        }
        mo9484M(false);
    }

    /* renamed from: f0 */
    private void m21866f0(boolean z) {
        boolean z2 = true;
        if (!z || this.f632b.getConfiguration().keyboard == 1 || !ViewConfigurationCompat.m19125e(ViewConfiguration.get(this.f631a), this.f631a)) {
            z2 = false;
        }
        this.f634d = z2;
    }

    /* renamed from: g */
    private MenuItemImpl m21865g(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new MenuItemImpl(this, i, i2, i3, i4, charSequence, i5);
    }

    /* renamed from: i */
    private void m21862i(boolean z) {
        if (!this.f653w.isEmpty()) {
            m21863h0();
            Iterator<WeakReference<MenuPresenter>> it = this.f653w.iterator();
            while (it.hasNext()) {
                WeakReference<MenuPresenter> next = it.next();
                MenuPresenter menuPresenter = next.get();
                if (menuPresenter == null) {
                    this.f653w.remove(next);
                } else {
                    menuPresenter.mo9523d(z);
                }
            }
            m21864g0();
        }
    }

    /* renamed from: j */
    private void m21861j(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null && !this.f653w.isEmpty()) {
            Iterator<WeakReference<MenuPresenter>> it = this.f653w.iterator();
            while (it.hasNext()) {
                WeakReference<MenuPresenter> next = it.next();
                MenuPresenter menuPresenter = next.get();
                if (menuPresenter == null) {
                    this.f653w.remove(next);
                } else {
                    int id = menuPresenter.getId();
                    if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                        menuPresenter.mo9517j(parcelable);
                    }
                }
            }
        }
    }

    /* renamed from: k */
    private void m21860k(Bundle bundle) {
        Parcelable m;
        if (!this.f653w.isEmpty()) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            Iterator<WeakReference<MenuPresenter>> it = this.f653w.iterator();
            while (it.hasNext()) {
                WeakReference<MenuPresenter> next = it.next();
                MenuPresenter menuPresenter = next.get();
                if (menuPresenter == null) {
                    this.f653w.remove(next);
                } else {
                    int id = menuPresenter.getId();
                    if (id > 0 && (m = menuPresenter.mo9514m()) != null) {
                        sparseArray.put(id, m);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
    }

    /* renamed from: l */
    private boolean m21859l(SubMenuBuilder subMenuBuilder, MenuPresenter menuPresenter) {
        boolean z = false;
        if (this.f653w.isEmpty()) {
            return false;
        }
        if (menuPresenter != null) {
            z = menuPresenter.mo9515l(subMenuBuilder);
        }
        Iterator<WeakReference<MenuPresenter>> it = this.f653w.iterator();
        while (it.hasNext()) {
            WeakReference<MenuPresenter> next = it.next();
            MenuPresenter menuPresenter2 = next.get();
            if (menuPresenter2 == null) {
                this.f653w.remove(next);
            } else if (!z) {
                z = menuPresenter2.mo9515l(subMenuBuilder);
            }
        }
        return z;
    }

    /* renamed from: p */
    private static int m21856p(ArrayList<MenuItemImpl> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).m21839f() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    /* renamed from: A */
    public View m21895A() {
        return this.f646p;
    }

    /* renamed from: B */
    public ArrayList<MenuItemImpl> m21894B() {
        m21852t();
        return this.f640j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public boolean m21893C() {
        return this.f650t;
    }

    /* renamed from: E */
    Resources m21891E() {
        return this.f632b;
    }

    /* renamed from: F */
    public MenuBuilder mo21788F() {
        return this;
    }

    @NonNull
    /* renamed from: G */
    public ArrayList<MenuItemImpl> m21890G() {
        if (!this.f638h) {
            return this.f637g;
        }
        this.f637g.clear();
        int size = this.f636f.size();
        for (int i = 0; i < size; i++) {
            MenuItemImpl menuItemImpl = this.f636f.get(i);
            if (menuItemImpl.isVisible()) {
                this.f637g.add(menuItemImpl);
            }
        }
        this.f638h = false;
        this.f641k = true;
        return this.f637g;
    }

    /* renamed from: H */
    public boolean mo21787H() {
        return this.f655y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public boolean mo21786I() {
        return this.f633c;
    }

    /* renamed from: J */
    public boolean mo21785J() {
        return this.f634d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public void m21889K(MenuItemImpl menuItemImpl) {
        this.f641k = true;
        mo9484M(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public void m21888L(MenuItemImpl menuItemImpl) {
        this.f638h = true;
        mo9484M(true);
    }

    /* renamed from: M */
    public void mo9484M(boolean z) {
        if (!this.f647q) {
            if (z) {
                this.f638h = true;
                this.f641k = true;
            }
            m21862i(z);
            return;
        }
        this.f648r = true;
        if (z) {
            this.f649s = true;
        }
    }

    /* renamed from: N */
    public boolean m21887N(MenuItem menuItem, int i) {
        return m21886O(menuItem, null, i);
    }

    /* renamed from: O */
    public boolean m21886O(MenuItem menuItem, MenuPresenter menuPresenter, int i) {
        boolean z;
        MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
        if (menuItemImpl == null || !menuItemImpl.isEnabled()) {
            return false;
        }
        boolean k = menuItemImpl.m21834k();
        ActionProvider b = menuItemImpl.mo19453b();
        boolean z2 = b != null && b.mo19329a();
        if (menuItemImpl.m21835j()) {
            boolean expandActionView = k | menuItemImpl.expandActionView();
            z = expandActionView;
            if (expandActionView) {
                m21868e(true);
                z = expandActionView;
            }
        } else if (menuItemImpl.hasSubMenu() || z2) {
            if ((i & 4) == 0) {
                m21868e(false);
            }
            if (!menuItemImpl.hasSubMenu()) {
                menuItemImpl.m21821x(new SubMenuBuilder(m21850w(), this, menuItemImpl));
            }
            SubMenuBuilder subMenuBuilder = (SubMenuBuilder) menuItemImpl.getSubMenu();
            if (z2) {
                b.mo19324f(subMenuBuilder);
            }
            boolean l = k | m21859l(subMenuBuilder, menuPresenter);
            z = l;
            if (!l) {
                m21868e(true);
                z = l;
            }
        } else {
            z = k;
            if ((i & 1) == 0) {
                m21868e(true);
                z = k;
            }
        }
        return z;
    }

    /* renamed from: Q */
    public void m21884Q(MenuPresenter menuPresenter) {
        Iterator<WeakReference<MenuPresenter>> it = this.f653w.iterator();
        while (it.hasNext()) {
            WeakReference<MenuPresenter> next = it.next();
            MenuPresenter menuPresenter2 = next.get();
            if (menuPresenter2 == null || menuPresenter2 == menuPresenter) {
                this.f653w.remove(next);
            }
        }
    }

    /* renamed from: R */
    public void m21883R(Bundle bundle) {
        MenuItem findItem;
        if (bundle != null) {
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo21779v());
            int size = size();
            for (int i = 0; i < size; i++) {
                MenuItem item = getItem(i);
                View actionView = item.getActionView();
                if (!(actionView == null || actionView.getId() == -1)) {
                    actionView.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((SubMenuBuilder) item.getSubMenu()).m21883R(bundle);
                }
            }
            int i2 = bundle.getInt("android:menu:expandedactionview");
            if (i2 > 0 && (findItem = findItem(i2)) != null) {
                findItem.expandActionView();
            }
        }
    }

    /* renamed from: S */
    public void m21882S(Bundle bundle) {
        m21861j(bundle);
    }

    /* renamed from: T */
    public void m21881T(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            sparseArray = sparseArray;
            if (actionView != null) {
                sparseArray = sparseArray;
                if (actionView.getId() != -1) {
                    SparseArray<? extends Parcelable> sparseArray2 = sparseArray;
                    if (sparseArray == null) {
                        sparseArray2 = new SparseArray<>();
                    }
                    actionView.saveHierarchyState(sparseArray2);
                    sparseArray = sparseArray2;
                    if (item.isActionViewExpanded()) {
                        bundle.putInt("android:menu:expandedactionview", item.getItemId());
                        sparseArray = sparseArray2;
                    }
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).m21881T(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo21779v(), sparseArray);
        }
    }

    /* renamed from: U */
    public void m21880U(Bundle bundle) {
        m21860k(bundle);
    }

    /* renamed from: V */
    public void mo21784V(Callback callback) {
        this.f635e = callback;
    }

    /* renamed from: W */
    public MenuBuilder m21879W(int i) {
        this.f642l = i;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public void m21878X(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f636f.size();
        m21863h0();
        for (int i = 0; i < size; i++) {
            MenuItemImpl menuItemImpl = this.f636f.get(i);
            if (menuItemImpl.getGroupId() == groupId && menuItemImpl.m21832m() && menuItemImpl.isCheckable()) {
                menuItemImpl.m21826s(menuItemImpl == menuItem);
            }
        }
        m21864g0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: Y */
    public MenuBuilder m21877Y(int i) {
        m21875a0(0, null, i, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: Z */
    public MenuBuilder m21876Z(Drawable drawable) {
        m21875a0(0, null, 0, drawable, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public MenuItem mo10471a(int i, int i2, int i3, CharSequence charSequence) {
        int D = m21892D(i3);
        MenuItemImpl g = m21865g(i, i2, i3, D, charSequence, this.f642l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f643m;
        if (contextMenuInfo != null) {
            g.m21823v(contextMenuInfo);
        }
        ArrayList<MenuItemImpl> arrayList = this.f636f;
        arrayList.add(m21856p(arrayList, D), g);
        mo9484M(true);
        return g;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return mo10471a(0, 0, 0, this.f632b.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return mo10471a(i, i2, i3, this.f632b.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return mo10471a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return mo10471a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f631a.getPackageManager();
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
        return addSubMenu(0, 0, 0, this.f632b.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f632b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) mo10471a(i, i2, i3, charSequence);
        SubMenuBuilder subMenuBuilder = new SubMenuBuilder(this.f631a, this, menuItemImpl);
        menuItemImpl.m21821x(subMenuBuilder);
        return subMenuBuilder;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public void m21874b(MenuPresenter menuPresenter) {
        m21872c(menuPresenter, this.f631a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b0 */
    public MenuBuilder m21873b0(int i) {
        m21875a0(i, null, 0, null, null);
        return this;
    }

    /* renamed from: c */
    public void m21872c(MenuPresenter menuPresenter, Context context) {
        this.f653w.add(new WeakReference<>(menuPresenter));
        menuPresenter.mo9518i(context, this);
        this.f641k = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c0 */
    public MenuBuilder m21871c0(CharSequence charSequence) {
        m21875a0(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.Menu
    public void clear() {
        MenuItemImpl menuItemImpl = this.f654x;
        if (menuItemImpl != null) {
            mo21783f(menuItemImpl);
        }
        this.f636f.clear();
        mo9484M(true);
    }

    public void clearHeader() {
        this.f645o = null;
        this.f644n = null;
        this.f646p = null;
        mo9484M(false);
    }

    @Override // android.view.Menu
    public void close() {
        m21868e(true);
    }

    /* renamed from: d */
    public void m21870d() {
        Callback callback = this.f635e;
        if (callback != null) {
            callback.mo9406b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d0 */
    public MenuBuilder m21869d0(View view) {
        m21875a0(0, null, 0, null, view);
        return this;
    }

    /* renamed from: e */
    public final void m21868e(boolean z) {
        if (!this.f651u) {
            this.f651u = true;
            Iterator<WeakReference<MenuPresenter>> it = this.f653w.iterator();
            while (it.hasNext()) {
                WeakReference<MenuPresenter> next = it.next();
                MenuPresenter menuPresenter = next.get();
                if (menuPresenter == null) {
                    this.f653w.remove(next);
                } else {
                    menuPresenter.mo9524c(this, z);
                }
            }
            this.f651u = false;
        }
    }

    /* renamed from: e0 */
    public void m21867e0(boolean z) {
        this.f656z = z;
    }

    /* renamed from: f */
    public boolean mo21783f(MenuItemImpl menuItemImpl) {
        boolean z;
        boolean z2 = false;
        boolean z3 = false;
        if (!this.f653w.isEmpty()) {
            if (this.f654x != menuItemImpl) {
                z3 = false;
            } else {
                m21863h0();
                Iterator<WeakReference<MenuPresenter>> it = this.f653w.iterator();
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    WeakReference<MenuPresenter> next = it.next();
                    MenuPresenter menuPresenter = next.get();
                    if (menuPresenter == null) {
                        this.f653w.remove(next);
                    } else {
                        z = menuPresenter.mo9521f(this, menuItemImpl);
                        z2 = z;
                        if (z) {
                            break;
                        }
                    }
                }
                m21864g0();
                z3 = z;
                if (z) {
                    this.f654x = null;
                    z3 = z;
                }
            }
        }
        return z3;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = this.f636f.get(i2);
            if (menuItemImpl.getItemId() == i) {
                return menuItemImpl;
            }
            if (menuItemImpl.hasSubMenu() && (findItem = menuItemImpl.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: g0 */
    public void m21864g0() {
        this.f647q = false;
        if (this.f648r) {
            this.f648r = false;
            mo9484M(this.f649s);
        }
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f636f.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public boolean mo21782h(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        Callback callback = this.f635e;
        return callback != null && callback.mo9407a(menuBuilder, menuItem);
    }

    /* renamed from: h0 */
    public void m21863h0() {
        if (!this.f647q) {
            this.f647q = true;
            this.f648r = false;
            this.f649s = false;
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f656z) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f636f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m21854r(i, keyEvent) != null;
    }

    /* renamed from: m */
    public boolean mo21780m(MenuItemImpl menuItemImpl) {
        boolean z;
        boolean z2 = false;
        if (this.f653w.isEmpty()) {
            return false;
        }
        m21863h0();
        Iterator<WeakReference<MenuPresenter>> it = this.f653w.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            WeakReference<MenuPresenter> next = it.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f653w.remove(next);
            } else {
                z = menuPresenter.mo9520g(this, menuItemImpl);
                z2 = z;
                if (z) {
                    break;
                }
            }
        }
        m21864g0();
        if (z) {
            this.f654x = menuItemImpl;
        }
        return z;
    }

    /* renamed from: n */
    public int m21858n(int i) {
        return m21857o(i, 0);
    }

    /* renamed from: o */
    public int m21857o(int i, int i2) {
        int size = size();
        int i3 = i2;
        if (i2 < 0) {
            i3 = 0;
        }
        while (i3 < size) {
            if (this.f636f.get(i3).getGroupId() == i) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m21887N(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        MenuItemImpl r = m21854r(i, keyEvent);
        boolean N = r != null ? m21887N(r, i2) : false;
        if ((i2 & 2) != 0) {
            m21868e(true);
        }
        return N;
    }

    /* renamed from: q */
    public int m21855q(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f636f.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: r */
    MenuItemImpl m21854r(int i, KeyEvent keyEvent) {
        ArrayList<MenuItemImpl> arrayList = this.f652v;
        arrayList.clear();
        m21853s(arrayList, i, keyEvent);
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
        boolean I = mo21786I();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = arrayList.get(i2);
            char alphabeticShortcut = I ? menuItemImpl.getAlphabeticShortcut() : menuItemImpl.getNumericShortcut();
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (I && alphabeticShortcut == '\b' && i == 67))) {
                return menuItemImpl;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int n = m21858n(i);
        if (n >= 0) {
            int size = this.f636f.size();
            for (int i2 = 0; i2 < size - n && this.f636f.get(n).getGroupId() == i; i2++) {
                m21885P(n, false);
            }
            mo9484M(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m21885P(m21855q(i), true);
    }

    /* renamed from: s */
    void m21853s(List<MenuItemImpl> list, int i, KeyEvent keyEvent) {
        boolean I = mo21786I();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f636f.size();
            for (int i2 = 0; i2 < size; i2++) {
                MenuItemImpl menuItemImpl = this.f636f.get(i2);
                if (menuItemImpl.hasSubMenu()) {
                    ((MenuBuilder) menuItemImpl.getSubMenu()).m21853s(list, i, keyEvent);
                }
                char alphabeticShortcut = I ? menuItemImpl.getAlphabeticShortcut() : menuItemImpl.getNumericShortcut();
                if (((modifiers & 69647) == ((I ? menuItemImpl.getAlphabeticModifiers() : menuItemImpl.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (I && alphabeticShortcut == '\b' && i == 67)) && menuItemImpl.isEnabled()) {
                        list.add(menuItemImpl);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f636f.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = this.f636f.get(i2);
            if (menuItemImpl.getGroupId() == i) {
                menuItemImpl.m21825t(z2);
                menuItemImpl.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f655y = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f636f.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = this.f636f.get(i2);
            if (menuItemImpl.getGroupId() == i) {
                menuItemImpl.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f636f.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = this.f636f.get(i2);
            z2 = z2;
            if (menuItemImpl.getGroupId() == i) {
                z2 = z2;
                if (menuItemImpl.m21820y(z)) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            mo9484M(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f633c = z;
        mo9484M(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f636f.size();
    }

    /* renamed from: t */
    public void m21852t() {
        ArrayList<MenuItemImpl> G = m21890G();
        if (this.f641k) {
            Iterator<WeakReference<MenuPresenter>> it = this.f653w.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference<MenuPresenter> next = it.next();
                MenuPresenter menuPresenter = next.get();
                if (menuPresenter == null) {
                    this.f653w.remove(next);
                } else {
                    z |= menuPresenter.mo9522e();
                }
            }
            if (z) {
                this.f639i.clear();
                this.f640j.clear();
                int size = G.size();
                for (int i = 0; i < size; i++) {
                    MenuItemImpl menuItemImpl = G.get(i);
                    if (menuItemImpl.m21833l()) {
                        this.f639i.add(menuItemImpl);
                    } else {
                        this.f640j.add(menuItemImpl);
                    }
                }
            } else {
                this.f639i.clear();
                this.f640j.clear();
                this.f640j.addAll(m21890G());
            }
            this.f641k = false;
        }
    }

    /* renamed from: u */
    public ArrayList<MenuItemImpl> m21851u() {
        m21852t();
        return this.f639i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: v */
    public String mo21779v() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: w */
    public Context m21850w() {
        return this.f631a;
    }

    /* renamed from: x */
    public MenuItemImpl m21849x() {
        return this.f654x;
    }

    /* renamed from: y */
    public Drawable m21848y() {
        return this.f645o;
    }

    /* renamed from: z */
    public CharSequence m21847z() {
        return this.f644n;
    }
}
