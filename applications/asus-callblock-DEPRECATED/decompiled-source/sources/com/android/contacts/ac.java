package com.android.contacts;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.android.contacts.detail.ContactDetailLayoutController;
import com.android.contacts.util.CoverUtils;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ac.class */
public final class ac {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ac$a.class */
    public final class a extends AsyncTask<Long, Integer, String> {

        /* renamed from: a  reason: collision with root package name */
        Context f521a;

        /* renamed from: b  reason: collision with root package name */
        ContactDetailLayoutController f522b;

        public a(Context context) {
            this.f521a = context;
        }

        private String a(long j) {
            Cursor query = this.f521a.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id=" + j, null, null);
            String str = BuildConfig.FLAVOR;
            String str2 = str;
            if (query != null) {
                try {
                    query.moveToPrevious();
                    while (true) {
                        str2 = str;
                        if (!query.moveToNext()) {
                            break;
                        }
                        String stripSeparators = PhoneNumberUtils.stripSeparators(query.getString(query.getColumnIndex(CoverUtils.CoverData.COVER_URI)));
                        str = query.isFirst() ? str + stripSeparators : str + ";" + stripSeparators;
                    }
                } finally {
                    query.close();
                }
            }
            if (str2 != null && !TextUtils.isEmpty(str2)) {
                Intent intent = new Intent("com.asus.remove_blocklist");
                intent.putExtra("number", str2);
                this.f521a.sendBroadcast(intent);
            }
            return str2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(Long[] lArr) {
            return a(lArr[0].longValue());
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            if (this.f522b != null) {
                this.f522b.getCoverContainer().refreshQuickFavoriteAndBlock();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ac$b.class */
    public final class b extends AsyncTask<Long, Integer, String> {

        /* renamed from: a  reason: collision with root package name */
        Context f523a;

        /* renamed from: b  reason: collision with root package name */
        ContactDetailLayoutController f524b;

        public b(Context context) {
            this.f523a = context;
        }

        private String a(long j) {
            Cursor query = this.f523a.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id=" + j, null, null);
            String str = BuildConfig.FLAVOR;
            String str2 = str;
            if (query != null) {
                try {
                    query.moveToPrevious();
                    while (true) {
                        str2 = str;
                        if (!query.moveToNext()) {
                            break;
                        }
                        String stripSeparators = PhoneNumberUtils.stripSeparators(query.getString(query.getColumnIndex(CoverUtils.CoverData.COVER_URI)));
                        str = query.isFirst() ? str + stripSeparators : str + ";" + stripSeparators;
                    }
                } finally {
                    query.close();
                }
            }
            if (str2 != null && !TextUtils.isEmpty(str2)) {
                Intent intent = new Intent("com.asus.add_blocklist");
                intent.putExtra("number", str2);
                this.f523a.sendBroadcast(intent);
            }
            return str2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(Long[] lArr) {
            return a(lArr[0].longValue());
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            if (this.f524b != null) {
                this.f524b.getCoverContainer().refreshQuickFavoriteAndBlock();
            }
        }
    }
}
