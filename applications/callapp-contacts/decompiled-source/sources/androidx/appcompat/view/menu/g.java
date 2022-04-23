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
import androidx.core.view.ViewConfigurationCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g.class */
public class g implements androidx.core.a.a.a {
    private static final int[] l = {1, 4, 5, 3, 2, 0};

    /* renamed from: a  reason: collision with root package name */
    public final Context f808a;

    /* renamed from: b  reason: collision with root package name */
    public a f809b;
    CharSequence f;
    Drawable g;
    View h;
    i j;
    public boolean k;
    private final Resources m;
    private boolean n;
    private boolean o;
    private ContextMenu.ContextMenuInfo t;
    public int e = 0;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;
    boolean i = false;
    private boolean x = false;
    private ArrayList<i> y = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<m>> z = new CopyOnWriteArrayList<>();
    private boolean A = false;

    /* renamed from: c  reason: collision with root package name */
    ArrayList<i> f810c = new ArrayList<>();
    private ArrayList<i> p = new ArrayList<>();
    private boolean q = true;

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<i> f811d = new ArrayList<>();
    private ArrayList<i> r = new ArrayList<>();
    private boolean s = true;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$a.class */
    public interface a {
        void a(g gVar);

        boolean a(g gVar, MenuItem menuItem);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$b.class */
    public interface b {
        boolean a(i iVar);
    }

    public g(Context context) {
        this.f808a = context;
        Resources resources = context.getResources();
        this.m = resources;
        boolean z = false;
        if (resources.getConfiguration().keyboard != 1) {
            z = false;
            if (ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration.get(context), context)) {
                z = true;
            }
        }
        this.o = z;
    }

