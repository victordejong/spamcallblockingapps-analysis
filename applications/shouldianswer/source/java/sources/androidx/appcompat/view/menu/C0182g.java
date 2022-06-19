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
import androidx.core.p015a.C0409a;
import androidx.core.p017b.p018a.AbstractMenuC0460a;
import androidx.core.p023g.AbstractC0530b;
import androidx.core.p023g.C0561v;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.appcompat.view.menu.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g.class */
public class C0182g implements AbstractMenuC0460a {
    private static final String ACTION_VIEW_STATES_KEY = "android:menu:actionviewstates";
    private static final String EXPANDED_ACTION_VIEW_ID = "android:menu:expandedactionview";
    private static final String PRESENTER_KEY = "android:menu:presenters";
    private static final String TAG = "MenuBuilder";
    private static final int[] sCategoryToOrder = {1, 4, 5, 3, 2, 0};
    private AbstractC0183a mCallback;
    private final Context mContext;
    private ContextMenu.ContextMenuInfo mCurrentMenuInfo;
    private C0186i mExpandedItem;
    private SparseArray<Parcelable> mFrozenViewStates;
    Drawable mHeaderIcon;
    CharSequence mHeaderTitle;
    View mHeaderView;
    private boolean mOverrideVisibleItems;
    private boolean mQwertyMode;
    private final Resources mResources;
    private boolean mShortcutsVisible;
    private int mDefaultShowAsAction = 0;
    private boolean mPreventDispatchingItemsChanged = false;
    private boolean mItemsChangedWhileDispatchPrevented = false;
    private boolean mStructureChangedWhileDispatchPrevented = false;
    private boolean mOptionalIconsVisible = false;
    private boolean mIsClosing = false;
    private ArrayList<C0186i> mTempShortcutItemList = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<AbstractC0197m>> mPresenters = new CopyOnWriteArrayList<>();
    private boolean mGroupDividerEnabled = false;
    private ArrayList<C0186i> mItems = new ArrayList<>();
    private ArrayList<C0186i> mVisibleItems = new ArrayList<>();
    private boolean mIsVisibleItemsStale = true;
    private ArrayList<C0186i> mActionItems = new ArrayList<>();
    private ArrayList<C0186i> mNonActionItems = new ArrayList<>();
    private boolean mIsActionItemsStale = true;

    /* renamed from: androidx.appcompat.view.menu.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$a.class */
    public interface AbstractC0183a {
        boolean onMenuItemSelected(C0182g c0182g, MenuItem menuItem);

        void onMenuModeChange(C0182g c0182g);
    }

    /* renamed from: androidx.appcompat.view.menu.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$b.class */
    public interface AbstractC0184b {
        /* renamed from: a */
        boolean mo7448a(C0186i c0186i);
    }

    public C0182g(Context context) {
        this.mContext = context;
        this.mResources = context.getResources();
        setShortcutsVisibleInner(true);
    }

    private C0186i createNewMenuItem(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new C0186i(this, i, i2, i3, i4, charSequence, i5);
    }

