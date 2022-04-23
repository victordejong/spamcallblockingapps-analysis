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

    /* renamed from: a  reason: collision with root package name */
    private final List<WidgetMetaData> f15300a;

    /* renamed from: b  reason: collision with root package name */
    private final LayoutInflater f15301b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ActionSelectAdapter$ViewHolder.class */
    static final class ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f15302a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f15303b;

        private ViewHolder() {
        }
    }

    public ActionSelectAdapter(Activity activity, List<WidgetMetaData> list) {
        this.f15300a = list;
        this.f15301b = activity.getLayoutInflater();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f15300a.size();
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
            view = this.f15301b.inflate(2131558570, viewGroup, false);
            viewHolder = new ViewHolder();
            viewHolder.f15302a = (TextView) view.findViewById(2131363156);
            viewHolder.f15302a.setTextColor(ThemeUtils.getColor(2131100140));
            viewHolder.f15303b = (ImageView) view.findViewById(2131363179);
            ViewUtils.a(view, ThemeUtils.getDrawable(2131230995));
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        WidgetMetaData widgetMetaData = this.f15300a.get(i);
        viewHolder.f15302a.setText(widgetMetaData.label);
        ImageUtils.a(viewHolder.f15303b, widgetMetaData.menuResId, new PorterDuffColorFilter(ThemeUtils.getColor(2131099783), PorterDuff.Mode.SRC_IN));
        return view;
    }
}
