package p081h.p093b.p097b.p098a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
/* renamed from: h.b.b.a.a */
/* loaded from: classes-dex2jar.jar:h/b/b/a/a.class */
public class C5576a {

    /* renamed from: b */
    public static final String f13919b = "a";

    /* renamed from: a */
    public final ContentResolver f13920a;

    /* renamed from: h.b.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:h/b/b/a/a$a.class */
    public static final class C5577a {

        /* renamed from: a */
        public static final Uri f13921a = Uri.withAppendedPath(ContactsContract.Data.CONTENT_URI, "usagefeedback");
    }

    public C5576a(Context context) {
        this.f13920a = context.getContentResolver();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public boolean m25120a(Collection<String> collection) {
        if (Log.isLoggable(f13919b, 3)) {
            String str = "updateWithAddress: " + Arrays.toString(collection.toArray());
        }
        if (collection == null || collection.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        String[] strArr = new String[collection.size()];
        arrayList.addAll(collection);
        Arrays.fill(strArr, "?");
        sb.append("data1 IN (");
        sb.append(TextUtils.join(",", strArr));
        sb.append(")");
        Cursor query = this.f13920a.query(ContactsContract.CommonDataKinds.Email.CONTENT_URI, new String[]{"contact_id", "_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null);
        if (query == null) {
            return false;
        }
        HashSet hashSet = new HashSet(query.getCount());
        HashSet hashSet2 = new HashSet(query.getCount());
        try {
            query.move(-1);
            while (query.moveToNext()) {
                hashSet.add(Long.valueOf(query.getLong(0)));
                hashSet2.add(Long.valueOf(query.getLong(1)));
            }
            query.close();
            return m25119a(hashSet, hashSet2, "long_text");
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    /* renamed from: a */
    public final boolean m25119a(Collection<Long> collection, Collection<Long> collection2, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 14) {
            if (collection2.isEmpty()) {
                Log.isLoggable(f13919b, 3);
            } else {
                if (this.f13920a.update(C5577a.f13921a.buildUpon().appendPath(TextUtils.join(",", collection2)).appendQueryParameter("type", str).build(), new ContentValues(), null, null) <= 0) {
                    if (Log.isLoggable(f13919b, 3)) {
                        String str2 = "update toward data rows " + collection2 + " failed";
                    }
                }
            }
            z = false;
        } else {
            if (collection.isEmpty()) {
                Log.isLoggable(f13919b, 3);
            } else {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                String[] strArr = new String[collection.size()];
                for (Long l : collection) {
                    arrayList.add(String.valueOf(l.longValue()));
                }
                Arrays.fill(strArr, "?");
                sb.append("_id IN (");
                sb.append(TextUtils.join(",", strArr));
                sb.append(")");
                if (Log.isLoggable(f13919b, 3)) {
                    String str3 = "contactId where: " + sb.toString();
                    String str4 = "contactId selection: " + arrayList;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("last_time_contacted", Long.valueOf(currentTimeMillis));
                if (this.f13920a.update(ContactsContract.Contacts.CONTENT_URI, contentValues, sb.toString(), (String[]) arrayList.toArray(new String[0])) <= 0) {
                    if (Log.isLoggable(f13919b, 3)) {
                        String str5 = "update toward raw contacts " + collection + " failed";
                    }
                }
            }
            z = false;
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public boolean m25118b(Collection<String> collection) {
        if (Log.isLoggable(f13919b, 3)) {
            String str = "updateWithPhoneNumber: " + Arrays.toString(collection.toArray());
        }
        if (collection == null || collection.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        String[] strArr = new String[collection.size()];
        arrayList.addAll(collection);
        Arrays.fill(strArr, "?");
        sb.append("data1 IN (");
        sb.append(TextUtils.join(",", strArr));
        sb.append(")");
        Cursor query = this.f13920a.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"contact_id", "_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null);
        if (query == null) {
            return false;
        }
        HashSet hashSet = new HashSet(query.getCount());
        HashSet hashSet2 = new HashSet(query.getCount());
        try {
            query.move(-1);
            while (query.moveToNext()) {
                hashSet.add(Long.valueOf(query.getLong(0)));
                hashSet2.add(Long.valueOf(query.getLong(1)));
            }
            query.close();
            return m25119a(hashSet, hashSet2, "short_text");
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }
}
