package com.callerid.block.mvc.controller;

import android.os.AsyncTask;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.SearchHis;
import com.lidroid.xutils.p086db.sqlite.Selector;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$u.class */
class EZSearchNumberActivity$u extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    WeakReference<EZSearchNumberActivity> f4691a;

    /* renamed from: b */
    String f4692b;

    EZSearchNumberActivity$u(EZSearchNumberActivity eZSearchNumberActivity, String str) {
        this.f4691a = new WeakReference<>(eZSearchNumberActivity);
        this.f4692b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        EZSearchNumberActivity eZSearchNumberActivity = this.f4691a.get();
        if (eZSearchNumberActivity == null) {
            return null;
        }
        try {
            if (((SearchHis) EZSearchNumberActivity.l0(eZSearchNumberActivity).findFirst(Selector.from(SearchHis.class).where(EZBlackList.NUMBER, "=", this.f4692b))) != null) {
                return null;
            }
            SearchHis searchHis = new SearchHis();
            searchHis.setNumber(this.f4692b);
            EZSearchNumberActivity.l0(eZSearchNumberActivity).saveOrUpdate(searchHis);
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void onPostExecute(Void r4) {
        super.onPostExecute(r4);
    }
}
