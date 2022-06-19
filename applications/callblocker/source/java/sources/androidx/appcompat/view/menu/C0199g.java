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
import androidx.core.p017a.C0438a;
import androidx.core.p019b.p020a.AbstractMenuC0483a;
import androidx.core.p026h.AbstractC0573b;
import androidx.core.p026h.C0604v;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.appcompat.view.menu.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g.class */
public class C0199g implements AbstractMenuC0483a {

    /* renamed from: d */
    private static final int[] f771d = {1, 4, 5, 3, 2, 0};

    /* renamed from: A */
    private boolean f772A;

    /* renamed from: a */
    CharSequence f773a;

    /* renamed from: b */
    Drawable f774b;

    /* renamed from: c */
    View f775c;

    /* renamed from: e */
    private final Context f776e;

    /* renamed from: f */
    private final Resources f777f;

    /* renamed from: g */
    private boolean f778g;

    /* renamed from: h */
    private boolean f779h;

    /* renamed from: i */
    private AbstractC0200a f780i;

    /* renamed from: q */
    private ContextMenu.ContextMenuInfo f788q;

    /* renamed from: y */
    private C0203i f796y;

    /* renamed from: p */
    private int f787p = 0;

    /* renamed from: r */
    private boolean f789r = false;

    /* renamed from: s */
    private boolean f790s = false;

    /* renamed from: t */
    private boolean f791t = false;

    /* renamed from: u */
    private boolean f792u = false;

    /* renamed from: v */
    private boolean f793v = false;

    /* renamed from: w */
    private ArrayList<C0203i> f794w = new ArrayList<>();

    /* renamed from: x */
    private CopyOnWriteArrayList<WeakReference<AbstractC0214m>> f795x = new CopyOnWriteArrayList<>();

    /* renamed from: z */
    private boolean f797z = false;

    /* renamed from: j */
    private ArrayList<C0203i> f781j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<C0203i> f782k = new ArrayList<>();

    /* renamed from: l */
    private boolean f783l = true;

    /* renamed from: m */
    private ArrayList<C0203i> f784m = new ArrayList<>();

    /* renamed from: n */
    private ArrayList<C0203i> f785n = new ArrayList<>();

    /* renamed from: o */
    private boolean f786o = true;

    /* renamed from: androidx.appcompat.view.menu.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$a.class */
    public interface AbstractC0200a {
        /* renamed from: a */
        void mo3619a(C0199g c0199g);

        /* renamed from: a */
        boolean mo3618a(C0199g c0199g, MenuItem menuItem);
    }

    /* renamed from: androidx.appcompat.view.menu.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g$b.class */
    public interface AbstractC0201b {
        /* renamed from: a */
        boolean mo21748a(C0203i c0203i);
    }

    public C0199g(Context context) {
        this.f776e = context;
        this.f777f = context.getResources();
        m21863e(true);
    }

    /* renamed from: a */
    private static int m21880a(ArrayList<C0203i> arrayList, int i) {
        int i2;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i2 = 0;
                break;
            } else if (arrayList.get(size).m21834c() <= i) {
                i2 = size + 1;
                break;
            } else {
                size--;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private C0203i m21895a(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new C0203i(this, i, i2, i3, i4, charSequence, i5);
    }

    /* renamed from: a */
    private void m21893a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources m21866e = m21866e();
        if (view != null) {
            this.f775c = view;
            this.f773a = null;
            this.f774b = null;
        } else {
            if (i > 0) {
                this.f773a = m21866e.getText(i);
            } else if (charSequence != null) {
                this.f773a = charSequence;
            }
            if (i2 > 0) {
                this.f774b = C0438a.m20900a(m21862f(), i2);
            } else if (drawable != null) {
                this.f774b = drawable;
            }
            this.f775c = null;
        }
        m21873b(false);
    }

    /* renamed from: a */
    private void m21892a(int i, boolean z) {
        if (i < 0 || i >= this.f781j.size()) {
            return;
        }
        this.f781j.remove(i);
        if (!z) {
            return;
        }
        m21873b(true);
    }

