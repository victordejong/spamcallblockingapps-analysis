package androidx.appcompat.widget;

import android.content.res.Resources;
import android.database.DataSetObserver;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d.class */
public class AppCompatSpinner$d implements ListAdapter, SpinnerAdapter {

    /* renamed from: a */
    public SpinnerAdapter f540a;

    /* renamed from: b */
    public ListAdapter f541b;

    public AppCompatSpinner$d(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
        this.f540a = spinnerAdapter;
        if (spinnerAdapter instanceof ListAdapter) {
            this.f541b = (ListAdapter) spinnerAdapter;
        }
        if (theme != null) {
            if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() == theme) {
                    return;
                }
                themedSpinnerAdapter.setDropDownViewTheme(theme);
            } else if (!(spinnerAdapter instanceof j2)) {
            } else {
                j2 j2Var = (j2) spinnerAdapter;
                if (j2Var.getDropDownViewTheme() != null) {
                    return;
                }
                j2Var.setDropDownViewTheme(theme);
            }
        }
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        ListAdapter listAdapter = this.f541b;
        if (listAdapter != null) {
            return listAdapter.areAllItemsEnabled();
        }
        return true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        SpinnerAdapter spinnerAdapter = this.f540a;
        return spinnerAdapter == null ? 0 : spinnerAdapter.getCount();
    }

    @Override // android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        SpinnerAdapter spinnerAdapter = this.f540a;
        return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        SpinnerAdapter spinnerAdapter = this.f540a;
        return spinnerAdapter == null ? null : spinnerAdapter.getItem(i);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // android.widget.Adapter
    public long getItemId(int i) {
        SpinnerAdapter spinnerAdapter = this.f540a;
        return spinnerAdapter == null ? (char) 65535 : spinnerAdapter.getItemId(i);
    }

    @Override // android.widget.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return getDropDownView(i, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public boolean hasStableIds() {
        SpinnerAdapter spinnerAdapter = this.f540a;
        return spinnerAdapter != null && spinnerAdapter.hasStableIds();
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        return getCount() == 0;
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int i) {
        ListAdapter listAdapter = this.f541b;
        if (listAdapter != null) {
            return listAdapter.isEnabled(i);
        }
        return true;
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f540a;
        if (spinnerAdapter != null) {
            spinnerAdapter.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f540a;
        if (spinnerAdapter != null) {
            spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
        }
    }
}
