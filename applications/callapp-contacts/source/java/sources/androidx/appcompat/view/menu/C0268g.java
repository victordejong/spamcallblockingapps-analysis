package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
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
import androidx.core.content.C0790b;
import androidx.core.p030a.p031a.AbstractMenuC0712a;
import androidx.core.view.AbstractC0899b;
import androidx.core.view.ViewConfigurationCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.appcompat.view.menu.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g.class */
public class C0268g implements AbstractMenuC0712a {

    /* renamed from: l */
    private static final int[] f881l = {1, 4, 5, 3, 2, 0};

    /* renamed from: a */
    public final Context f883a;

    /* renamed from: b */
    public AbstractC0269a f884b;

    /* renamed from: f */
    CharSequence f888f;

    /* renamed from: g */
    Drawable f889g;

    /* renamed from: h */
    View f890h;

    /* renamed from: j */
    C0272i f892j;

    /* renamed from: k */
    public boolean f893k;

    /* renamed from: m */
    private final Resources f894m;

    /* renamed from: n */
    private boolean f895n;

    /* renamed from: o */
    private boolean f896o;

    /* renamed from: t */
    private ContextMenu.ContextMenuInfo f901t;

    /* renamed from: e */
    public int f887e = 0;

    /* renamed from: u */
    private boolean f902u = false;

    /* renamed from: v */
    private boolean f903v = false;

    /* renamed from: w */
    private boolean f904w = false;

    /* renamed from: i */
    boolean f891i = false;

    /* renamed from: x */
    private boolean f905x = false;

    /* renamed from: y */
    private ArrayList<C0272i> f906y = new ArrayList<>();

    /* renamed from: z */
    private CopyOnWriteArrayList<WeakReference<AbstractC0283m>> f907z = new CopyOnWriteArrayList<>();

    /* renamed from: A */
    private boolean f882A = false;

    /* renamed from: c */
    ArrayList<C0272i> f885c = new ArrayList<>();

    /* renamed from: p */
    private ArrayList<C0272i> f897p = new ArrayList<>();

    /* renamed from: q */
    private boolean f898q = true;

    /* renamed from: d */
    public ArrayList<C0272i> f886d = new ArrayList<>();

    /* renamed from: r */
    private ArrayList<C0272i> f899r = new ArrayList<>();

    /* renamed from: s */
    private boolean f900s = true;

    /* renamed from: androidx.appcompat.view.menu.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$a.class */
    public interface AbstractC0269a {
        /* renamed from: a */
        void mo10362a(C0268g c0268g);

        /* renamed from: a */
        boolean mo10361a(C0268g c0268g, MenuItem menuItem);
    }

    /* renamed from: androidx.appcompat.view.menu.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$b.class */
    public interface AbstractC0270b {
        /* renamed from: a */
        boolean mo45999a(C0272i c0272i);
    }

