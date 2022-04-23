package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.l;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.b;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter.class */
public final class ActionMenuPresenter extends androidx.appcompat.view.menu.b implements b.a {
    private b B;
    d i;
    Drawable j;
    boolean k;
    boolean l;
    e m;
    a n;
    c o;
    int q;
    private boolean r;
    private boolean s;
    private int t;
    private int u;
    private int v;
    private boolean w;
    private boolean x;
    private boolean y;
    private int z;
    private final SparseBooleanArray A = new SparseBooleanArray();
    final f p = new f();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState.class */
    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.ActionMenuPresenter.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int openSubMenuId;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.openSubMenuId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$a.class */
    public final class a extends l {
        public a(Context context, r rVar, View view) {
            super(context, rVar, view, false, a.C0018a.actionOverflowMenuStyle);
            if (!((i) rVar.getItem()).f()) {
                this.f831a = ActionMenuPresenter.this.i == null ? (View) ActionMenuPresenter.this.g : ActionMenuPresenter.this.i;
            }
            a(ActionMenuPresenter.this.p);
        }

        @Override // androidx.appcompat.view.menu.l
        public final void e() {
            ActionMenuPresenter.this.n = null;
            ActionMenuPresenter.this.q = 0;
            super.e();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$b.class */
    final class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public final p a() {
            if (ActionMenuPresenter.this.n != null) {
                return ActionMenuPresenter.this.n.b();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$c.class */
    public final class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private e f860b;

        public c(e eVar) {
            this.f860b = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ActionMenuPresenter.this.f779c != null) {
                g gVar = ActionMenuPresenter.this.f779c;
                if (gVar.f809b != null) {
                    gVar.f809b.a(gVar);
                }
            }
            View view = (View) ActionMenuPresenter.this.g;
            if (!(view == null || view.getWindowToken() == null || !this.f860b.c())) {
                ActionMenuPresenter.this.m = this.f860b;
            }
            ActionMenuPresenter.this.o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d.class */
    public final class d extends AppCompatImageView implements ActionMenuView.a {
        public d(Context context) {
            super(context, null, a.C0018a.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            ad.a(this, getContentDescription());
            setOnTouchListener(new r(this) { // from class: androidx.appcompat.widget.ActionMenuPresenter.d.1
                @Override // androidx.appcompat.widget.r
                public final p a() {
                    if (ActionMenuPresenter.this.m == null) {
                        return null;
                    }
                    return ActionMenuPresenter.this.m.b();
                }

                @Override // androidx.appcompat.widget.r
                public final boolean b() {
                    ActionMenuPresenter.this.e();
                    return true;
                }

                @Override // androidx.appcompat.widget.r
                public final boolean c() {
                    if (ActionMenuPresenter.this.o != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.g();
                    return true;
                }
            });
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public final boolean d() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public final boolean e() {
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.e();
            return true;
        }

        @Override // android.widget.ImageView
        protected final boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                androidx.core.graphics.drawable.a.a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$e.class */
    public final class e extends l {
        public e(Context context, g gVar, View view, boolean z) {
            super(context, gVar, view, z, a.C0018a.actionOverflowMenuStyle);
            a();
            a(ActionMenuPresenter.this.p);
        }

        @Override // androidx.appcompat.view.menu.l
        public final void e() {
            if (ActionMenuPresenter.this.f779c != null) {
                ActionMenuPresenter.this.f779c.close();
            }
            ActionMenuPresenter.this.m = null;
            super.e();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$f.class */
    final class f implements m.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final void a(g gVar, boolean z) {
            if (gVar instanceof r) {
                gVar.l().a(false);
            }
            m.a aVar = ActionMenuPresenter.this.f;
            if (aVar != null) {
                aVar.a(gVar, z);
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final boolean a(g gVar) {
            if (gVar == ActionMenuPresenter.this.f779c) {
                return false;
            }
            ActionMenuPresenter.this.q = ((r) gVar).getItem().getItemId();
            m.a aVar = ActionMenuPresenter.this.f;
            if (aVar != null) {
                return aVar.a(gVar);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, a.g.abc_action_menu_layout, a.g.abc_action_menu_item_layout);
    }

    @Override // androidx.appcompat.view.menu.b
    public final View a(i iVar, View view, ViewGroup viewGroup) {
        View actionView = iVar.getActionView();
        if (actionView == null || iVar.j()) {
            actionView = super.a(iVar, view, viewGroup);
        }
        actionView.setVisibility(iVar.isActionViewExpanded() ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!((ActionMenuView) viewGroup).checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(ActionMenuView.a(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.b
    public final n a(ViewGroup viewGroup) {
        n nVar = this.g;
        n a2 = super.a(viewGroup);
        if (nVar != a2) {
            ((ActionMenuView) a2).setPresenter(this);
        }
        return a2;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public final void a(Context context, g gVar) {
        super.a(context, gVar);
        Resources resources = context.getResources();
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(context);
        if (!this.s) {
            boolean z = true;
            if (Build.VERSION.SDK_INT < 19 && ViewConfiguration.get(a2.f729a).hasPermanentMenuKey()) {
                z = false;
            }
            this.r = z;
        }
        if (!this.y) {
            this.t = a2.f729a.getResources().getDisplayMetrics().widthPixels / 2;
        }
        if (!this.w) {
            this.v = a2.a();
        }
        int i = this.t;
        if (this.r) {
            if (this.i == null) {
                d dVar = new d(this.f777a);
                this.i = dVar;
                if (this.k) {
                    dVar.setImageDrawable(this.j);
                    this.j = null;
                    this.k = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.i.getMeasuredWidth();
        } else {
            this.i = null;
        }
        this.u = i;
        this.z = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(Parcelable parcelable) {
        MenuItem findItem;
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            if (savedState.openSubMenuId > 0 && (findItem = this.f779c.findItem(savedState.openSubMenuId)) != null) {
                a((r) findItem.getSubMenu());
            }
        }
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public final void a(g gVar, boolean z) {
        h();
        super.a(gVar, z);
    }

    @Override // androidx.appcompat.view.menu.b
    public final void a(i iVar, n.a aVar) {
        aVar.a(iVar);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.g);
        if (this.B == null) {
            this.B = new b();
        }
        actionMenuItemView.setPopupCallback(this.B);
    }

    public final void a(ActionMenuView actionMenuView) {
        this.g = actionMenuView;
        actionMenuView.f866a = this.f779c;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public final void a(boolean z) {
        super.a(z);
        ((View) this.g).requestLayout();
        if (this.f779c != null) {
            g gVar = this.f779c;
            gVar.j();
            ArrayList<i> arrayList = gVar.f811d;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                androidx.core.view.b bVar = arrayList.get(i).e;
                if (bVar != null) {
                    bVar.f1989d = this;
                }
            }
        }
        ArrayList<i> k = this.f779c != null ? this.f779c.k() : null;
        boolean z2 = false;
        if (this.r) {
            z2 = false;
            if (k != null) {
                int size2 = k.size();
                if (size2 == 1) {
                    z2 = !k.get(0).isActionViewExpanded();
                } else {
                    z2 = false;
                    if (size2 > 0) {
                        z2 = true;
                    }
                }
            }
        }
        if (z2) {
            if (this.i == null) {
                this.i = new d(this.f777a);
            }
            ViewGroup viewGroup = (ViewGroup) this.i.getParent();
            if (viewGroup != this.g) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.i);
                }
                ((ActionMenuView) this.g).addView(this.i, ActionMenuView.a());
            }
        } else {
            d dVar = this.i;
            if (dVar != null && dVar.getParent() == this.g) {
                ((ViewGroup) this.g).removeView(this.i);
            }
        }
        ((ActionMenuView) this.g).setOverflowReserved(this.r);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b4, code lost:
        if ((r18 + r17) > r11) goto L_0x00b7;
     */
    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.a():boolean");
    }

    @Override // androidx.appcompat.view.menu.b
    public final boolean a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.i) {
            return false;
        }
        return super.a(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.b
    public final boolean a(i iVar) {
        return iVar.f();
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public final boolean a(r rVar) {
        View view;
        boolean z = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        r rVar2 = rVar;
        while (rVar2.l != this.f779c) {
            rVar2 = (r) rVar2.l;
        }
        MenuItem item = rVar2.getItem();
        ViewGroup viewGroup = (ViewGroup) this.g;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                view = viewGroup.getChildAt(i);
                if ((view instanceof n.a) && ((n.a) view).a() == item) {
                    break;
                }
            }
        }
        view = null;
        if (view == null) {
            return false;
        }
        this.q = rVar.getItem().getItemId();
        int size = rVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item2 = rVar.getItem(i2);
            if (item2.isVisible() && item2.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        a aVar = new a(this.f778b, rVar, view);
        this.n = aVar;
        aVar.a(z);
        if (this.n.c()) {
            super.a(rVar);
            return true;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    @Override // androidx.core.view.b.a
    public final void b(boolean z) {
        if (z) {
            super.a((r) null);
        } else if (this.f779c != null) {
            this.f779c.a(false);
        }
    }

    public final void c() {
        if (!this.w) {
            this.v = androidx.appcompat.view.a.a(this.f778b).a();
        }
        if (this.f779c != null) {
            this.f779c.b(true);
        }
    }

    public final void d() {
        this.r = true;
        this.s = true;
    }

    public final boolean e() {
        if (!this.r || j() || this.f779c == null || this.g == null || this.o != null || this.f779c.k().isEmpty()) {
            return false;
        }
        this.o = new c(new e(this.f778b, this.f779c, this.i, true));
        ((View) this.g).post(this.o);
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public final Parcelable f() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.q;
        return savedState;
    }

    public final boolean g() {
        if (this.o == null || this.g == null) {
            e eVar = this.m;
            if (eVar == null) {
                return false;
            }
            eVar.d();
            return true;
        }
        ((View) this.g).removeCallbacks(this.o);
        this.o = null;
        return true;
    }

    public final boolean h() {
        return g() | i();
    }

    public final boolean i() {
        a aVar = this.n;
        if (aVar == null) {
            return false;
        }
        aVar.d();
        return true;
    }

    public final boolean j() {
        e eVar = this.m;
        return eVar != null && eVar.f();
    }
}
