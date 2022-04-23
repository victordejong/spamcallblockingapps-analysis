package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import p012b.p016b.C0574a;
import p012b.p016b.C0580g;
import p012b.p016b.p024p.C0621a;
import p012b.p016b.p024p.p025j.AbstractC0636b;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p024p.p025j.AbstractC0664n;
import p012b.p016b.p024p.p025j.AbstractC0667p;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p016b.p024p.p025j.C0651i;
import p012b.p016b.p024p.p025j.C0660l;
import p012b.p016b.p024p.p025j.SubMenuC0671r;
import p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s;
import p012b.p016b.p026q.C0697h0;
import p012b.p042i.p046j.p047m.C0907a;
import p012b.p042i.p054p.AbstractC0952b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter.class */
public class ActionMenuPresenter extends AbstractC0636b implements AbstractC0952b.AbstractC0953a {

    /* renamed from: B */
    public int f461B;

    /* renamed from: i */
    public C0118d f462i;

    /* renamed from: j */
    public Drawable f463j;

    /* renamed from: k */
    public boolean f464k;

    /* renamed from: l */
    public boolean f465l;

    /* renamed from: m */
    public boolean f466m;

    /* renamed from: n */
    public int f467n;

    /* renamed from: o */
    public int f468o;

    /* renamed from: p */
    public int f469p;

    /* renamed from: q */
    public boolean f470q;

    /* renamed from: r */
    public boolean f471r;

    /* renamed from: s */
    public boolean f472s;

    /* renamed from: t */
    public boolean f473t;

    /* renamed from: u */
    public int f474u;

    /* renamed from: w */
    public C0120e f476w;

    /* renamed from: x */
    public C0115a f477x;

    /* renamed from: y */
    public RunnableC0117c f478y;

    /* renamed from: z */
    public C0116b f479z;

    /* renamed from: v */
    public final SparseBooleanArray f475v = new SparseBooleanArray();

    /* renamed from: A */
    public final C0121f f460A = new C0121f();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0114a();

        /* renamed from: a */
        public int f480a;

        /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState$a.class */
        public class C0114a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        public SavedState(Parcel parcel) {
            this.f480a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f480a);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$a.class */
    public class C0115a extends C0660l {
        public C0115a(Context context, SubMenuC0671r rVar, View view) {
            super(context, rVar, view, false, C0574a.actionOverflowMenuStyle);
            if (!((C0651i) rVar.getItem()).m36556h()) {
                C0118d dVar = ActionMenuPresenter.this.f462i;
                m36535a(dVar == null ? (View) ActionMenuPresenter.this.f3170h : dVar);
            }
            m36533a(ActionMenuPresenter.this.f460A);
        }

        @Override // p012b.p016b.p024p.p025j.C0660l
        /* renamed from: e */
        public void mo36528e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f477x = null;
            actionMenuPresenter.f461B = 0;
            super.mo36528e();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$b.class */
    public class C0116b extends ActionMenuItemView.AbstractC0108b {
        public C0116b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.AbstractC0108b
        /* renamed from: a */
        public AbstractC0667p mo39046a() {
            C0115a aVar = ActionMenuPresenter.this.f477x;
            return aVar != null ? aVar.m36530c() : null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$c.class */
    public class RunnableC0117c implements Runnable {

        /* renamed from: a */
        public C0120e f483a;

        public RunnableC0117c(C0120e eVar) {
            this.f483a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ActionMenuPresenter.this.f3165c != null) {
                ActionMenuPresenter.this.f3165c.m36624a();
            }
            View view = (View) ActionMenuPresenter.this.f3170h;
            if (!(view == null || view.getWindowToken() == null || !this.f483a.m36526g())) {
                ActionMenuPresenter.this.f476w = this.f483a;
            }
            ActionMenuPresenter.this.f478y = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d.class */
    public class C0118d extends AppCompatImageView implements ActionMenuView.AbstractC0122a {

        /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d$a.class */
        public class C0119a extends AbstractView$OnTouchListenerC0722s {
            public C0119a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
            }

            @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
            /* renamed from: b */
            public AbstractC0667p mo36228b() {
                C0120e eVar = ActionMenuPresenter.this.f476w;
                if (eVar == null) {
                    return null;
                }
                return eVar.m36530c();
            }

            @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
            /* renamed from: c */
            public boolean mo36225c() {
                ActionMenuPresenter.this.m39047i();
                return true;
            }

            @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
            /* renamed from: d */
            public boolean mo36224d() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.f478y != null) {
                    return false;
                }
                actionMenuPresenter.m39054e();
                return true;
            }
        }

