package com.android.contacts;

import android.app.IntentService;
import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.util.CoverUtils;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/AttBuildInfoService.class */
public class AttBuildInfoService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    private SharedPreferences f432a;

    public AttBuildInfoService() {
        super("AttBuildInfoService");
        setIntentRedelivery(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x005d, code lost:
        r13 = r0.getInt(r0.getColumnIndex("_id"));
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:198:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() {
        /*
            Method dump skipped, instructions count: 970
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.AttBuildInfoService.a():void");
    }

    private static void a(ArrayList<ContentProviderOperation> arrayList, String str, String str2) {
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue(CoverUtils.CoverData.COVER_URI, str).withValue(CoverUtils.CoverData.COVER_TYPE, 0).withValue(CoverUtils.CoverData.USER_SET, str2).build());
    }

    private boolean a(String str, String str2, int i) {
        boolean z = false;
        ContentValues contentValues = new ContentValues();
        contentValues.put("mimetype", "vnd.android.cursor.item/phone_v2");
        contentValues.put("raw_contact_id", Integer.valueOf(i));
        contentValues.put(CoverUtils.CoverData.COVER_URI, str);
        contentValues.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 0);
        contentValues.put(CoverUtils.CoverData.USER_SET, str2);
        Uri insert = getContentResolver().insert(ContactsContract.Data.CONTENT_URI, contentValues);
        Log.d("AttBuildInfoService", "insertAttServicesPhoneNumber " + str2 + " : " + insert);
        if (insert != null) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x038a  */
    @Override // android.app.IntentService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onHandleIntent(android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 997
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.AttBuildInfoService.onHandleIntent(android.content.Intent):void");
    }
}
