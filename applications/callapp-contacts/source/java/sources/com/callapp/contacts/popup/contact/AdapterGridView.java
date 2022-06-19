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

    /* renamed from: a */
    private onActionClickedListener f26988a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder.class */
    class GridViewHolder {

        /* renamed from: a */
        TextView f26991a;

        /* renamed from: b */
        ImageView f26992b;

        /* renamed from: c */
        ViewGroup f26993c;

        private GridViewHolder() {
            AdapterGridView.this = r4;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener.class */
    public interface onActionClickedListener {
        /* renamed from: a */
        void mo28013a(Action action);
    }

    public AdapterGridView(List<WidgetMetaData> list, onActionClickedListener onactionclickedlistener) {
        super(list);
        this.f26988a = onactionclickedlistener;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    /* renamed from: a */
    public final View mo28016a(View view, int i) {
        GridViewHolder gridViewHolder = new GridViewHolder();
        gridViewHolder.f26991a = (TextView) view.findViewById(2131361936);
        gridViewHolder.f26992b = (ImageView) view.findViewById(2131361935);
        gridViewHolder.f26993c = (ViewGroup) view.findViewById(2131361934);
        view.setTag(gridViewHolder);
        return view;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo28015a(View view, int i, WidgetMetaData widgetMetaData) {
        final WidgetMetaData widgetMetaData2 = widgetMetaData;
        GridViewHolder gridViewHolder = (GridViewHolder) view.getTag();
        if (widgetMetaData2 != null) {
            if (StringUtils.m26045b((CharSequence) widgetMetaData2.label)) {
                gridViewHolder.f26991a.setText(widgetMetaData2.label);
                gridViewHolder.f26991a.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100108));
            }
            new GlideUtils.GlideRequestBuilder(gridViewHolder.f26992b, widgetMetaData2.primaryIconResId, getContext()).m27013d();
            gridViewHolder.f26993c.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.AdapterGridView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (AdapterGridView.this.f26988a != null) {
                        AdapterGridView.this.f26988a.mo28013a(ActionsManager.get().m28765a(widgetMetaData2.key));
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
