package com.callapp.contacts.popup.contact;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseArrayAdapter;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.model.widget.WidgetMetaData;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterGridView.class */
public class AdapterGridView extends BaseArrayAdapter<WidgetMetaData> {

    /* renamed from: a  reason: collision with root package name */
    private onActionClickedListener f15405a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder.class */
    class GridViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f15408a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f15409b;

        /* renamed from: c  reason: collision with root package name */
        ViewGroup f15410c;

        private GridViewHolder() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener.class */
    public interface onActionClickedListener {
        void a(Action action);
    }

    public AdapterGridView(List<WidgetMetaData> list, onActionClickedListener onactionclickedlistener) {
        super(list);
        this.f15405a = onactionclickedlistener;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    public final View a(View view, int i) {
        GridViewHolder gridViewHolder = new GridViewHolder();
        gridViewHolder.f15408a = (TextView) view.findViewById(2131361936);
        gridViewHolder.f15409b = (ImageView) view.findViewById(2131361935);
        gridViewHolder.f15410c = (ViewGroup) view.findViewById(2131361934);
        view.setTag(gridViewHolder);
        return view;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    public final /* synthetic */ void a(View view, int i, WidgetMetaData widgetMetaData) {
        final WidgetMetaData widgetMetaData2 = widgetMetaData;
        GridViewHolder gridViewHolder = (GridViewHolder) view.getTag();
        if (widgetMetaData2 != null) {
            if (StringUtils.b((CharSequence) widgetMetaData2.label)) {
                gridViewHolder.f15408a.setText(widgetMetaData2.label);
                gridViewHolder.f15408a.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100108));
            }
            new GlideUtils.GlideRequestBuilder(gridViewHolder.f15409b, widgetMetaData2.primaryIconResId, getContext()).d();
            gridViewHolder.f15410c.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.AdapterGridView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (AdapterGridView.this.f15405a != null) {
                        AdapterGridView.this.f15405a.a(ActionsManager.get().a(widgetMetaData2.key));
                    }
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    public int getLayoutResourceId(int i) {
        return 2131558432;
    }
}
