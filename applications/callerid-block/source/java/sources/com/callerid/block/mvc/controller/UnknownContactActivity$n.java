package com.callerid.block.mvc.controller;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1216t0;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/UnknownContactActivity$n.class */
class UnknownContactActivity$n extends AsyncTask<Void, Void, Bitmap> {

    /* renamed from: a */
    WeakReference<UnknownContactActivity> f4729a;

    UnknownContactActivity$n(UnknownContactActivity unknownContactActivity) {
        this.f4729a = new WeakReference<>(unknownContactActivity);
    }

    /* renamed from: a */
    public Bitmap doInBackground(Void... voidArr) {
        UnknownContactActivity unknownContactActivity = this.f4729a.get();
        if (unknownContactActivity != null) {
            return C1216t0.m9602J(EZCallApplication.m10163c(), UnknownContactActivity.o0(unknownContactActivity).m10045o());
        }
        return null;
    }

    /* renamed from: b */
    public void onPostExecute(Bitmap bitmap) {
        super.onPostExecute(bitmap);
        UnknownContactActivity unknownContactActivity = this.f4729a.get();
        if (unknownContactActivity == null || bitmap == null) {
            return;
        }
        UnknownContactActivity.f0(unknownContactActivity).setImageBitmap(bitmap);
    }
}