    public C0268g(Context context) {
        this.f883a = context;
        Resources resources = context.getResources();
        this.f894m = resources;
        boolean z = false;
        if (resources.getConfiguration().keyboard != 1) {
            z = false;
            if (ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration.get(context), context)) {
                z = true;
            }
        }
        this.f896o = z;
    }

    /* renamed from: a */
    private static int m46096a(ArrayList<C0272i> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).f917a <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    /* renamed from: a */
    private C0272i m46107a(int i, KeyEvent keyEvent) {
        ArrayList<C0272i> arrayList = this.f906y;
        arrayList.clear();
        m46095a(arrayList, i, keyEvent);
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
        boolean mo46036c = mo46036c();
        for (int i2 = 0; i2 < size; i2++) {
            C0272i c0272i = arrayList.get(i2);
            char alphabeticShortcut = mo46036c ? c0272i.getAlphabeticShortcut() : c0272i.getNumericShortcut();
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (mo46036c && alphabeticShortcut == '\b' && i == 67))) {
                return c0272i;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m46106a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = this.f894m;
        if (view != null) {
            this.f890h = view;
            this.f888f = null;
            this.f889g = null;
        } else {
            if (i > 0) {
                this.f888f = resources.getText(i);
            } else if (charSequence != null) {
                this.f888f = charSequence;
            }
            if (i2 > 0) {
                this.f889g = C0790b.m44502a(this.f883a, i2);
            } else if (drawable != null) {
                this.f889g = drawable;
            }
            this.f890h = null;
        }
        mo10524b(false);
    }

    /* renamed from: a */
    private void m46105a(int i, boolean z) {
        if (i < 0 || i >= this.f885c.size()) {
            return;
        }
        this.f885c.remove(i);
        if (!z) {
            return;
        }
        mo10524b(true);
    }

    /* renamed from: a */
    private void m46095a(List<C0272i> list, int i, KeyEvent keyEvent) {
        boolean mo46036c = mo46036c();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f885c.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0272i c0272i = this.f885c.get(i2);
                if (c0272i.hasSubMenu()) {
                    ((C0268g) c0272i.getSubMenu()).m46095a(list, i, keyEvent);
                }
                char alphabeticShortcut = mo46036c ? c0272i.getAlphabeticShortcut() : c0272i.getNumericShortcut();
                if (((modifiers & 69647) == ((mo46036c ? c0272i.getAlphabeticModifiers() : c0272i.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (mo46036c && alphabeticShortcut == '\b' && i == 67)) && c0272i.isEnabled())) {
                    list.add(c0272i);
                }
            }
        }
    }

    /* renamed from: a */
    private boolean m46098a(SubMenuC0292r subMenuC0292r, AbstractC0283m abstractC0283m) {
        boolean z = false;
        if (this.f907z.isEmpty()) {
            return false;
        }
        if (abstractC0283m != null) {
            z = abstractC0283m.mo10542a(subMenuC0292r);
        }
        Iterator<WeakReference<AbstractC0283m>> it2 = this.f907z.iterator();
        while (it2.hasNext()) {
            WeakReference<AbstractC0283m> next = it2.next();
            AbstractC0283m abstractC0283m2 = next.get();
            if (abstractC0283m2 == null) {
                this.f907z.remove(next);
            } else if (!z) {
                z = abstractC0283m2.mo10542a(subMenuC0292r);
            }
        }
        return z;
    }

    /* renamed from: a */
    public MenuItem mo11138a(int i, int i2, int i3, CharSequence charSequence) {
        int i4 = ((-65536) & i3) >> 16;
        if (i4 >= 0) {
            int[] iArr = f881l;
            if (i4 < iArr.length) {
                int i5 = (iArr[i4] << 16) | (65535 & i3);
                C0272i c0272i = new C0272i(this, i, i2, i3, i5, charSequence, this.f887e);
                ContextMenu.ContextMenuInfo contextMenuInfo = this.f901t;
                if (contextMenuInfo != null) {
                    c0272i.f922f = contextMenuInfo;
                }
                ArrayList<C0272i> arrayList = this.f885c;
                arrayList.add(m46096a(arrayList, i5), c0272i);
                mo10524b(true);
                return c0272i;
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    /* renamed from: a */
    public final C0268g m46108a(int i) {
        m46106a(i, null, 0, null, null);
        return this;
    }

    /* renamed from: a */
    public final C0268g m46104a(Drawable drawable) {
        m46106a(0, null, 0, drawable, null);
        return this;
    }

    /* renamed from: a */
    public final C0268g m46101a(View view) {
        m46106a(0, null, 0, null, view);
        return this;
    }

    /* renamed from: a */
    public final C0268g m46097a(CharSequence charSequence) {
        m46106a(0, charSequence, 0, null, null);
        return this;
    }

    /* renamed from: a */
    public String mo46042a() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: a */
    public final void m46103a(Bundle bundle) {
        Parcelable mo10530f;
        if (!this.f907z.isEmpty()) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            Iterator<WeakReference<AbstractC0283m>> it2 = this.f907z.iterator();
            while (it2.hasNext()) {
                WeakReference<AbstractC0283m> next = it2.next();
                AbstractC0283m abstractC0283m = next.get();
                if (abstractC0283m == null) {
                    this.f907z.remove(next);
                } else {
                    int mo10540b = abstractC0283m.mo10540b();
                    if (mo10540b > 0 && (mo10530f = abstractC0283m.mo10530f()) != null) {
                        sparseArray.put(mo10540b, mo10530f);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
    }

    /* renamed from: a */
    public void mo46041a(AbstractC0269a abstractC0269a) {
        this.f884b = abstractC0269a;
    }

    /* renamed from: a */
    public final void m46100a(AbstractC0283m abstractC0283m) {
        m46099a(abstractC0283m, this.f883a);
    }

    /* renamed from: a */
    public final void m46099a(AbstractC0283m abstractC0283m, Context context) {
        this.f907z.add(new WeakReference<>(abstractC0283m));
        abstractC0283m.mo10549a(context, this);
        this.f900s = true;
    }

    /* renamed from: a */
    public final void m46094a(boolean z) {
        if (this.f905x) {
            return;
        }
        this.f905x = true;
        Iterator<WeakReference<AbstractC0283m>> it2 = this.f907z.iterator();
        while (it2.hasNext()) {
            WeakReference<AbstractC0283m> next = it2.next();
            AbstractC0283m abstractC0283m = next.get();
            if (abstractC0283m == null) {
                this.f907z.remove(next);
            } else {
                abstractC0283m.mo10545a(this, z);
            }
        }
        this.f905x = false;
    }

    /* renamed from: a */
    public final boolean m46102a(MenuItem menuItem, AbstractC0283m abstractC0283m, int i) {
        boolean z;
        C0272i c0272i = (C0272i) menuItem;
        if (c0272i == null || !c0272i.isEnabled()) {
            return false;
        }
        boolean m46075b = c0272i.m46075b();
        AbstractC0899b abstractC0899b = c0272i.f921e;
        boolean z2 = abstractC0899b != null && abstractC0899b.mo44201c();
        if (c0272i.m46063j()) {
            boolean expandActionView = m46075b | c0272i.expandActionView();
            z = expandActionView;
            if (expandActionView) {
                m46094a(true);
                z = expandActionView;
            }
        } else if (c0272i.hasSubMenu() || z2) {
            if ((i & 4) == 0) {
                m46094a(false);
            }
            if (!c0272i.hasSubMenu()) {
                c0272i.m46078a(new SubMenuC0292r(this.f883a, this, c0272i));
            }
            SubMenuC0292r subMenuC0292r = (SubMenuC0292r) c0272i.getSubMenu();
            if (z2) {
                abstractC0899b.mo44205a(subMenuC0292r);
            }
            boolean m46098a = m46075b | m46098a(subMenuC0292r, abstractC0283m);
            z = m46098a;
            if (!m46098a) {
                m46094a(true);
                z = m46098a;
            }
        } else {
            z = m46075b;
            if ((i & 1) == 0) {
                m46094a(true);
                z = m46075b;
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean mo46040a(C0268g c0268g, MenuItem menuItem) {
        AbstractC0269a abstractC0269a = this.f884b;
        return abstractC0269a != null && abstractC0269a.mo10361a(c0268g, menuItem);
    }

    /* renamed from: a */
    public boolean mo46039a(C0272i c0272i) {
        boolean z;
        boolean z2 = false;
        if (this.f907z.isEmpty()) {
            return false;
        }
        m46088e();
        Iterator<WeakReference<AbstractC0283m>> it2 = this.f907z.iterator();
        while (true) {
            z = z2;
            if (!it2.hasNext()) {
                break;
            }
            WeakReference<AbstractC0283m> next = it2.next();
            AbstractC0283m abstractC0283m = next.get();
            if (abstractC0283m == null) {
                this.f907z.remove(next);
            } else {
                z = abstractC0283m.mo10537b(c0272i);
                z2 = z;
                if (z) {
                    break;
                }
            }
        }
        m46087f();
        if (z) {
            this.f892j = c0272i;
        }
        return z;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return mo11138a(0, 0, 0, this.f894m.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return mo11138a(i, i2, i3, this.f894m.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return mo11138a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return mo11138a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.f883a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        int i5 = 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
            i5 = 0;
        }
        while (i5 < size) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
            i5++;
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f894m.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f894m.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0272i c0272i = (C0272i) mo11138a(i, i2, i3, charSequence);
        SubMenuC0292r subMenuC0292r = new SubMenuC0292r(this.f883a, this, c0272i);
        c0272i.m46078a(subMenuC0292r);
        return subMenuC0292r;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public final C0268g m46093b(int i) {
        m46106a(0, null, i, null, null);
        return this;
    }

    /* renamed from: b */
    public final void m46092b(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || this.f907z.isEmpty()) {
            return;
        }
        Iterator<WeakReference<AbstractC0283m>> it2 = this.f907z.iterator();
        while (it2.hasNext()) {
            WeakReference<AbstractC0283m> next = it2.next();
            AbstractC0283m abstractC0283m = next.get();
            if (abstractC0283m == null) {
                this.f907z.remove(next);
            } else {
                int mo10540b = abstractC0283m.mo10540b();
                if (mo10540b > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(mo10540b)) != null) {
                    abstractC0283m.mo10546a(parcelable);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m46091b(AbstractC0283m abstractC0283m) {
        Iterator<WeakReference<AbstractC0283m>> it2 = this.f907z.iterator();
        while (it2.hasNext()) {
            WeakReference<AbstractC0283m> next = it2.next();
            AbstractC0283m abstractC0283m2 = next.get();
            if (abstractC0283m2 == null || abstractC0283m2 == abstractC0283m) {
                this.f907z.remove(next);
            }
        }
    }

    /* renamed from: b */
    public void mo10524b(boolean z) {
        if (this.f902u) {
            this.f903v = true;
            if (!z) {
                return;
            }
            this.f904w = true;
            return;
        }
        if (z) {
            this.f898q = true;
            this.f900s = true;
        }
        if (this.f907z.isEmpty()) {
            return;
        }
        m46088e();
        Iterator<WeakReference<AbstractC0283m>> it2 = this.f907z.iterator();
        while (it2.hasNext()) {
            WeakReference<AbstractC0283m> next = it2.next();
            AbstractC0283m abstractC0283m = next.get();
            if (abstractC0283m == null) {
                this.f907z.remove(next);
            } else {
                abstractC0283m.mo10541a(z);
            }
        }
        m46087f();
    }

    /* renamed from: b */
    public boolean mo46038b() {
        return this.f882A;
    }

    /* renamed from: b */
    public boolean mo46037b(C0272i c0272i) {
        boolean z;
        boolean z2 = false;
        if (!this.f907z.isEmpty()) {
            if (this.f892j != c0272i) {
                z2 = false;
            } else {
                m46088e();
                Iterator<WeakReference<AbstractC0283m>> it2 = this.f907z.iterator();
                boolean z3 = false;
                while (true) {
                    z = z3;
                    if (!it2.hasNext()) {
                        break;
                    }
                    WeakReference<AbstractC0283m> next = it2.next();
                    AbstractC0283m abstractC0283m = next.get();
                    if (abstractC0283m == null) {
                        this.f907z.remove(next);
                    } else {
                        z = abstractC0283m.mo10533c(c0272i);
                        z3 = z;
                        if (z) {
                            break;
                        }
                    }
                }
                m46087f();
                z2 = z;
                if (z) {
                    this.f892j = null;
                    z2 = z;
                }
            }
        }
        return z2;
    }

    /* renamed from: c */
    public final void m46090c(Bundle bundle) {
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
                ((SubMenuC0292r) item.getSubMenu()).m46090c(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo46042a(), sparseArray);
        }
    }

    /* renamed from: c */
    public boolean mo46036c() {
        return this.f895n;
    }

    @Override // android.view.Menu
    public void clear() {
        C0272i c0272i = this.f892j;
        if (c0272i != null) {
            mo46037b(c0272i);
        }
        this.f885c.clear();
        mo10524b(true);
    }

    public void clearHeader() {
        this.f889g = null;
        this.f888f = null;
        this.f890h = null;
        mo10524b(false);
    }

    @Override // android.view.Menu
    public void close() {
        m46094a(true);
    }

    /* renamed from: d */
    public final void m46089d(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo46042a());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0292r) item.getSubMenu()).m46089d(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    /* renamed from: d */
    public boolean mo46035d() {
        return this.f896o;
    }

    /* renamed from: e */
    public final void m46088e() {
        if (!this.f902u) {
            this.f902u = true;
            this.f903v = false;
            this.f904w = false;
        }
    }

    /* renamed from: f */
    public final void m46087f() {
        this.f902u = false;
        if (this.f903v) {
            this.f903v = false;
            mo10524b(this.f904w);
        }
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0272i c0272i = this.f885c.get(i2);
            if (c0272i.getItemId() == i) {
                return c0272i;
            }
            if (c0272i.hasSubMenu() && (findItem = c0272i.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final void m46086g() {
        this.f898q = true;
        mo10524b(true);
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f885c.get(i);
    }

    /* renamed from: h */
    public final void m46085h() {
        this.f900s = true;
        mo10524b(true);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f893k) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f885c.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final ArrayList<C0272i> m46084i() {
        if (!this.f898q) {
            return this.f897p;
        }
        this.f897p.clear();
        int size = this.f885c.size();
        for (int i = 0; i < size; i++) {
            C0272i c0272i = this.f885c.get(i);
            if (c0272i.isVisible()) {
                this.f897p.add(c0272i);
            }
        }
        this.f898q = false;
        this.f900s = true;
        return this.f897p;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m46107a(i, keyEvent) != null;
    }

    /* renamed from: j */
    public final void m46083j() {
        ArrayList<C0272i> m46084i = m46084i();
        if (!this.f900s) {
            return;
        }
        Iterator<WeakReference<AbstractC0283m>> it2 = this.f907z.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            WeakReference<AbstractC0283m> next = it2.next();
            AbstractC0283m abstractC0283m = next.get();
            if (abstractC0283m == null) {
                this.f907z.remove(next);
            } else {
                z |= abstractC0283m.mo10551a();
            }
        }
        if (z) {
            this.f886d.clear();
            this.f899r.clear();
            int size = m46084i.size();
            for (int i = 0; i < size; i++) {
                C0272i c0272i = m46084i.get(i);
                if (c0272i.m46067f()) {
                    this.f886d.add(c0272i);
                } else {
                    this.f899r.add(c0272i);
                }
            }
        } else {
            this.f886d.clear();
            this.f899r.clear();
            this.f899r.addAll(m46084i());
        }
        this.f900s = false;
    }

    /* renamed from: k */
    public final ArrayList<C0272i> m46082k() {
        m46083j();
        return this.f899r;
    }

    /* renamed from: l */
    public C0268g mo46034l() {
        return this;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m46102a(findItem(i), (AbstractC0283m) null, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C0272i m46107a = m46107a(i, keyEvent);
        boolean m46102a = m46107a != null ? m46102a(m46107a, (AbstractC0283m) null, i2) : false;
        if ((i2 & 2) != 0) {
            m46094a(true);
        }
        return m46102a;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f885c.get(i2).getGroupId() == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int size2 = this.f885c.size();
            for (int i3 = 0; i3 < size2 - i2 && this.f885c.get(i2).getGroupId() == i; i3++) {
                m46105a(i2, false);
            }
            mo10524b(true);
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
            } else if (this.f885c.get(i2).getItemId() == i) {
                break;
            } else {
                i2++;
            }
        }
        m46105a(i2, true);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f885c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0272i c0272i = this.f885c.get(i2);
            if (c0272i.getGroupId() == i) {
                c0272i.m46076a(z2);
                c0272i.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f882A = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f885c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0272i c0272i = this.f885c.get(i2);
            if (c0272i.getGroupId() == i) {
                c0272i.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        boolean z2;
        int size = this.f885c.size();
        int i2 = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            if (i2 >= size) {
                break;
            }
            C0272i c0272i = this.f885c.get(i2);
            boolean z4 = z2;
            if (c0272i.getGroupId() == i) {
                z4 = z2;
                if (c0272i.m46074b(z)) {
                    z4 = true;
                }
            }
            i2++;
            z3 = z4;
        }
        if (z2) {
            mo10524b(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f895n = z;
        mo10524b(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f885c.size();
    }
}
