package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.ActionBar;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/NavItemSelectedListener.class */
class NavItemSelectedListener implements AdapterView.OnItemSelectedListener {

    /* renamed from: f */
    private final ActionBar.OnNavigationListener f272f;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ActionBar.OnNavigationListener onNavigationListener = this.f272f;
        if (onNavigationListener != null) {
            onNavigationListener.m22322a(i, j);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
