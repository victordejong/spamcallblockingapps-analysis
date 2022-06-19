package com.callerid.block.fragment;

import android.os.AsyncTask;
import com.callerid.block.R$string;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.util.C1182i;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$q.class */
class EZInterceptFragment$q extends AsyncTask<Object, Void, Integer> {

    /* renamed from: a */
    WeakReference<EZInterceptFragment> f4363a;

    EZInterceptFragment$q(EZInterceptFragment eZInterceptFragment) {
        this.f4363a = new WeakReference<>(eZInterceptFragment);
    }

    /* renamed from: a */
    public Integer doInBackground(Object[] objArr) {
        List<EZBlackList> m9838e;
        EZInterceptFragment eZInterceptFragment = this.f4363a.get();
        return Integer.valueOf((eZInterceptFragment == null || (m9838e = new C1182i(EZInterceptFragment.G1(eZInterceptFragment)).m9838e()) == null) ? 0 : m9838e.size());
    }

    /* renamed from: b */
    public void onPostExecute(Integer num) {
        super.onPostExecute(num);
        EZInterceptFragment eZInterceptFragment = this.f4363a.get();
        if (eZInterceptFragment != null) {
            EZInterceptFragment.R1(eZInterceptFragment).setText(EZInterceptFragment.G1(eZInterceptFragment).getResources().getString(R$string.my_blocklist).replace("X", String.valueOf(num)));
        }
    }
}
