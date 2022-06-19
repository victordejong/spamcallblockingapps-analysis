package carbon.beta;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
/* loaded from: classes-dex2jar.jar:carbon/beta/MarshmallowEditText$e.class */
public class MarshmallowEditText$e implements ActionMode.Callback {

    /* renamed from: a */
    public final /* synthetic */ MarshmallowEditText f2237a;

    public MarshmallowEditText$e(MarshmallowEditText marshmallowEditText) {
        this.f2237a = marshmallowEditText;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return false;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        MarshmallowEditText.L(this.f2237a, menu);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }
}
