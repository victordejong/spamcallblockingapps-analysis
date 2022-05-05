package com.privacystar.core.p011ui.widgets;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.privacystar.core.C1566R;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.widgets.PermissionsInfoDialogFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/PermissionsInfoDialogFragment.class */
public class PermissionsInfoDialogFragment extends PSDialogFragment {
    @OnClick({C1566R.C1569id.dialog_close_button})
    public void onCancelClick() {
        Timber.m28v("Dismissing dialog.", new Object[0]);
        dismiss();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, 0);
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.permissions_info_dialog_fragment, viewGroup);
        ButterKnife.bind(this, inflate);
        return inflate;
    }
}
