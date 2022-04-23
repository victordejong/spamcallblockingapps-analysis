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
class AppCompatSpinner$d implements ListAdapter, SpinnerAdapter {

    /* renamed from: b */
    private SpinnerAdapter f397b;

    /* renamed from: c */
    private ListAdapter f398c;

    public AppCompatSpinner$d(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
        this.f397b = spinnerAdapter;
        if (spinnerAdapter instanceof ListAdapter) {
            this.f398c = (ListAdapter) spinnerAdapter;
        }
        if (theme == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
            ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
            if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                themedSpinnerAdapter.setDropDownViewTheme(theme);
            }
        } else if (spinnerAdapter instanceof AbstractC0162z) {
            AbstractC0162z zVar = (AbstractC0162z) spinnerAdapter;
            if (zVar.getDropDownViewTheme() == null) {
                zVar.setDropDownViewTheme(theme);
            }
        }
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        ListAdapter listAdapter = this.f398c;
        if (listAdapter != null) {
            return listAdapter.areAllItemsEnabled();
        }
        return true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        SpinnerAdapter spinnerAdapter = this.f397b;
        return spinnerAdapter == null ? 0 : spinnerAdapter.getCount();
    }

    @Override // android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        SpinnerAdapter spinnerAdapter = this.f397b;
        return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        SpinnerAdapter spinnerAdapter = this.f397b;
        return spinnerAdapter == null ? null : spinnerAdapter.getItem(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        SpinnerAdapter spinnerAdapter = this.f397b;
        return spinnerAdapter == null ? -1L : spinnerAdapter.getItemId(i);
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
        SpinnerAdapter spinnerAdapter = this.f397b;
        return spinnerAdapter != null && spinnerAdapter.hasStableIds();
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        return getCount() == 0;
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int i) {
        ListAdapter listAdapter = this.f398c;
        if (listAdapter != null) {
            return listAdapter.isEnabled(i);
        }
        return true;
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f397b;
        if (spinnerAdapter != null) {
            spinnerAdapter.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f397b;
        if (spinnerAdapter != null) {
            spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
        }
    }
}
