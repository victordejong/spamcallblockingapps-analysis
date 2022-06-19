package carbon.beta;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
/* loaded from: classes-dex2jar.jar:carbon/beta/MarshmallowEditText$b.class */
public class MarshmallowEditText$b implements ActionMode.Callback {

    /* renamed from: a */
    public final /* synthetic */ ActionMode.Callback f2232a;

    /* renamed from: b */
    public final /* synthetic */ MarshmallowEditText f2233b;

    public MarshmallowEditText$b(MarshmallowEditText marshmallowEditText, ActionMode.Callback callback) {
        this.f2233b = marshmallowEditText;
        this.f2232a = callback;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f2232a.onActionItemClicked(actionMode, menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.f2232a.onCreateActionMode(actionMode, menu);
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.f2233b.y0.dismiss();
        this.f2232a.onDestroyActionMode(actionMode);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return this.f2232a.onPrepareActionMode(actionMode, menu);
    }
}
