package gogolook.callgogolook2.search.views.view;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/LabelViewHolder.class */
public class LabelViewHolder extends RecyclerView.ViewHolder {
    @Nullable
    @BindView(R$id.rl_item)
    public RelativeLayout itemContainer;
    @Nullable
    @BindView(R$id.tv_title)
    public TextView title;

    public LabelViewHolder(View view) {
        super(view);
        ButterKnife.bind(this, view);
    }
}
