package gogolook.callgogolook2.search.views.view;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/LabelViewHolder_ViewBinding.class */
public class LabelViewHolder_ViewBinding implements Unbinder {

    /* renamed from: a */
    public LabelViewHolder f12747a;

    @UiThread
    public LabelViewHolder_ViewBinding(LabelViewHolder labelViewHolder, View view) {
        this.f12747a = labelViewHolder;
        labelViewHolder.itemContainer = (RelativeLayout) Utils.findOptionalViewAsType(view, R$id.rl_item, "field 'itemContainer'", RelativeLayout.class);
        labelViewHolder.title = (TextView) Utils.findOptionalViewAsType(view, R$id.tv_title, "field 'title'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LabelViewHolder labelViewHolder = this.f12747a;
        if (labelViewHolder != null) {
            this.f12747a = null;
            labelViewHolder.itemContainer = null;
            labelViewHolder.title = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
