package com.callerid.block.mvc.controller;

import android.content.Intent;
import android.os.AsyncTask;
import com.callerid.block.bean.SearchHis;
import d.p.a.a;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$o.class */
class EZSearchNumberActivity$o extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    WeakReference<EZSearchNumberActivity> f4647a;

    EZSearchNumberActivity$o(EZSearchNumberActivity eZSearchNumberActivity) {
        this.f4647a = new WeakReference<>(eZSearchNumberActivity);
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        EZSearchNumberActivity eZSearchNumberActivity = this.f4647a.get();
        if (eZSearchNumberActivity != null) {
            try {
                if (EZSearchNumberActivity.l0(eZSearchNumberActivity) == null) {
                    return null;
                }
                EZSearchNumberActivity.l0(eZSearchNumberActivity).deleteAll(SearchHis.class);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void onPostExecute(Void r4) {
        super.onPostExecute(r4);
        EZSearchNumberActivity eZSearchNumberActivity = this.f4647a.get();
        if (eZSearchNumberActivity != null) {
            EZSearchNumberActivity.T(eZSearchNumberActivity);
            Intent intent = new Intent();
            intent.setAction("com.callerid.block.INIT_HISTORY");
            a.b(eZSearchNumberActivity).d(intent);
        }
    }
}