        public C0118d(Context context) {
            super(context, null, C0574a.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C0697h0.m36376a(this, getContentDescription());
            setOnTouchListener(new C0119a(this, ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0122a
        /* renamed from: a */
        public boolean mo39033a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0122a
        /* renamed from: b */
        public boolean mo39032b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.m39047i();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                C0907a.m35527a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$e.class */
    public class C0120e extends C0660l {
        public C0120e(Context context, C0647g gVar, View view, boolean z) {
            super(context, gVar, view, z, C0574a.actionOverflowMenuStyle);
            m36538a(8388613);
            m36533a(ActionMenuPresenter.this.f460A);
        }

        @Override // p012b.p016b.p024p.p025j.C0660l
        /* renamed from: e */
        public void mo36528e() {
            if (ActionMenuPresenter.this.f3165c != null) {
                ActionMenuPresenter.this.f3165c.close();
            }
            ActionMenuPresenter.this.f476w = null;
            super.mo36528e();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$f.class */
    public class C0121f implements AbstractC0662m.AbstractC0663a {
        public C0121f() {
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
        /* renamed from: a */
        public void mo36521a(C0647g gVar, boolean z) {
            if (gVar instanceof SubMenuC0671r) {
                gVar.mo36496m().m36604a(false);
            }
            AbstractC0662m.AbstractC0663a a = ActionMenuPresenter.this.m36652a();
            if (a != null) {
                a.mo36521a(gVar, z);
            }
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
        /* renamed from: a */
        public boolean mo36522a(C0647g gVar) {
            boolean z = false;
            if (gVar == ActionMenuPresenter.this.f3165c) {
                return false;
            }
            ActionMenuPresenter.this.f461B = ((SubMenuC0671r) gVar).getItem().getItemId();
            AbstractC0662m.AbstractC0663a a = ActionMenuPresenter.this.m36652a();
            if (a != null) {
                z = a.mo36522a(gVar);
            }
            return z;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, C0580g.abc_action_menu_layout, C0580g.abc_action_menu_item_layout);
    }

    /* renamed from: a */
    public final View m39064a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f3170h;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof AbstractC0664n.AbstractC0665a) && ((AbstractC0664n.AbstractC0665a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0636b
    /* renamed from: a */
    public View mo36646a(C0651i iVar, View view, ViewGroup viewGroup) {
        View actionView = iVar.getActionView();
        if (actionView == null || iVar.m36558f()) {
            actionView = super.mo36646a(iVar, view, viewGroup);
        }
        actionView.setVisibility(iVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0636b, p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36525a(Context context, C0647g gVar) {
        super.mo36525a(context, gVar);
        Resources resources = context.getResources();
        C0621a a = C0621a.m36710a(context);
        if (!this.f466m) {
            this.f465l = a.m36704g();
        }
        if (!this.f472s) {
            this.f467n = a.m36709b();
        }
        if (!this.f470q) {
            this.f469p = a.m36708c();
        }
        int i = this.f467n;
        if (this.f465l) {
            if (this.f462i == null) {
                C0118d dVar = new C0118d(this.f3163a);
                this.f462i = dVar;
                if (this.f464k) {
                    dVar.setImageDrawable(this.f463j);
                    this.f463j = null;
                    this.f464k = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f462i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f462i.getMeasuredWidth();
        } else {
            this.f462i = null;
        }
        this.f468o = i;
        this.f474u = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    /* renamed from: a */
    public void m39066a(Configuration configuration) {
        if (!this.f470q) {
            this.f469p = C0621a.m36710a(this.f3164b).m36708c();
        }
        C0647g gVar = this.f3165c;
        if (gVar != null) {
            gVar.m36595c(true);
        }
    }

    /* renamed from: a */
    public void m39065a(Drawable drawable) {
        C0118d dVar = this.f462i;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
            return;
        }
        this.f464k = true;
        this.f463j = drawable;
    }

    /* renamed from: a */
    public void m39062a(ActionMenuView actionMenuView) {
        this.f3170h = actionMenuView;
        actionMenuView.mo36520a(this.f3165c);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0636b, p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36512a(C0647g gVar, boolean z) {
        m39060c();
        super.mo36512a(gVar, z);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0636b
    /* renamed from: a */
    public void mo36645a(C0651i iVar, AbstractC0664n.AbstractC0665a aVar) {
        aVar.mo36519a(iVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f3170h);
        if (this.f479z == null) {
            this.f479z = new C0116b();
        }
        actionMenuItemView.setPopupCallback(this.f479z);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0636b, p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36509a(boolean z) {
        super.mo36509a(z);
        ((View) this.f3170h).requestLayout();
        C0647g gVar = this.f3165c;
        if (gVar != null) {
            ArrayList<C0651i> c = gVar.m36598c();
            int size = c.size();
            for (int i = 0; i < size; i++) {
                AbstractC0952b a = c.get(i).mo35505a();
                if (a != null) {
                    a.m35429a(this);
                }
            }
        }
        C0647g gVar2 = this.f3165c;
        ArrayList<C0651i> j = gVar2 != null ? gVar2.m36583j() : null;
        boolean z2 = false;
        if (this.f465l) {
            z2 = false;
            if (j != null) {
                int size2 = j.size();
                if (size2 == 1) {
                    z2 = !j.get(0).isActionViewExpanded();
                } else {
                    z2 = false;
                    if (size2 > 0) {
                        z2 = true;
                    }
                }
            }
        }
        if (z2) {
            if (this.f462i == null) {
                this.f462i = new C0118d(this.f3163a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f462i.getParent();
            if (viewGroup != this.f3170h) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f462i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f3170h;
                actionMenuView.addView(this.f462i, actionMenuView.m39042d());
            }
        } else {
            C0118d dVar = this.f462i;
            if (dVar != null) {
                ViewParent parent = dVar.getParent();
                AbstractC0664n nVar = this.f3170h;
                if (parent == nVar) {
                    ((ViewGroup) nVar).removeView(this.f462i);
                }
            }
        }
        ((ActionMenuView) this.f3170h).setOverflowReserved(this.f465l);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0636b
    /* renamed from: a */
    public boolean mo36650a(int i, C0651i iVar) {
        return iVar.m36556h();
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0636b
    /* renamed from: a */
    public boolean mo36647a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f462i) {
            return false;
        }
        return super.mo36647a(viewGroup, i);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0636b, p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public boolean mo36510a(SubMenuC0671r rVar) {
        boolean z = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        SubMenuC0671r rVar2 = rVar;
        while (rVar2.m36492t() != this.f3165c) {
            rVar2 = (SubMenuC0671r) rVar2.m36492t();
        }
        View a = m39064a(rVar2.getItem());
        if (a == null) {
            return false;
        }
        rVar.getItem().getItemId();
        int size = rVar.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = rVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        C0115a aVar = new C0115a(this.f3164b, rVar, a);
        this.f477x = aVar;
        aVar.m36532a(z);
        this.f477x.m36527f();
        super.mo36510a(rVar);
        return true;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0636b
    /* renamed from: b */
    public AbstractC0664n mo36644b(ViewGroup viewGroup) {
        AbstractC0664n nVar = this.f3170h;
        AbstractC0664n b = super.mo36644b(viewGroup);
        if (nVar != b) {
            ((ActionMenuView) b).setPresenter(this);
        }
        return b;
    }

    @Override // p012b.p042i.p054p.AbstractC0952b.AbstractC0953a
    /* renamed from: b */
    public void mo35421b(boolean z) {
        if (z) {
            super.mo36510a((SubMenuC0671r) null);
            return;
        }
        C0647g gVar = this.f3165c;
        if (gVar != null) {
            gVar.m36604a(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
        if ((r18 + r17) > r11) goto L_0x00b6;
     */
    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo36508b() {
        /*
            Method dump skipped, instructions count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.mo36508b():boolean");
    }

    /* renamed from: c */
    public void m39058c(boolean z) {
        this.f473t = z;
    }

    /* renamed from: c */
    public boolean m39060c() {
        return m39054e() | m39052f();
    }

    /* renamed from: d */
    public Drawable m39057d() {
        C0118d dVar = this.f462i;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.f464k) {
            return this.f463j;
        }
        return null;
    }

    /* renamed from: d */
    public void m39055d(boolean z) {
        this.f465l = z;
        this.f466m = true;
    }

    /* renamed from: e */
    public boolean m39054e() {
        AbstractC0664n nVar;
        RunnableC0117c cVar = this.f478y;
        if (cVar == null || (nVar = this.f3170h) == null) {
            C0120e eVar = this.f476w;
            if (eVar == null) {
                return false;
            }
            eVar.m36531b();
            return true;
        }
        ((View) nVar).removeCallbacks(cVar);
        this.f478y = null;
        return true;
    }

    /* renamed from: f */
    public boolean m39052f() {
        C0115a aVar = this.f477x;
        if (aVar == null) {
            return false;
        }
        aVar.m36531b();
        return true;
    }

    /* renamed from: g */
    public boolean m39050g() {
        return this.f478y != null || m39048h();
    }

    /* renamed from: h */
    public boolean m39048h() {
        C0120e eVar = this.f476w;
        return eVar != null && eVar.m36529d();
    }

    /* renamed from: i */
    public boolean m39047i() {
        C0647g gVar;
        if (!this.f465l || m39048h() || (gVar = this.f3165c) == null || this.f3170h == null || this.f478y != null || gVar.m36583j().isEmpty()) {
            return false;
        }
        RunnableC0117c cVar = new RunnableC0117c(new C0120e(this.f3164b, this.f3165c, this.f462i, true));
        this.f478y = cVar;
        ((View) this.f3170h).post(cVar);
        return true;
    }
}
