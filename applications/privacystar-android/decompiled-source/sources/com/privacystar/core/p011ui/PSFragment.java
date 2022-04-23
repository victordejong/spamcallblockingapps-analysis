package com.privacystar.core.p011ui;

import android.support.p001v4.app.Fragment;
import io.realm.Realm;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.PSFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/PSFragment.class */
public abstract class PSFragment extends Fragment {
    private Realm realm;

    /* JADX INFO: Access modifiers changed from: protected */
    public Realm getRealm() {
        if (this.realm == null || this.realm.isClosed()) {
            if (getActivity() instanceof PSActivity) {
                return ((PSActivity) getActivity()).getRealm();
            }
            Timber.m37d("Fragment requested a Realm instance: was not initialized AND parent not a PSActivity.", new Object[0]);
            this.realm = Realm.getDefaultInstance();
        }
        return this.realm;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.realm = Realm.getDefaultInstance();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.realm != null && !this.realm.isClosed() && !(getActivity() instanceof PSActivity)) {
            this.realm.close();
        }
    }
}
