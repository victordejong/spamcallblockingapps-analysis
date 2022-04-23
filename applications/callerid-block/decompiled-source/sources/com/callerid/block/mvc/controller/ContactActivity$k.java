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
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/ContactActivity$k.class */
public class ContactActivity$k extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    WeakReference<ContactActivity> f4614a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.mvc.controller.ContactActivity$k$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/ContactActivity$k$a.class */
    public class RunnableC1098a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ ContactActivity f4615b;

        RunnableC1098a(ContactActivity$k contactActivity$k, ContactActivity contactActivity) {
            this.f4615b = contactActivity;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContactActivity contactActivity = this.f4615b;
            Toast.makeText((Context) contactActivity, (CharSequence) contactActivity.getResources().getString(R$string.delete_success), 0).show();
            Intent intent = new Intent();
            intent.setAction("com.callerid.block.RELOAD_DATA_VEST");
            this.f4615b.sendOrderedBroadcast(intent, null);
            this.f4615b.finish();
            this.f4615b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    ContactActivity$k(ContactActivity contactActivity) {
        this.f4614a = new WeakReference<>(contactActivity);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        ContactActivity contactActivity = this.f4614a.get();
        if (contactActivity == null) {
            return null;
        }
        try {
            Uri parse = Uri.parse("content://com.android.contacts/data");
            Uri parse2 = Uri.parse("content://com.android.contacts/raw_contacts");
            ContentResolver contentResolver = contactActivity.getContentResolver();
            contentResolver.delete(parse2, "display_name=?", new String[]{ContactActivity.e0(contactActivity).m10047n()});
            contentResolver.delete(parse, "raw_contact_id=?", new String[]{ContactActivity.e0(contactActivity).m10036t() + ""});
            contentResolver.delete(parse, "data1=?", new String[]{ContactActivity.e0(contactActivity).m10047n()});
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void onPostExecute(Void r7) {
        super.onPostExecute(r7);
        ContactActivity contactActivity = this.f4614a.get();
        if (contactActivity != null) {
            ContactActivity.W(contactActivity).setVisibility(8);
            new Handler().postDelayed(new RunnableC1098a(this, contactActivity), 300L);
        }
    }
}