    private void dispatchPresenterUpdate(boolean z) {
        if (this.mPresenters.isEmpty()) {
            return;
        }
        stopDispatchingItemsChanged();
        Iterator<WeakReference<AbstractC0197m>> it = this.mPresenters.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0197m> next = it.next();
            AbstractC0197m abstractC0197m = next.get();
            if (abstractC0197m == null) {
                this.mPresenters.remove(next);
            } else {
                abstractC0197m.updateMenuView(z);
            }
        }
        startDispatchingItemsChanged();
    }

    private void dispatchRestoreInstanceState(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(PRESENTER_KEY);
        if (sparseParcelableArray == null || this.mPresenters.isEmpty()) {
            return;
        }
        Iterator<WeakReference<AbstractC0197m>> it = this.mPresenters.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0197m> next = it.next();
            AbstractC0197m abstractC0197m = next.get();
            if (abstractC0197m == null) {
                this.mPresenters.remove(next);
            } else {
                int id = abstractC0197m.getId();
                if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    abstractC0197m.onRestoreInstanceState(parcelable);
                }
            }
        }
    }

    private void dispatchSaveInstanceState(Bundle bundle) {
        Parcelable onSaveInstanceState;
        if (this.mPresenters.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator<WeakReference<AbstractC0197m>> it = this.mPresenters.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0197m> next = it.next();
            AbstractC0197m abstractC0197m = next.get();
            if (abstractC0197m == null) {
                this.mPresenters.remove(next);
            } else {
                int id = abstractC0197m.getId();
                if (id > 0 && (onSaveInstanceState = abstractC0197m.onSaveInstanceState()) != null) {
                    sparseArray.put(id, onSaveInstanceState);
                }
            }
        }
        bundle.putSparseParcelableArray(PRESENTER_KEY, sparseArray);
    }

    private boolean dispatchSubMenuSelected(SubMenuC0206r subMenuC0206r, AbstractC0197m abstractC0197m) {
        boolean z = false;
        if (this.mPresenters.isEmpty()) {
            return false;
        }
        if (abstractC0197m != null) {
            z = abstractC0197m.onSubMenuSelected(subMenuC0206r);
        }
        Iterator<WeakReference<AbstractC0197m>> it = this.mPresenters.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0197m> next = it.next();
            AbstractC0197m abstractC0197m2 = next.get();
            if (abstractC0197m2 == null) {
                this.mPresenters.remove(next);
            } else if (!z) {
                z = abstractC0197m2.onSubMenuSelected(subMenuC0206r);
            }
        }
        return z;
    }

    private static int findInsertIndex(ArrayList<C0186i> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).m7553c() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    private static int getOrdering(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = sCategoryToOrder;
            if (i2 < iArr.length) {
                return (i & 65535) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void removeItemAtInt(int i, boolean z) {
        if (i < 0 || i >= this.mItems.size()) {
            return;
        }
        this.mItems.remove(i);
        if (!z) {
            return;
        }
        onItemsChanged(true);
    }

    private void setHeaderInternal(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = getResources();
        if (view != null) {
            this.mHeaderView = view;
            this.mHeaderTitle = null;
            this.mHeaderIcon = null;
        } else {
            if (i > 0) {
                this.mHeaderTitle = resources.getText(i);
            } else if (charSequence != null) {
                this.mHeaderTitle = charSequence;
            }
            if (i2 > 0) {
                this.mHeaderIcon = C0409a.m6753a(getContext(), i2);
            } else if (drawable != null) {
                this.mHeaderIcon = drawable;
            }
            this.mHeaderView = null;
        }
        onItemsChanged(false);
    }

    private void setShortcutsVisibleInner(boolean z) {
        this.mShortcutsVisible = z && this.mResources.getConfiguration().keyboard != 1 && C0561v.m6200c(ViewConfiguration.get(this.mContext), this.mContext);
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return addInternal(0, 0, 0, this.mResources.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return addInternal(i, i2, i3, this.mResources.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return addInternal(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return addInternal(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.mContext.getPackageManager();
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

    public MenuItem addInternal(int i, int i2, int i3, CharSequence charSequence) {
        int ordering = getOrdering(i3);
        C0186i createNewMenuItem = createNewMenuItem(i, i2, i3, ordering, charSequence, this.mDefaultShowAsAction);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.mCurrentMenuInfo;
        if (contextMenuInfo != null) {
            createNewMenuItem.m7562a(contextMenuInfo);
        }
        ArrayList<C0186i> arrayList = this.mItems;
        arrayList.add(findInsertIndex(arrayList, ordering), createNewMenuItem);
        onItemsChanged(true);
        return createNewMenuItem;
    }

    public void addMenuPresenter(AbstractC0197m abstractC0197m) {
        addMenuPresenter(abstractC0197m, this.mContext);
    }

    public void addMenuPresenter(AbstractC0197m abstractC0197m, Context context) {
        this.mPresenters.add(new WeakReference<>(abstractC0197m));
        abstractC0197m.initForMenu(context, this);
        this.mIsActionItemsStale = true;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.mResources.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.mResources.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0186i c0186i = (C0186i) addInternal(i, i2, i3, charSequence);
        SubMenuC0206r subMenuC0206r = new SubMenuC0206r(this.mContext, this, c0186i);
        c0186i.m7559a(subMenuC0206r);
        return subMenuC0206r;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void changeMenuMode() {
        AbstractC0183a abstractC0183a = this.mCallback;
        if (abstractC0183a != null) {
            abstractC0183a.onMenuModeChange(this);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        C0186i c0186i = this.mExpandedItem;
        if (c0186i != null) {
            collapseItemActionView(c0186i);
        }
        this.mItems.clear();
        onItemsChanged(true);
    }

    public void clearAll() {
        this.mPreventDispatchingItemsChanged = true;
        clear();
        clearHeader();
        this.mPresenters.clear();
        this.mPreventDispatchingItemsChanged = false;
        this.mItemsChangedWhileDispatchPrevented = false;
        this.mStructureChangedWhileDispatchPrevented = false;
        onItemsChanged(true);
    }

    public void clearHeader() {
        this.mHeaderIcon = null;
        this.mHeaderTitle = null;
        this.mHeaderView = null;
        onItemsChanged(false);
    }

    @Override // android.view.Menu
    public void close() {
        close(true);
    }

    public final void close(boolean z) {
        if (this.mIsClosing) {
            return;
        }
        this.mIsClosing = true;
        Iterator<WeakReference<AbstractC0197m>> it = this.mPresenters.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0197m> next = it.next();
            AbstractC0197m abstractC0197m = next.get();
            if (abstractC0197m == null) {
                this.mPresenters.remove(next);
            } else {
                abstractC0197m.onCloseMenu(this, z);
            }
        }
        this.mIsClosing = false;
    }

    public boolean collapseItemActionView(C0186i c0186i) {
        boolean z;
        boolean z2 = false;
        if (!this.mPresenters.isEmpty()) {
            if (this.mExpandedItem != c0186i) {
                z2 = false;
            } else {
                stopDispatchingItemsChanged();
                Iterator<WeakReference<AbstractC0197m>> it = this.mPresenters.iterator();
                boolean z3 = false;
                while (true) {
                    z = z3;
                    if (!it.hasNext()) {
                        break;
                    }
                    WeakReference<AbstractC0197m> next = it.next();
                    AbstractC0197m abstractC0197m = next.get();
                    if (abstractC0197m == null) {
                        this.mPresenters.remove(next);
                    } else {
                        z = abstractC0197m.collapseItemActionView(this, c0186i);
                        z3 = z;
                        if (z) {
                            break;
                        }
                    }
                }
                startDispatchingItemsChanged();
                z2 = z;
                if (z) {
                    this.mExpandedItem = null;
                    z2 = z;
                }
            }
        }
        return z2;
    }

    public boolean dispatchMenuItemSelected(C0182g c0182g, MenuItem menuItem) {
        AbstractC0183a abstractC0183a = this.mCallback;
        return abstractC0183a != null && abstractC0183a.onMenuItemSelected(c0182g, menuItem);
    }

    public boolean expandItemActionView(C0186i c0186i) {
        boolean z;
        boolean z2 = false;
        if (this.mPresenters.isEmpty()) {
            return false;
        }
        stopDispatchingItemsChanged();
        Iterator<WeakReference<AbstractC0197m>> it = this.mPresenters.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            WeakReference<AbstractC0197m> next = it.next();
            AbstractC0197m abstractC0197m = next.get();
            if (abstractC0197m == null) {
                this.mPresenters.remove(next);
            } else {
                z = abstractC0197m.expandItemActionView(this, c0186i);
                z2 = z;
                if (z) {
                    break;
                }
            }
        }
        startDispatchingItemsChanged();
        if (z) {
            this.mExpandedItem = c0186i;
        }
        return z;
    }

    public int findGroupIndex(int i) {
        return findGroupIndex(i, 0);
    }

    public int findGroupIndex(int i, int i2) {
        int size = size();
        int i3 = i2;
        if (i2 < 0) {
            i3 = 0;
        }
        while (i3 < size) {
            if (this.mItems.get(i3).getGroupId() == i) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0186i c0186i = this.mItems.get(i2);
            if (c0186i.getItemId() == i) {
                return c0186i;
            }
            if (c0186i.hasSubMenu() && (findItem = c0186i.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public int findItemIndex(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mItems.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    C0186i findItemWithShortcutForKey(int i, KeyEvent keyEvent) {
        ArrayList<C0186i> arrayList = this.mTempShortcutItemList;
        arrayList.clear();
        findItemsWithShortcutForKey(arrayList, i, keyEvent);
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
        boolean isQwertyMode = isQwertyMode();
        for (int i2 = 0; i2 < size; i2++) {
            C0186i c0186i = arrayList.get(i2);
            char alphabeticShortcut = isQwertyMode ? c0186i.getAlphabeticShortcut() : c0186i.getNumericShortcut();
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (isQwertyMode && alphabeticShortcut == '\b' && i == 67))) {
                return c0186i;
            }
        }
        return null;
    }

    void findItemsWithShortcutForKey(List<C0186i> list, int i, KeyEvent keyEvent) {
        boolean isQwertyMode = isQwertyMode();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.mItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0186i c0186i = this.mItems.get(i2);
                if (c0186i.hasSubMenu()) {
                    ((C0182g) c0186i.getSubMenu()).findItemsWithShortcutForKey(list, i, keyEvent);
                }
                char alphabeticShortcut = isQwertyMode ? c0186i.getAlphabeticShortcut() : c0186i.getNumericShortcut();
                if (((modifiers & 69647) == ((isQwertyMode ? c0186i.getAlphabeticModifiers() : c0186i.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (isQwertyMode && alphabeticShortcut == '\b' && i == 67)) && c0186i.isEnabled())) {
                    list.add(c0186i);
                }
            }
        }
    }

    public void flagActionItems() {
        ArrayList<C0186i> visibleItems = getVisibleItems();
        if (!this.mIsActionItemsStale) {
            return;
        }
        Iterator<WeakReference<AbstractC0197m>> it = this.mPresenters.iterator();
        boolean z = false;
        while (it.hasNext()) {
            WeakReference<AbstractC0197m> next = it.next();
            AbstractC0197m abstractC0197m = next.get();
            if (abstractC0197m == null) {
                this.mPresenters.remove(next);
            } else {
                z |= abstractC0197m.flagActionItems();
            }
        }
        if (z) {
            this.mActionItems.clear();
            this.mNonActionItems.clear();
            int size = visibleItems.size();
            for (int i = 0; i < size; i++) {
                C0186i c0186i = visibleItems.get(i);
                if (c0186i.m7543j()) {
                    this.mActionItems.add(c0186i);
                } else {
                    this.mNonActionItems.add(c0186i);
                }
            }
        } else {
            this.mActionItems.clear();
            this.mNonActionItems.clear();
            this.mNonActionItems.addAll(getVisibleItems());
        }
        this.mIsActionItemsStale = false;
    }

    public ArrayList<C0186i> getActionItems() {
        flagActionItems();
        return this.mActionItems;
    }

    public String getActionViewStatesKey() {
        return ACTION_VIEW_STATES_KEY;
    }

    public Context getContext() {
        return this.mContext;
    }

    public C0186i getExpandedItem() {
        return this.mExpandedItem;
    }

    public Drawable getHeaderIcon() {
        return this.mHeaderIcon;
    }

    public CharSequence getHeaderTitle() {
        return this.mHeaderTitle;
    }

    public View getHeaderView() {
        return this.mHeaderView;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.mItems.get(i);
    }

    public ArrayList<C0186i> getNonActionItems() {
        flagActionItems();
        return this.mNonActionItems;
    }

    public boolean getOptionalIconsVisible() {
        return this.mOptionalIconsVisible;
    }

    Resources getResources() {
        return this.mResources;
    }

    public C0182g getRootMenu() {
        return this;
    }

    public ArrayList<C0186i> getVisibleItems() {
        if (!this.mIsVisibleItemsStale) {
            return this.mVisibleItems;
        }
        this.mVisibleItems.clear();
        int size = this.mItems.size();
        for (int i = 0; i < size; i++) {
            C0186i c0186i = this.mItems.get(i);
            if (c0186i.isVisible()) {
                this.mVisibleItems.add(c0186i);
            }
        }
        this.mIsVisibleItemsStale = false;
        this.mIsActionItemsStale = true;
        return this.mVisibleItems;
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.mOverrideVisibleItems) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.mItems.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public boolean isGroupDividerEnabled() {
        return this.mGroupDividerEnabled;
    }

    public boolean isQwertyMode() {
        return this.mQwertyMode;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return findItemWithShortcutForKey(i, keyEvent) != null;
    }

    public boolean isShortcutsVisible() {
        return this.mShortcutsVisible;
    }

    public void onItemActionRequestChanged(C0186i c0186i) {
        this.mIsActionItemsStale = true;
        onItemsChanged(true);
    }

    public void onItemVisibleChanged(C0186i c0186i) {
        this.mIsVisibleItemsStale = true;
        onItemsChanged(true);
    }

    public void onItemsChanged(boolean z) {
        if (!this.mPreventDispatchingItemsChanged) {
            if (z) {
                this.mIsVisibleItemsStale = true;
                this.mIsActionItemsStale = true;
            }
            dispatchPresenterUpdate(z);
            return;
        }
        this.mItemsChangedWhileDispatchPrevented = true;
        if (!z) {
            return;
        }
        this.mStructureChangedWhileDispatchPrevented = true;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return performItemAction(findItem(i), i2);
    }

    public boolean performItemAction(MenuItem menuItem, int i) {
        return performItemAction(menuItem, null, i);
    }

    public boolean performItemAction(MenuItem menuItem, AbstractC0197m abstractC0197m, int i) {
        boolean z;
        C0186i c0186i = (C0186i) menuItem;
        if (c0186i == null || !c0186i.isEnabled()) {
            return false;
        }
        boolean m7556b = c0186i.m7556b();
        AbstractC0530b mo6550a = c0186i.mo6550a();
        boolean z2 = mo6550a != null && mo6550a.mo6350c();
        if (c0186i.m7539n()) {
            boolean expandActionView = m7556b | c0186i.expandActionView();
            z = expandActionView;
            if (expandActionView) {
                close(true);
                z = expandActionView;
            }
        } else if (c0186i.hasSubMenu() || z2) {
            if ((i & 4) == 0) {
                close(false);
            }
            if (!c0186i.hasSubMenu()) {
                c0186i.m7559a(new SubMenuC0206r(getContext(), this, c0186i));
            }
            SubMenuC0206r subMenuC0206r = (SubMenuC0206r) c0186i.getSubMenu();
            if (z2) {
                mo6550a.mo6355a(subMenuC0206r);
            }
            boolean dispatchSubMenuSelected = m7556b | dispatchSubMenuSelected(subMenuC0206r, abstractC0197m);
            z = dispatchSubMenuSelected;
            if (!dispatchSubMenuSelected) {
                close(true);
                z = dispatchSubMenuSelected;
            }
        } else {
            z = m7556b;
            if ((i & 1) == 0) {
                close(true);
                z = m7556b;
            }
        }
        return z;
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C0186i findItemWithShortcutForKey = findItemWithShortcutForKey(i, keyEvent);
        boolean performItemAction = findItemWithShortcutForKey != null ? performItemAction(findItemWithShortcutForKey, i2) : false;
        if ((i2 & 2) != 0) {
            close(true);
        }
        return performItemAction;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int findGroupIndex = findGroupIndex(i);
        if (findGroupIndex >= 0) {
            int size = this.mItems.size();
            for (int i2 = 0; i2 < size - findGroupIndex && this.mItems.get(findGroupIndex).getGroupId() == i; i2++) {
                removeItemAtInt(findGroupIndex, false);
            }
            onItemsChanged(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        removeItemAtInt(findItemIndex(i), true);
    }

    public void removeItemAt(int i) {
        removeItemAtInt(i, true);
    }

    public void removeMenuPresenter(AbstractC0197m abstractC0197m) {
        Iterator<WeakReference<AbstractC0197m>> it = this.mPresenters.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0197m> next = it.next();
            AbstractC0197m abstractC0197m2 = next.get();
            if (abstractC0197m2 == null || abstractC0197m2 == abstractC0197m) {
                this.mPresenters.remove(next);
            }
        }
    }

    public void restoreActionViewStates(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(getActionViewStatesKey());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0206r) item.getSubMenu()).restoreActionViewStates(bundle);
            }
        }
        int i2 = bundle.getInt(EXPANDED_ACTION_VIEW_ID);
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    public void restorePresenterStates(Bundle bundle) {
        dispatchRestoreInstanceState(bundle);
    }

    public void saveActionViewStates(Bundle bundle) {
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
                        bundle.putInt(EXPANDED_ACTION_VIEW_ID, item.getItemId());
                        sparseArray2 = sparseArray3;
                    }
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0206r) item.getSubMenu()).saveActionViewStates(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(getActionViewStatesKey(), sparseArray);
        }
    }

    public void savePresenterStates(Bundle bundle) {
        dispatchSaveInstanceState(bundle);
    }

    public void setCallback(AbstractC0183a abstractC0183a) {
        this.mCallback = abstractC0183a;
    }

    public void setCurrentMenuInfo(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.mCurrentMenuInfo = contextMenuInfo;
    }

    public C0182g setDefaultShowAsAction(int i) {
        this.mDefaultShowAsAction = i;
        return this;
    }

    public void setExclusiveItemChecked(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.mItems.size();
        stopDispatchingItemsChanged();
        for (int i = 0; i < size; i++) {
            C0186i c0186i = this.mItems.get(i);
            if (c0186i.getGroupId() == groupId && c0186i.m7546g() && c0186i.isCheckable()) {
                c0186i.m7554b(c0186i == menuItem);
            }
        }
        startDispatchingItemsChanged();
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.mItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0186i c0186i = this.mItems.get(i2);
            if (c0186i.getGroupId() == i) {
                c0186i.m7557a(z2);
                c0186i.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.mGroupDividerEnabled = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.mItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0186i c0186i = this.mItems.get(i2);
            if (c0186i.getGroupId() == i) {
                c0186i.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        boolean z2;
        int size = this.mItems.size();
        int i2 = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            if (i2 >= size) {
                break;
            }
            C0186i c0186i = this.mItems.get(i2);
            boolean z4 = z2;
            if (c0186i.getGroupId() == i) {
                z4 = z2;
                if (c0186i.m7552c(z)) {
                    z4 = true;
                }
            }
            i2++;
            z3 = z4;
        }
        if (z2) {
            onItemsChanged(true);
        }
    }

    public C0182g setHeaderIconInt(int i) {
        setHeaderInternal(0, null, i, null, null);
        return this;
    }

    public C0182g setHeaderIconInt(Drawable drawable) {
        setHeaderInternal(0, null, 0, drawable, null);
        return this;
    }

    public C0182g setHeaderTitleInt(int i) {
        setHeaderInternal(i, null, 0, null, null);
        return this;
    }

    public C0182g setHeaderTitleInt(CharSequence charSequence) {
        setHeaderInternal(0, charSequence, 0, null, null);
        return this;
    }

    public C0182g setHeaderViewInt(View view) {
        setHeaderInternal(0, null, 0, null, view);
        return this;
    }

    public void setOptionalIconsVisible(boolean z) {
        this.mOptionalIconsVisible = z;
    }

    public void setOverrideVisibleItems(boolean z) {
        this.mOverrideVisibleItems = z;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.mQwertyMode = z;
        onItemsChanged(false);
    }

    public void setShortcutsVisible(boolean z) {
        if (this.mShortcutsVisible == z) {
            return;
        }
        setShortcutsVisibleInner(z);
        onItemsChanged(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.mItems.size();
    }

    public void startDispatchingItemsChanged() {
        this.mPreventDispatchingItemsChanged = false;
        if (this.mItemsChangedWhileDispatchPrevented) {
            this.mItemsChangedWhileDispatchPrevented = false;
            onItemsChanged(this.mStructureChangedWhileDispatchPrevented);
        }
    }

    public void stopDispatchingItemsChanged() {
        if (!this.mPreventDispatchingItemsChanged) {
            this.mPreventDispatchingItemsChanged = true;
            this.mItemsChangedWhileDispatchPrevented = false;
            this.mStructureChangedWhileDispatchPrevented = false;
        }
    }
}
