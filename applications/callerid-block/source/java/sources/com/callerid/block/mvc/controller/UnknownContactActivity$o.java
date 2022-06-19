package com.callerid.block.mvc.controller;

import android.os.AsyncTask;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/UnknownContactActivity$o.class */
class UnknownContactActivity$o extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private int f4730a;

    /* renamed from: b */
    private int f4731b;

    /* renamed from: c */
    WeakReference<UnknownContactActivity> f4732c;

    UnknownContactActivity$o(UnknownContactActivity unknownContactActivity) {
        this.f4732c = new WeakReference<>(unknownContactActivity);
        this.f4730a = C1205p0.m9636a(unknownContactActivity, R$attr.colorPrimary, R$color.colorPrimary);
        this.f4731b = C1205p0.m9636a(unknownContactActivity, R$attr.colorPrimaryDark, R$color.colorPrimaryDark);
    }

    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        UnknownContactActivity unknownContactActivity = this.f4732c.get();
        if (unknownContactActivity != null) {
            String m9567j = C1216t0.m9567j(EZCallApplication.m10163c(), UnknownContactActivity.o0(unknownContactActivity).m10045o());
            C1227w.m9527a("getcontactname", "name:" + m9567j);
            return m9567j;
        }
        return null;
    }

    /* renamed from: b */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        UnknownContactActivity unknownContactActivity = this.f4732c.get();
        if (unknownContactActivity == null || str == null) {
            return;
        }
        UnknownContactActivity.Y(unknownContactActivity).setVisibility(0);
        UnknownContactActivity.Z(unknownContactActivity, true);
        UnknownContactActivity.a0(unknownContactActivity).setText(str);
        UnknownContactActivity.b0(unknownContactActivity).setVisibility(8);
        UnknownContactActivity.o0(unknownContactActivity).m10050l0(str);
        unknownContactActivity.H.setVisibility(0);
        C1216t0.m9578d0(unknownContactActivity, this.f4731b);
        UnknownContactActivity.c0(unknownContactActivity).setBackgroundColor(this.f4730a);
        UnknownContactActivity.d0(unknownContactActivity).setVisibility(8);
    }
}
