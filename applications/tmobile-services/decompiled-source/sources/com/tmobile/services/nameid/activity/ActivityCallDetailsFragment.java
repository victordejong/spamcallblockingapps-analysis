package com.tmobile.services.nameid.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.model.CallerDetailsData;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityCallDetailsFragment.class */
public class ActivityCallDetailsFragment extends CallerDetailsFragment implements TabFragmentInterface {
    @Override // com.tmobile.services.nameid.TabFragmentInterface
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.ACTIVITY;
    }

    @Override // com.tmobile.services.nameid.activity.CallerDetailsFragment
    /* renamed from: I0 */
    public void mo6910I0() {
        super.mo6910I0();
        MainApplication.m7543M(false);
    }

    @Override // com.tmobile.services.nameid.activity.CallerDetailsFragment
    /* renamed from: K0 */
    public String mo6909K0() {
        MainActivity mainActivity = (MainActivity) getContext();
        return (!isAdded() || mainActivity == null) ? "" : mainActivity.m7566u(true);
    }

    @Override // com.tmobile.services.nameid.activity.CallerDetailsFragment
    /* renamed from: P0 */
    public CallerDetailsData mo6908P0() {
        MainActivity mainActivity = (MainActivity) getContext();
        if (!isAdded() || mainActivity == null) {
            return null;
        }
        return mainActivity.m7570s();
    }

    @Override // com.tmobile.services.nameid.activity.CallerDetailsFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        MainApplication.m7543M(true);
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }
}
