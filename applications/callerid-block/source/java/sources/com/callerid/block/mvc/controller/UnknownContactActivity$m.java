package com.callerid.block.mvc.controller;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.widget.Toast;
import com.callerid.block.R$anim;
import com.callerid.block.R$string;
import com.callerid.block.util.C1227w;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/UnknownContactActivity$m.class */
public class UnknownContactActivity$m extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    WeakReference<UnknownContactActivity> f4727a;

    /* renamed from: com.callerid.block.mvc.controller.UnknownContactActivity$m$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/UnknownContactActivity$m$a.class */
    public class RunnableC1112a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ UnknownContactActivity f4728b;

        RunnableC1112a(UnknownContactActivity$m unknownContactActivity$m, UnknownContactActivity unknownContactActivity) {
            this.f4728b = unknownContactActivity;
        }

        @Override // java.lang.Runnable
        public void run() {
            UnknownContactActivity unknownContactActivity = this.f4728b;
            Toast.makeText((Context) unknownContactActivity, (CharSequence) unknownContactActivity.getResources().getString(R$string.delete_success), 0).show();
            Intent intent = new Intent();
            intent.setAction("com.callerid.block.RELOAD_DATA_VEST");
            this.f4728b.sendOrderedBroadcast(intent, null);
            this.f4728b.finish();
            this.f4728b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    UnknownContactActivity$m(UnknownContactActivity unknownContactActivity) {
        this.f4727a = new WeakReference<>(unknownContactActivity);
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        UnknownContactActivity unknownContactActivity = this.f4727a.get();
        if (unknownContactActivity != null) {
            try {
                Uri parse = Uri.parse("content://com.android.contacts/data");
                Uri parse2 = Uri.parse("content://com.android.contacts/raw_contacts");
                ContentResolver contentResolver = unknownContactActivity.getContentResolver();
                contentResolver.delete(parse2, "display_name=?", new String[]{UnknownContactActivity.o0(unknownContactActivity).m10047n()});
                contentResolver.delete(parse, "raw_contact_id=?", new String[]{UnknownContactActivity.o0(unknownContactActivity).m10036t() + ""});
                contentResolver.delete(parse, "data1=?", new String[]{UnknownContactActivity.o0(unknownContactActivity).m10047n()});
                C1227w.m9527a("sunny", "删除时的id:" + UnknownContactActivity.o0(unknownContactActivity).m10036t());
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void onPostExecute(Void r7) {
        super.onPostExecute(r7);
        UnknownContactActivity unknownContactActivity = this.f4727a.get();
        if (unknownContactActivity != null) {
            new Handler().postDelayed(new RunnableC1112a(this, unknownContactActivity), 300L);
        }
    }
}
