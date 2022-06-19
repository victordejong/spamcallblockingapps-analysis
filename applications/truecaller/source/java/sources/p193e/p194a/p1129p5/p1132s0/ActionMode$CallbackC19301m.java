package p193e.p194a.p1129p5.p1132s0;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.p5.s0.m */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/m.class */
public final class ActionMode$CallbackC19301m implements ActionMode.Callback {
    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        l.e(actionMode, AnalyticsConstants.MODE);
        l.e(menuItem, "item");
        return false;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        l.e(actionMode, AnalyticsConstants.MODE);
        l.e(menu, "menu");
        return false;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        l.e(actionMode, AnalyticsConstants.MODE);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        l.e(actionMode, AnalyticsConstants.MODE);
        l.e(menu, "menu");
        return false;
    }
}
