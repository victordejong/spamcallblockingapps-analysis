package com.callapp.contacts.popup;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.model.widget.WidgetMetaData;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ActionSelectAdapter.class */
public class ActionSelectAdapter extends BaseAdapter {

    /* renamed from: a */
    private final List<WidgetMetaData> f26856a;

    /* renamed from: b */
    private final LayoutInflater f26857b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ActionSelectAdapter$ViewHolder.class */
    static final class ViewHolder {

        /* renamed from: a */
        private TextView f26858a;

        /* renamed from: b */
        private ImageView f26859b;

        private ViewHolder() {
        }
    }

    public ActionSelectAdapter(Activity activity, List<WidgetMetaData> list) {
        this.f26856a = list;
        this.f26857b = activity.getLayoutInflater();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f26856a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = this.f26857b.inflate(2131558570, viewGroup, false);
            viewHolder = new ViewHolder();
            viewHolder.f26858a = (TextView) view.findViewById(2131363156);
            viewHolder.f26858a.setTextColor(ThemeUtils.getColor(2131100140));
            viewHolder.f26859b = (ImageView) view.findViewById(2131363179);
            ViewUtils.m27320a(view, ThemeUtils.getDrawable(2131230995));
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        WidgetMetaData widgetMetaData = this.f26856a.get(i);
        viewHolder.f26858a.setText(widgetMetaData.label);
        ImageUtils.m27529a(viewHolder.f26859b, widgetMetaData.menuResId, new PorterDuffColorFilter(ThemeUtils.getColor(2131099783), PorterDuff.Mode.SRC_IN));
        return view;
    }
}
