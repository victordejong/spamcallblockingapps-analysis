package com.telguarder.features.settings;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.TextView;
import com.telguarder.C2083R;
import com.telguarder.features.phoneCallWidget.CallWidgetLocation;
import com.telguarder.helpers.p022ui.BOAdapter;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/settings/SettingsLocationSpinnerAdapter.class */
public class SettingsLocationSpinnerAdapter extends BOAdapter<CallWidgetLocation> {
    private LayoutInflater mInflater;

    public SettingsLocationSpinnerAdapter(Context context, List<CallWidgetLocation> list) {
        super(context, null, list, C2083R.layout.spinner_item_settings_with_title);
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.mInflater.inflate(C2083R.layout.spinner_item_settings_dropdown, viewGroup, false);
        }
        ((CheckedTextView) view2.findViewById(C2083R.C2086id.custom_spinner_dropdown_title)).setText(CallWidgetLocation.getDisplayName(view2.getContext(), getItem(i)));
        return view2;
    }

    public void getItemDisplayed(View view, CallWidgetLocation callWidgetLocation, int i) {
        ((TextView) view.findViewById(C2083R.C2086id.report_spinner_adapter_selected_item)).setText(CallWidgetLocation.getDisplayName(view.getContext(), callWidgetLocation));
    }
}
