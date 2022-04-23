package com.callerid.block.mvc.controller;

import android.database.Cursor;
import android.os.AsyncTask;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZDialActivity$f.class */
public class EZDialActivity$f extends AsyncTask<Object, Void, Object> {

    /* renamed from: a */
    String f4633a;

    /* renamed from: b */
    WeakReference<EZDialActivity> f4634b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EZDialActivity$f(EZDialActivity eZDialActivity, String str) {
        this.f4634b = new WeakReference<>(eZDialActivity);
        this.f4633a = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Cursor doInBackground(Object[] objArr) {
        EZDialActivity eZDialActivity = this.f4634b.get();
        Cursor cursor = null;
        if (eZDialActivity != null) {
            try {
                cursor = EZDialActivity.X(eZDialActivity).recalculate(this.f4633a, EZDialActivity.c0());
            } catch (Exception e) {
                e.printStackTrace();
                cursor = null;
            }
        }
        return cursor;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        EZDialActivity eZDialActivity = this.f4634b.get();
        if (eZDialActivity != null) {
            EZDialActivity.d0(eZDialActivity, (Cursor) obj);
        }
    }
}
