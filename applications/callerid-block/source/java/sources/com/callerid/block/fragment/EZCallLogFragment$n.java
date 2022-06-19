package com.callerid.block.fragment;

import android.os.AsyncTask;
import com.callerid.block.search.CallLogBean;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$n.class */
class EZCallLogFragment$n extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    private WeakReference<EZCallLogFragment> f4342a;

    EZCallLogFragment$n(EZCallLogFragment eZCallLogFragment) {
        this.f4342a = new WeakReference<>(eZCallLogFragment);
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        try {
            EZCallLogFragment eZCallLogFragment = this.f4342a.get();
            if (eZCallLogFragment == null || EZCallLogFragment.E1(eZCallLogFragment) == null || EZCallLogFragment.E1(eZCallLogFragment).size() <= 0 || EZCallLogFragment.k2(eZCallLogFragment) == null) {
                return null;
            }
            for (CallLogBean callLogBean : EZCallLogFragment.E1(eZCallLogFragment)) {
                callLogBean.m10028x0(false);
            }
            EZCallLogFragment.k2(eZCallLogFragment).clear();
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public void onPostExecute(Void r4) {
        super.onPostExecute(r4);
        EZCallLogFragment eZCallLogFragment = this.f4342a.get();
        if (eZCallLogFragment != null) {
            EZCallLogFragment.G1(eZCallLogFragment).notifyDataSetChanged();
        }
    }
}