    /* renamed from: a */
    private boolean m21882a(SubMenuC0223r subMenuC0223r, AbstractC0214m abstractC0214m) {
        boolean z = false;
        if (!this.f795x.isEmpty()) {
            z = false;
            if (abstractC0214m != null) {
                z = abstractC0214m.mo3584a(subMenuC0223r);
            }
            Iterator<WeakReference<AbstractC0214m>> it = this.f795x.iterator();
            while (it.hasNext()) {
                WeakReference<AbstractC0214m> next = it.next();
                AbstractC0214m abstractC0214m2 = next.get();
                if (abstractC0214m2 == null) {
                    this.f795x.remove(next);
                } else if (!z) {
                    z = abstractC0214m2.mo3584a(subMenuC0223r);
                }
            }
        }
        return z;
    }

    /* renamed from: d */
    private void m21867d(boolean z) {
        if (this.f795x.isEmpty()) {
            return;
        }
        m21858h();
        Iterator<WeakReference<AbstractC0214m>> it = this.f795x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0214m> next = it.next();
            AbstractC0214m abstractC0214m = next.get();
            if (abstractC0214m == null) {
                this.f795x.remove(next);
            } else {
                abstractC0214m.mo3582a(z);
            }
        }
        m21857i();
    }

    /* renamed from: e */
    private void m21864e(Bundle bundle) {
        Parcelable mo3577f;
        if (this.f795x.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator<WeakReference<AbstractC0214m>> it = this.f795x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0214m> next = it.next();
            AbstractC0214m abstractC0214m = next.get();
            if (abstractC0214m == null) {
                this.f795x.remove(next);
            } else {
                int mo3578c = abstractC0214m.mo3578c();
                if (mo3578c > 0 && (mo3577f = abstractC0214m.mo3577f()) != null) {
                    sparseArray.put(mo3578c, mo3577f);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
    }

    /* renamed from: e */
    private void m21863e(boolean z) {
        this.f779h = z && this.f777f.getConfiguration().keyboard != 1 && C0604v.m20267c(ViewConfiguration.get(this.f776e), this.f776e);
    }

    /* renamed from: f */
    private static int m21861f(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 < 0 || i2 >= f771d.length) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        return (f771d[i2] << 16) | (65535 & i);
    }

    /* renamed from: f */
    private void m21860f(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || this.f795x.isEmpty()) {
            return;
        }
        Iterator<WeakReference<AbstractC0214m>> it = this.f795x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0214m> next = it.next();
            AbstractC0214m abstractC0214m = next.get();
            if (abstractC0214m == null) {
                this.f795x.remove(next);
            } else {
                int mo3578c = abstractC0214m.mo3578c();
                if (mo3578c > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(mo3578c)) != null) {
                    abstractC0214m.mo3588a(parcelable);
                }
            }
        }
    }

    /* renamed from: a */
    public int m21896a(int i, int i2) {
        int i3;
        int size = size();
        int i4 = i2;
        if (i2 < 0) {
            i4 = 0;
        }
        int i5 = i4;
        while (true) {
            if (i5 >= size) {
                i3 = -1;
                break;
            } else if (this.f781j.get(i5).getGroupId() == i) {
                i3 = i5;
                break;
            } else {
                i5++;
            }
        }
        return i3;
    }

    /* renamed from: a */
    public MenuItem mo3601a(int i, int i2, int i3, CharSequence charSequence) {
        int m21861f = m21861f(i3);
        C0203i m21895a = m21895a(i, i2, i3, m21861f, charSequence, this.f787p);
        if (this.f788q != null) {
            m21895a.m21843a(this.f788q);
        }
        this.f781j.add(m21880a(this.f781j, m21861f), m21895a);
        m21873b(true);
        return m21895a;
    }

    /* renamed from: a */
    public C0199g m21897a(int i) {
        this.f787p = i;
        return this;
    }

    /* renamed from: a */
    public C0199g m21891a(Drawable drawable) {
        m21893a(0, null, 0, drawable, null);
        return this;
    }

    /* renamed from: a */
    public C0199g m21886a(View view) {
        m21893a(0, null, 0, null, view);
        return this;
    }

    /* renamed from: a */
    public C0199g m21881a(CharSequence charSequence) {
        m21893a(0, charSequence, 0, null, null);
        return this;
    }

    /* renamed from: a */
    C0203i m21894a(int i, KeyEvent keyEvent) {
        C0203i c0203i;
        ArrayList<C0203i> arrayList = this.f794w;
        arrayList.clear();
        m21879a(arrayList, i, keyEvent);
        if (!arrayList.isEmpty()) {
            int metaState = keyEvent.getMetaState();
            KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
            keyEvent.getKeyData(keyData);
            int size = arrayList.size();
            if (size != 1) {
                boolean mo21785c = mo21785c();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        c0203i = null;
                        break;
                    }
                    C0203i c0203i2 = arrayList.get(i2);
                    char alphabeticShortcut = mo21785c ? c0203i2.getAlphabeticShortcut() : c0203i2.getNumericShortcut();
                    if (alphabeticShortcut == keyData.meta[0]) {
                        c0203i = c0203i2;
                        if ((metaState & 2) == 0) {
                            break;
                        }
                    }
                    if (alphabeticShortcut == keyData.meta[2]) {
                        c0203i = c0203i2;
                        if ((metaState & 2) != 0) {
                            break;
                        }
                    }
                    if (mo21785c && alphabeticShortcut == '\b') {
                        c0203i = c0203i2;
                        if (i == 67) {
                            break;
                        }
                    }
                    i2++;
                }
            } else {
                c0203i = arrayList.get(0);
            }
        } else {
            c0203i = null;
        }
        return c0203i;
    }

    /* renamed from: a */
    public String mo21789a() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: a */
    public void m21890a(Bundle bundle) {
        m21864e(bundle);
    }

    /* renamed from: a */
    public void m21889a(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f781j.size();
        m21858h();
        for (int i = 0; i < size; i++) {
            C0203i c0203i = this.f781j.get(i);
            if (c0203i.getGroupId() == groupId && c0203i.m21827g() && c0203i.isCheckable()) {
                c0203i.m21835b(c0203i == menuItem);
            }
        }
        m21857i();
    }

    /* renamed from: a */
    public void mo21788a(AbstractC0200a abstractC0200a) {
        this.f780i = abstractC0200a;
    }

    /* renamed from: a */
    public void m21885a(C0203i c0203i) {
        this.f783l = true;
        m21873b(true);
    }

    /* renamed from: a */
    public void m21884a(AbstractC0214m abstractC0214m) {
        m21883a(abstractC0214m, this.f776e);
    }

    /* renamed from: a */
    public void m21883a(AbstractC0214m abstractC0214m, Context context) {
        this.f795x.add(new WeakReference<>(abstractC0214m));
        abstractC0214m.mo3589a(context, this);
        this.f786o = true;
    }

    /* renamed from: a */
    void m21879a(List<C0203i> list, int i, KeyEvent keyEvent) {
        boolean mo21785c = mo21785c();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f781j.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0203i c0203i = this.f781j.get(i2);
                if (c0203i.hasSubMenu()) {
                    ((C0199g) c0203i.getSubMenu()).m21879a(list, i, keyEvent);
                }
                char alphabeticShortcut = mo21785c ? c0203i.getAlphabeticShortcut() : c0203i.getNumericShortcut();
                if (((modifiers & 69647) == ((mo21785c ? c0203i.getAlphabeticModifiers() : c0203i.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (mo21785c && alphabeticShortcut == '\b' && i == 67)) && c0203i.isEnabled())) {
                    list.add(c0203i);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m21878a(boolean z) {
        if (this.f793v) {
            return;
        }
        this.f793v = true;
        Iterator<WeakReference<AbstractC0214m>> it = this.f795x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0214m> next = it.next();
            AbstractC0214m abstractC0214m = next.get();
            if (abstractC0214m == null) {
                this.f795x.remove(next);
            } else {
                abstractC0214m.mo3586a(this, z);
            }
        }
        this.f793v = false;
    }

    /* renamed from: a */
    public boolean m21888a(MenuItem menuItem, int i) {
        return m21887a(menuItem, (AbstractC0214m) null, i);
    }

    /* renamed from: a */
    public boolean m21887a(MenuItem menuItem, AbstractC0214m abstractC0214m, int i) {
        C0203i c0203i = (C0203i) menuItem;
        boolean z = false;
        if (c0203i != null) {
            if (!c0203i.isEnabled()) {
                z = false;
            } else {
                z = c0203i.m21837b();
                AbstractC0573b mo20731a = c0203i.mo20731a();
                boolean z2 = mo20731a != null && mo20731a.mo20427c();
                if (c0203i.m21820n()) {
                    boolean expandActionView = c0203i.expandActionView() | z;
                    z = expandActionView;
                    if (expandActionView) {
                        m21878a(true);
                        z = expandActionView;
                    }
                } else if (c0203i.hasSubMenu() || z2) {
                    if ((i & 4) == 0) {
                        m21878a(false);
                    }
                    if (!c0203i.hasSubMenu()) {
                        c0203i.m21840a(new SubMenuC0223r(m21862f(), this, c0203i));
                    }
                    SubMenuC0223r subMenuC0223r = (SubMenuC0223r) c0203i.getSubMenu();
                    if (z2) {
                        mo20731a.mo20432a(subMenuC0223r);
                    }
                    boolean m21882a = m21882a(subMenuC0223r, abstractC0214m) | z;
                    z = m21882a;
                    if (!m21882a) {
                        m21878a(true);
                        z = m21882a;
                    }
                } else if ((i & 1) == 0) {
                    m21878a(true);
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean mo21787a(C0199g c0199g, MenuItem menuItem) {
        return this.f780i != null && this.f780i.mo3618a(c0199g, menuItem);
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return mo3601a(0, 0, 0, this.f777f.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return mo3601a(i, i2, i3, this.f777f.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return mo3601a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return mo3601a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.f776e.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i5 = 0; i5 < size; i5++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f777f.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f777f.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0203i c0203i = (C0203i) mo3601a(i, i2, i3, charSequence);
        SubMenuC0223r subMenuC0223r = new SubMenuC0223r(this.f776e, this, c0203i);
        c0203i.m21840a(subMenuC0223r);
        return subMenuC0223r;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public int m21877b(int i) {
        int i2;
        int size = size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i2 = -1;
                break;
            } else if (this.f781j.get(i3).getItemId() == i) {
                i2 = i3;
                break;
            } else {
                i3++;
            }
        }
        return i2;
    }

    /* renamed from: b */
    public void m21876b(Bundle bundle) {
        m21860f(bundle);
    }

    /* renamed from: b */
    public void m21875b(C0203i c0203i) {
        this.f786o = true;
        m21873b(true);
    }

    /* renamed from: b */
    public void m21874b(AbstractC0214m abstractC0214m) {
        Iterator<WeakReference<AbstractC0214m>> it = this.f795x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0214m> next = it.next();
            AbstractC0214m abstractC0214m2 = next.get();
            if (abstractC0214m2 == null || abstractC0214m2 == abstractC0214m) {
                this.f795x.remove(next);
            }
        }
    }

    /* renamed from: b */
    public void m21873b(boolean z) {
        if (!this.f789r) {
            if (z) {
                this.f783l = true;
                this.f786o = true;
            }
            m21867d(z);
            return;
        }
        this.f790s = true;
        if (!z) {
            return;
        }
        this.f791t = true;
    }

    /* renamed from: b */
    public boolean mo21786b() {
        return this.f797z;
    }

    /* renamed from: c */
    public int m21872c(int i) {
        return m21896a(i, 0);
    }

    /* renamed from: c */
    public void m21871c(Bundle bundle) {
        SparseArray<? extends Parcelable> sparseArray = null;
        int size = size();
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
                ((SubMenuC0223r) item.getSubMenu()).m21871c(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo21789a(), sparseArray);
        }
    }

    /* renamed from: c */
    public void m21870c(boolean z) {
        this.f772A = z;
    }

    /* renamed from: c */
    public boolean mo21785c() {
        return this.f778g;
    }

    /* renamed from: c */
    public boolean mo21784c(C0203i c0203i) {
        boolean z = false;
        if (!this.f795x.isEmpty()) {
            m21858h();
            Iterator<WeakReference<AbstractC0214m>> it = this.f795x.iterator();
            boolean z2 = false;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WeakReference<AbstractC0214m> next = it.next();
                AbstractC0214m abstractC0214m = next.get();
                if (abstractC0214m == null) {
                    this.f795x.remove(next);
                } else {
                    boolean mo3587a = abstractC0214m.mo3587a(this, c0203i);
                    z2 = mo3587a;
                    if (mo3587a) {
                        z2 = mo3587a;
                        break;
                    }
                }
            }
            m21857i();
            z = z2;
            if (z2) {
                this.f796y = c0203i;
                z = z2;
            }
        }
        return z;
    }

    @Override // android.view.Menu
    public void clear() {
        if (this.f796y != null) {
            mo21782d(this.f796y);
        }
        this.f781j.clear();
        m21873b(true);
    }

    public void clearHeader() {
        this.f774b = null;
        this.f773a = null;
        this.f775c = null;
        m21873b(false);
    }

    @Override // android.view.Menu
    public void close() {
        m21878a(true);
    }

    /* renamed from: d */
    public C0199g m21869d(int i) {
        m21893a(i, null, 0, null, null);
        return this;
    }

    /* renamed from: d */
    public void m21868d(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo21789a());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0223r) item.getSubMenu()).m21868d(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    /* renamed from: d */
    public boolean mo21783d() {
        return this.f779h;
    }

    /* renamed from: d */
    public boolean mo21782d(C0203i c0203i) {
        boolean z = false;
        if (!this.f795x.isEmpty()) {
            if (this.f796y != c0203i) {
                z = false;
            } else {
                m21858h();
                Iterator<WeakReference<AbstractC0214m>> it = this.f795x.iterator();
                boolean z2 = false;
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    WeakReference<AbstractC0214m> next = it.next();
                    AbstractC0214m abstractC0214m = next.get();
                    if (abstractC0214m == null) {
                        this.f795x.remove(next);
                    } else {
                        boolean mo3580b = abstractC0214m.mo3580b(this, c0203i);
                        z2 = mo3580b;
                        if (mo3580b) {
                            z2 = mo3580b;
                            break;
                        }
                    }
                }
                m21857i();
                z = z2;
                if (z2) {
                    this.f796y = null;
                    z = z2;
                }
            }
        }
        return z;
    }

    /* renamed from: e */
    Resources m21866e() {
        return this.f777f;
    }

    /* renamed from: e */
    public C0199g m21865e(int i) {
        m21893a(0, null, i, null, null);
        return this;
    }

    /* renamed from: f */
    public Context m21862f() {
        return this.f776e;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        C0203i c0203i;
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                c0203i = null;
                break;
            }
            c0203i = this.f781j.get(i2);
            if (c0203i.getItemId() == i) {
                break;
            }
            if (c0203i.hasSubMenu()) {
                MenuItem findItem = c0203i.getSubMenu().findItem(i);
                c0203i = findItem;
                if (findItem != null) {
                    break;
                }
            }
            i2++;
        }
        return c0203i;
    }

    /* renamed from: g */
    public void m21859g() {
        if (this.f780i != null) {
            this.f780i.mo3619a(this);
        }
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f781j.get(i);
    }

    /* renamed from: h */
    public void m21858h() {
        if (!this.f789r) {
            this.f789r = true;
            this.f790s = false;
            this.f791t = false;
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        boolean z;
        if (!this.f772A) {
            int size = size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                } else if (this.f781j.get(i).isVisible()) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    /* renamed from: i */
    public void m21857i() {
        this.f789r = false;
        if (this.f790s) {
            this.f790s = false;
            m21873b(this.f791t);
        }
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m21894a(i, keyEvent) != null;
    }

    /* renamed from: j */
    public ArrayList<C0203i> m21856j() {
        ArrayList<C0203i> arrayList;
        if (!this.f783l) {
            arrayList = this.f782k;
        } else {
            this.f782k.clear();
            int size = this.f781j.size();
            for (int i = 0; i < size; i++) {
                C0203i c0203i = this.f781j.get(i);
                if (c0203i.isVisible()) {
                    this.f782k.add(c0203i);
                }
            }
            this.f783l = false;
            this.f786o = true;
            arrayList = this.f782k;
        }
        return arrayList;
    }

    /* renamed from: k */
    public void m21855k() {
        ArrayList<C0203i> m21856j = m21856j();
        if (!this.f786o) {
            return;
        }
        Iterator<WeakReference<AbstractC0214m>> it = this.f795x.iterator();
        boolean z = false;
        while (it.hasNext()) {
            WeakReference<AbstractC0214m> next = it.next();
            AbstractC0214m abstractC0214m = next.get();
            if (abstractC0214m == null) {
                this.f795x.remove(next);
            } else {
                z = abstractC0214m.mo3581b() | z;
            }
        }
        if (z) {
            this.f784m.clear();
            this.f785n.clear();
            int size = m21856j.size();
            for (int i = 0; i < size; i++) {
                C0203i c0203i = m21856j.get(i);
                if (c0203i.m21824j()) {
                    this.f784m.add(c0203i);
                } else {
                    this.f785n.add(c0203i);
                }
            }
        } else {
            this.f784m.clear();
            this.f785n.clear();
            this.f785n.addAll(m21856j());
        }
        this.f786o = false;
    }

    /* renamed from: l */
    public ArrayList<C0203i> m21854l() {
        m21855k();
        return this.f784m;
    }

    /* renamed from: m */
    public ArrayList<C0203i> m21853m() {
        m21855k();
        return this.f785n;
    }

    /* renamed from: n */
    public CharSequence m21852n() {
        return this.f773a;
    }

    /* renamed from: o */
    public Drawable m21851o() {
        return this.f774b;
    }

    /* renamed from: p */
    public View m21850p() {
        return this.f775c;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m21888a(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C0203i m21894a = m21894a(i, keyEvent);
        boolean z = false;
        if (m21894a != null) {
            z = m21888a(m21894a, i2);
        }
        if ((i2 & 2) != 0) {
            m21878a(true);
        }
        return z;
    }

    /* renamed from: q */
    public C0199g mo21781q() {
        return this;
    }

    /* renamed from: r */
    public boolean m21849r() {
        return this.f792u;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int m21872c = m21872c(i);
        if (m21872c >= 0) {
            int size = this.f781j.size();
            for (int i2 = 0; i2 < size - m21872c && this.f781j.get(m21872c).getGroupId() == i; i2++) {
                m21892a(m21872c, false);
            }
            m21873b(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m21892a(m21877b(i), true);
    }

    /* renamed from: s */
    public C0203i m21848s() {
        return this.f796y;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f781j.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0203i c0203i = this.f781j.get(i2);
            if (c0203i.getGroupId() == i) {
                c0203i.m21838a(z2);
                c0203i.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f797z = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f781j.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0203i c0203i = this.f781j.get(i2);
            if (c0203i.getGroupId() == i) {
                c0203i.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f781j.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            C0203i c0203i = this.f781j.get(i2);
            if (c0203i.getGroupId() == i && c0203i.m21833c(z)) {
                z2 = true;
            }
        }
        if (z2) {
            m21873b(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f778g = z;
        m21873b(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f781j.size();
    }
}
