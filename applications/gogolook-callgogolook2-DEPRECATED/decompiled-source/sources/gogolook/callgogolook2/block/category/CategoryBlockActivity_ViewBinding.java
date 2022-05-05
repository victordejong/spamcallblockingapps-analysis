package gogolook.callgogolook2.block.category;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockActivity_ViewBinding.class */
public class CategoryBlockActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public CategoryBlockActivity f10711a;

    @UiThread
    public CategoryBlockActivity_ViewBinding(CategoryBlockActivity categoryBlockActivity, View view) {
        this.f10711a = categoryBlockActivity;
        categoryBlockActivity.mRvBlockLog = (RecyclerView) Utils.findRequiredViewAsType(view, R$id.rv_block_log, "field 'mRvBlockLog'", RecyclerView.class);
        categoryBlockActivity.mToolbar = (Toolbar) Utils.findRequiredViewAsType(view, 2131363304, "field 'mToolbar'", Toolbar.class);
        categoryBlockActivity.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.toolbar_title, "field 'mTvTitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CategoryBlockActivity categoryBlockActivity = this.f10711a;
        if (categoryBlockActivity != null) {
            this.f10711a = null;
            categoryBlockActivity.mRvBlockLog = null;
            categoryBlockActivity.mToolbar = null;
            categoryBlockActivity.mTvTitle = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
