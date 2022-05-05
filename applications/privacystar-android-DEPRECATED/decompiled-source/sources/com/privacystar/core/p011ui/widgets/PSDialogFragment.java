package com.privacystar.core.p011ui.widgets;

import android.support.p004v7.app.AppCompatDialogFragment;
import com.privacystar.core.PSApplication;
import com.privacystar.core.util.PermissionUtils;
import io.realm.Realm;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.widgets.PSDialogFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/PSDialogFragment.class */
public abstract class PSDialogFragment extends AppCompatDialogFragment {
    private Realm realm;

    /* JADX INFO: Access modifiers changed from: protected */
    public Realm getRealm() {
        if (this.realm == null || this.realm.isClosed()) {
            this.realm = Realm.getDefaultInstance();
        }
        return this.realm;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.realm = getRealm();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onStop() {
        if (this.realm != null && !this.realm.isClosed()) {
            this.realm.close();
        }
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean restartAppIfPermissionsMissing() {
        if (PermissionUtils.hasGeneralPermissions(PSApplication.context())) {
            return false;
        }
        Timber.m37d("Received PermissionResult without calling it - permissions must have changed by user.", new Object[0]);
        return true;
    }
}
