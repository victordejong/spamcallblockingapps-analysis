package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import p1727n3.p1734b.p1741e.p1742i.C25468f;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1741e.p1742i.C25473i;
/* renamed from: n3.b.f.d0$a */
/* loaded from: classes-dex2jar.jar:n3/b/f/d0$a.class */
public class d0$a extends C25555x {

    /* renamed from: n */
    public final int f71359n;

    /* renamed from: o */
    public final int f71360o;

    /* renamed from: p */
    public AbstractC25500c0 f71361p;

    /* renamed from: q */
    public MenuItem f71362q;

    public d0$a(Context context, boolean z) {
        super(context, z);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.f71359n = 21;
            this.f71360o = 22;
            return;
        }
        this.f71359n = 22;
        this.f71360o = 21;
    }

    @Override // p1727n3.p1734b.p1743f.C25555x, android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i;
        C25468f c25468f;
        if (this.f71361p != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i = headerViewListAdapter.getHeadersCount();
                c25468f = (C25468f) headerViewListAdapter.getWrappedAdapter();
            } else {
                i = 0;
                c25468f = (C25468f) adapter;
            }
            C25473i c25473i = null;
            if (motionEvent.getAction() != 10) {
                int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                c25473i = null;
                if (pointToPosition != -1) {
                    int i2 = pointToPosition - i;
                    c25473i = null;
                    if (i2 >= 0) {
                        c25473i = null;
                        if (i2 < c25468f.getCount()) {
                            c25473i = c25468f.getItem(i2);
                        }
                    }
                }
            }
            MenuItem menuItem = this.f71362q;
            if (menuItem != c25473i) {
                C25469g c25469g = c25468f.f71209a;
                if (menuItem != null) {
                    this.f71361p.mo3383g(c25469g, menuItem);
                }
                this.f71362q = c25473i;
                if (c25473i != null) {
                    this.f71361p.mo3384a(c25469g, c25473i);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.f71359n) {
            if (!listMenuItemView.isEnabled() || !listMenuItemView.getItemData().hasSubMenu()) {
                return true;
            }
            performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            return true;
        } else if (listMenuItemView == null || i != this.f71360o) {
            return super.onKeyDown(i, keyEvent);
        } else {
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (C25468f) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (C25468f) adapter).f71209a.m3481c(false);
            return true;
        }
    }

    public void setHoverListener(AbstractC25500c0 abstractC25500c0) {
        this.f71361p = abstractC25500c0;
    }

    @Override // p1727n3.p1734b.p1743f.C25555x, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
