package carbon.beta;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
/* loaded from: classes-dex2jar.jar:carbon/beta/MarshmallowEditText$c.class */
public class MarshmallowEditText$c implements ActionMode.Callback {

    /* renamed from: a */
    public final /* synthetic */ ActionMode.Callback f2234a;

    /* renamed from: b */
    public final /* synthetic */ MarshmallowEditText f2235b;

    public MarshmallowEditText$c(MarshmallowEditText marshmallowEditText, ActionMode.Callback callback) {
        this.f2235b = marshmallowEditText;
        this.f2234a = callback;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f2234a.onActionItemClicked(actionMode, menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        this.f2234a.onCreateActionMode(actionMode, menu);
        MarshmallowEditText.L(this.f2235b, menu);
        menu.clear();
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.f2234a.onDestroyActionMode(actionMode);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        MarshmallowEditText.K(this.f2235b);
        return true;
    }
}
