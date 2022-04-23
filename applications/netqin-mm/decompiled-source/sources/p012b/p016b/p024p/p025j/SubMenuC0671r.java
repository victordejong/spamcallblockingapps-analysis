package p012b.p016b.p024p.p025j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p012b.p016b.p024p.p025j.C0647g;
/* renamed from: b.b.p.j.r */
/* loaded from: classes-dex2jar.jar:b/b/p/j/r.class */
public class SubMenuC0671r extends C0647g implements SubMenu {

    /* renamed from: B */
    public C0647g f3339B;

    /* renamed from: C */
    public C0651i f3340C;

    public SubMenuC0671r(Context context, C0647g gVar, C0651i iVar) {
        super(context);
        this.f3339B = gVar;
        this.f3340C = iVar;
    }

    @Override // p012b.p016b.p024p.p025j.C0647g
    /* renamed from: a */
    public void mo36501a(C0647g.AbstractC0648a aVar) {
        this.f3339B.mo36501a(aVar);
    }

    @Override // p012b.p016b.p024p.p025j.C0647g
    /* renamed from: a */
    public boolean mo36500a(C0647g gVar, MenuItem menuItem) {
        return super.mo36500a(gVar, menuItem) || this.f3339B.mo36500a(gVar, menuItem);
    }

    @Override // p012b.p016b.p024p.p025j.C0647g
    /* renamed from: a */
    public boolean mo36499a(C0651i iVar) {
        return this.f3339B.mo36499a(iVar);
    }

    @Override // p012b.p016b.p024p.p025j.C0647g
    /* renamed from: b */
    public boolean mo36498b(C0651i iVar) {
        return this.f3339B.mo36498b(iVar);
    }

    @Override // p012b.p016b.p024p.p025j.C0647g
    /* renamed from: d */
    public String mo36497d() {
        C0651i iVar = this.f3340C;
        int itemId = iVar != null ? iVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.mo36497d() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f3340C;
    }

    @Override // p012b.p016b.p024p.p025j.C0647g
    /* renamed from: m */
    public C0647g mo36496m() {
        return this.f3339B.mo36496m();
    }

    @Override // p012b.p016b.p024p.p025j.C0647g
    /* renamed from: o */
    public boolean mo36495o() {
        return this.f3339B.mo36495o();
    }

    @Override // p012b.p016b.p024p.p025j.C0647g
    /* renamed from: p */
    public boolean mo36494p() {
        return this.f3339B.mo36494p();
    }

    @Override // p012b.p016b.p024p.p025j.C0647g
    /* renamed from: q */
    public boolean mo36493q() {
        return this.f3339B.mo36493q();
    }

    @Override // p012b.p016b.p024p.p025j.C0647g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f3339B.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        super.m36594d(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        super.m36616a(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        super.m36590e(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        super.m36607a(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        super.m36611a(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f3340C.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f3340C.setIcon(drawable);
        return this;
    }

    @Override // p012b.p016b.p024p.p025j.C0647g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f3339B.setQwertyMode(z);
    }

    /* renamed from: t */
    public Menu m36492t() {
        return this.f3339B;
    }
}