    private static int a(ArrayList<i> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).f816a <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    private i a(int i, KeyEvent keyEvent) {
        ArrayList<i> arrayList = this.y;
        arrayList.clear();
        a(arrayList, i, keyEvent);
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
        boolean c2 = c();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = arrayList.get(i2);
            char alphabeticShortcut = c2 ? iVar.getAlphabeticShortcut() : iVar.getNumericShortcut();
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (c2 && alphabeticShortcut == '\b' && i == 67))) {
                return iVar;
            }
        }
        return null;
    }

    private void a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = this.m;
        if (view != null) {
            this.h = view;
            this.f = null;
            this.g = null;
        } else {
            if (i > 0) {
                this.f = resources.getText(i);
            } else if (charSequence != null) {
                this.f = charSequence;
            }
            if (i2 > 0) {
                this.g = androidx.core.content.b.a(this.f808a, i2);
            } else if (drawable != null) {
                this.g = drawable;
            }
            this.h = null;
        }
        b(false);
    }

    private void a(int i, boolean z) {
        if (i >= 0 && i < this.f810c.size()) {
            this.f810c.remove(i);
            if (z) {
                b(true);
            }
        }
    }

    private void a(List<i> list, int i, KeyEvent keyEvent) {
        boolean c2 = c();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f810c.size();
            for (int i2 = 0; i2 < size; i2++) {
                i iVar = this.f810c.get(i2);
                if (iVar.hasSubMenu()) {
                    ((g) iVar.getSubMenu()).a(list, i, keyEvent);
                }
                char alphabeticShortcut = c2 ? iVar.getAlphabeticShortcut() : iVar.getNumericShortcut();
                if (((modifiers & 69647) == ((c2 ? iVar.getAlphabeticModifiers() : iVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (c2 && alphabeticShortcut == '\b' && i == 67)) && iVar.isEnabled())) {
                    list.add(iVar);
                }
            }
        }
    }

    private boolean a(r rVar, m mVar) {
        boolean z = false;
        if (this.z.isEmpty()) {
            return false;
        }
        if (mVar != null) {
            z = mVar.a(rVar);
        }
        Iterator<WeakReference<m>> it2 = this.z.iterator();
        while (it2.hasNext()) {
            WeakReference<m> next = it2.next();
            m mVar2 = next.get();
            if (mVar2 == null) {
                this.z.remove(next);
            } else if (!z) {
                z = mVar2.a(rVar);
            }
        }
        return z;
    }

    public MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int i4 = ((-65536) & i3) >> 16;
        if (i4 >= 0) {
            int[] iArr = l;
            if (i4 < iArr.length) {
                int i5 = (iArr[i4] << 16) | (65535 & i3);
                i iVar = new i(this, i, i2, i3, i5, charSequence, this.e);
                ContextMenu.ContextMenuInfo contextMenuInfo = this.t;
                if (contextMenuInfo != null) {
                    iVar.f = contextMenuInfo;
                }
                ArrayList<i> arrayList = this.f810c;
                arrayList.add(a(arrayList, i5), iVar);
                b(true);
                return iVar;
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final g a(int i) {
        a(i, null, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final g a(Drawable drawable) {
        a(0, null, 0, drawable, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final g a(View view) {
        a(0, null, 0, null, view);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final g a(CharSequence charSequence) {
        a(0, charSequence, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        return "android:menu:actionviewstates";
    }

    public final void a(Bundle bundle) {
        Parcelable f;
        if (!this.z.isEmpty()) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            Iterator<WeakReference<m>> it2 = this.z.iterator();
            while (it2.hasNext()) {
                WeakReference<m> next = it2.next();
                m mVar = next.get();
                if (mVar == null) {
                    this.z.remove(next);
                } else {
                    int b2 = mVar.b();
                    if (b2 > 0 && (f = mVar.f()) != null) {
                        sparseArray.put(b2, f);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
    }

    public void a(a aVar) {
        this.f809b = aVar;
    }

    public final void a(m mVar) {
        a(mVar, this.f808a);
    }

    public final void a(m mVar, Context context) {
        this.z.add(new WeakReference<>(mVar));
        mVar.a(context, this);
        this.s = true;
    }

    public final void a(boolean z) {
        if (!this.x) {
            this.x = true;
            Iterator<WeakReference<m>> it2 = this.z.iterator();
            while (it2.hasNext()) {
                WeakReference<m> next = it2.next();
                m mVar = next.get();
                if (mVar == null) {
                    this.z.remove(next);
                } else {
                    mVar.a(this, z);
                }
            }
            this.x = false;
        }
    }

    public final boolean a(MenuItem menuItem, m mVar, int i) {
        boolean z;
        i iVar = (i) menuItem;
        if (iVar == null || !iVar.isEnabled()) {
            return false;
        }
        boolean b2 = iVar.b();
        androidx.core.view.b bVar = iVar.e;
        boolean z2 = bVar != null && bVar.c();
        if (iVar.j()) {
            boolean expandActionView = b2 | iVar.expandActionView();
            z = expandActionView;
            if (expandActionView) {
                a(true);
                z = expandActionView;
            }
        } else if (iVar.hasSubMenu() || z2) {
            if ((i & 4) == 0) {
                a(false);
            }
            if (!iVar.hasSubMenu()) {
                iVar.a(new r(this.f808a, this, iVar));
            }
            r rVar = (r) iVar.getSubMenu();
            if (z2) {
                bVar.a(rVar);
            }
            boolean a2 = b2 | a(rVar, mVar);
            z = a2;
            if (!a2) {
                a(true);
                z = a2;
            }
        } else {
            z = b2;
            if ((i & 1) == 0) {
                a(true);
                z = b2;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(g gVar, MenuItem menuItem) {
        a aVar = this.f809b;
        return aVar != null && aVar.a(gVar, menuItem);
    }

    public boolean a(i iVar) {
        boolean z;
        boolean z2 = false;
        if (this.z.isEmpty()) {
            return false;
        }
        e();
        Iterator<WeakReference<m>> it2 = this.z.iterator();
        while (true) {
            z = z2;
            if (!it2.hasNext()) {
                break;
            }
            WeakReference<m> next = it2.next();
            m mVar = next.get();
            if (mVar == null) {
                this.z.remove(next);
            } else {
                z = mVar.b(iVar);
                z2 = z;
                if (z) {
                    break;
                }
            }
        }
        f();
        if (z) {
            this.j = iVar;
        }
        return z;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(0, 0, 0, this.m.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.m.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.f808a.getPackageManager();
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
        return addSubMenu(0, 0, 0, this.m.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.m.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        i iVar = (i) a(i, i2, i3, charSequence);
        r rVar = new r(this.f808a, this, iVar);
        iVar.a(rVar);
        return rVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final g b(int i) {
        a(0, null, i, null, null);
        return this;
    }

    public final void b(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null && !this.z.isEmpty()) {
            Iterator<WeakReference<m>> it2 = this.z.iterator();
            while (it2.hasNext()) {
                WeakReference<m> next = it2.next();
                m mVar = next.get();
                if (mVar == null) {
                    this.z.remove(next);
                } else {
                    int b2 = mVar.b();
                    if (b2 > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(b2)) != null) {
                        mVar.a(parcelable);
                    }
                }
            }
        }
    }

    public final void b(m mVar) {
        Iterator<WeakReference<m>> it2 = this.z.iterator();
        while (it2.hasNext()) {
            WeakReference<m> next = it2.next();
            m mVar2 = next.get();
            if (mVar2 == null || mVar2 == mVar) {
                this.z.remove(next);
            }
        }
    }

    public void b(boolean z) {
        if (!this.u) {
            if (z) {
                this.q = true;
                this.s = true;
            }
            if (!this.z.isEmpty()) {
                e();
                Iterator<WeakReference<m>> it2 = this.z.iterator();
                while (it2.hasNext()) {
                    WeakReference<m> next = it2.next();
                    m mVar = next.get();
                    if (mVar == null) {
                        this.z.remove(next);
                    } else {
                        mVar.a(z);
                    }
                }
                f();
                return;
            }
            return;
        }
        this.v = true;
        if (z) {
            this.w = true;
        }
    }

    public boolean b() {
        return this.A;
    }

    public boolean b(i iVar) {
        boolean z;
        boolean z2 = false;
        boolean z3 = false;
        if (!this.z.isEmpty()) {
            if (this.j != iVar) {
                z3 = false;
            } else {
                e();
                Iterator<WeakReference<m>> it2 = this.z.iterator();
                while (true) {
                    z = z2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    WeakReference<m> next = it2.next();
                    m mVar = next.get();
                    if (mVar == null) {
                        this.z.remove(next);
                    } else {
                        z = mVar.c(iVar);
                        z2 = z;
                        if (z) {
                            break;
                        }
                    }
                }
                f();
                z3 = z;
                if (z) {
                    this.j = null;
                    z3 = z;
                }
            }
        }
        return z3;
    }

    public final void c(Bundle bundle) {
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
                ((r) item.getSubMenu()).c(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(a(), sparseArray);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.n;
    }

    @Override // android.view.Menu
    public void clear() {
        i iVar = this.j;
        if (iVar != null) {
            b(iVar);
        }
        this.f810c.clear();
        b(true);
    }

    public void clearHeader() {
        this.g = null;
        this.f = null;
        this.h = null;
        b(false);
    }

    @Override // android.view.Menu
    public void close() {
        a(true);
    }

    public final void d(Bundle bundle) {
        MenuItem findItem;
        if (bundle != null) {
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(a());
            int size = size();
            for (int i = 0; i < size; i++) {
                MenuItem item = getItem(i);
                View actionView = item.getActionView();
                if (!(actionView == null || actionView.getId() == -1)) {
                    actionView.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((r) item.getSubMenu()).d(bundle);
                }
            }
            int i2 = bundle.getInt("android:menu:expandedactionview");
            if (i2 > 0 && (findItem = findItem(i2)) != null) {
                findItem.expandActionView();
            }
        }
    }

    public boolean d() {
        return this.o;
    }

    public final void e() {
        if (!this.u) {
            this.u = true;
            this.v = false;
            this.w = false;
        }
    }

    public final void f() {
        this.u = false;
        if (this.v) {
            this.v = false;
            b(this.w);
        }
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.f810c.get(i2);
            if (iVar.getItemId() == i) {
                return iVar;
            }
            if (iVar.hasSubMenu() && (findItem = iVar.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        this.q = true;
        b(true);
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f810c.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        this.s = true;
        b(true);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.k) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f810c.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final ArrayList<i> i() {
        if (!this.q) {
            return this.p;
        }
        this.p.clear();
        int size = this.f810c.size();
        for (int i = 0; i < size; i++) {
            i iVar = this.f810c.get(i);
            if (iVar.isVisible()) {
                this.p.add(iVar);
            }
        }
        this.q = false;
        this.s = true;
        return this.p;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return a(i, keyEvent) != null;
    }

    public final void j() {
        ArrayList<i> i = i();
        if (this.s) {
            Iterator<WeakReference<m>> it2 = this.z.iterator();
            boolean z = false;
            while (it2.hasNext()) {
                WeakReference<m> next = it2.next();
                m mVar = next.get();
                if (mVar == null) {
                    this.z.remove(next);
                } else {
                    z |= mVar.a();
                }
            }
            if (z) {
                this.f811d.clear();
                this.r.clear();
                int size = i.size();
                for (int i2 = 0; i2 < size; i2++) {
                    i iVar = i.get(i2);
                    if (iVar.f()) {
                        this.f811d.add(iVar);
                    } else {
                        this.r.add(iVar);
                    }
                }
            } else {
                this.f811d.clear();
                this.r.clear();
                this.r.addAll(i());
            }
            this.s = false;
        }
    }

    public final ArrayList<i> k() {
        j();
        return this.r;
    }

    public g l() {
        return this;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return a(findItem(i), (m) null, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        i a2 = a(i, keyEvent);
        boolean a3 = a2 != null ? a(a2, (m) null, i2) : false;
        if ((i2 & 2) != 0) {
            a(true);
        }
        return a3;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f810c.get(i2).getGroupId() == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int size2 = this.f810c.size();
            for (int i3 = 0; i3 < size2 - i2 && this.f810c.get(i2).getGroupId() == i; i3++) {
                a(i2, false);
            }
            b(true);
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
            } else if (this.f810c.get(i2).getItemId() == i) {
                break;
            } else {
                i2++;
            }
        }
        a(i2, true);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f810c.size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.f810c.get(i2);
            if (iVar.getGroupId() == i) {
                iVar.a(z2);
                iVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.A = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f810c.size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.f810c.get(i2);
            if (iVar.getGroupId() == i) {
                iVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f810c.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.f810c.get(i2);
            z2 = z2;
            if (iVar.getGroupId() == i) {
                z2 = z2;
                if (iVar.b(z)) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            b(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.n = z;
        b(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f810c.size();
    }
}
