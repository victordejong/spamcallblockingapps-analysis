package gogolook.callgogolook2.block;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockActivity_ViewBinding.class */
public class DDDBlockActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public DDDBlockActivity f10680a;

    @UiThread
    public DDDBlockActivity_ViewBinding(DDDBlockActivity dDDBlockActivity, View view) {
        this.f10680a = dDDBlockActivity;
        dDDBlockActivity.rv_block_log = (RecyclerView) Utils.findRequiredViewAsType(view, R$id.rv_block_log, "field 'rv_block_log'", RecyclerView.class);
        dDDBlockActivity.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, 2131363304, "field 'toolbar'", Toolbar.class);
        dDDBlockActivity.tvTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.toolbar_title, "field 'tvTitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DDDBlockActivity dDDBlockActivity = this.f10680a;
        if (dDDBlockActivity != null) {
            this.f10680a = null;
            dDDBlockActivity.rv_block_log = null;
            dDDBlockActivity.toolbar = null;
            dDDBlockActivity.tvTitle = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
