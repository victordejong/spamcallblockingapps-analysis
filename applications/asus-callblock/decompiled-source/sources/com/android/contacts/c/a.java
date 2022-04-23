package com.android.contacts.c;

import android.content.ContentResolver;
import android.database.Cursor;
import android.provider.ContactsContract;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DateUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f624a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static int f625b = -1001;
    public ContentResolver c;
    private String d = "raw_contact_id = ?  AND mimetype = 'vnd.android.cursor.item/contact_event' AND data2 = 3";

    public a(ContentResolver contentResolver) {
        this.c = contentResolver;
    }

    public static int a(int i) {
        int i2 = -1;
        if (i == 0) {
            i2 = 2131165304;
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x00aa, code lost:
        if (r9 <= com.android.contacts.c.a.f624a) goto L_0x00ad;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.lang.String r6) {
        /*
            java.util.Calendar r0 = java.util.Calendar.getInstance()
            r7 = r0
            r0 = r7
            r1 = 11
            r2 = 0
            r0.set(r1, r2)
            r0 = r7
            r1 = 12
            r2 = 0
            r0.set(r1, r2)
            r0 = r7
            r1 = 13
            r2 = 0
            r0.set(r1, r2)
            r0 = r7
            r1 = 14
            r2 = 0
            r0.set(r1, r2)
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x00af
            r0 = r6
            java.util.Date r0 = com.android.contacts.util.DateUtils.parseDateAsus(r0)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00af
            java.util.TimeZone r0 = com.android.contacts.util.DateUtils.UTC_TIMEZONE
            java.util.Locale r1 = java.util.Locale.US
            java.util.Calendar r0 = java.util.Calendar.getInstance(r0, r1)
            r6 = r0
            r0 = r6
            r1 = r8
            long r1 = r1.getTime()
            r0.setTimeInMillis(r1)
            java.util.Calendar r0 = java.util.Calendar.getInstance()
            r8 = r0
            r0 = r8
            r1 = 2
            r2 = r6
            r3 = 2
            int r2 = r2.get(r3)
            r0.set(r1, r2)
            r0 = r8
            r1 = 5
            r2 = r6
            r3 = 5
            int r2 = r2.get(r3)
            r0.set(r1, r2)
            r0 = r8
            r1 = 11
            r2 = 0
            r0.set(r1, r2)
            r0 = r8
            r1 = 12
            r2 = 0
            r0.set(r1, r2)
            r0 = r8
            r1 = 13
            r2 = 0
            r0.set(r1, r2)
            r0 = r8
            r1 = 14
            r2 = 0
            r0.set(r1, r2)
            r0 = r8
            long r0 = r0.getTimeInMillis()
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r1 = 60
            long r0 = r0 / r1
            r1 = 60
            long r0 = r0 / r1
            r1 = 24
            long r0 = r0 / r1
            int r0 = (int) r0
            r1 = r7
            long r1 = r1.getTimeInMillis()
            r2 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 / r2
            r2 = 60
            long r1 = r1 / r2
            r2 = 60
            long r1 = r1 / r2
            r2 = 24
            long r1 = r1 / r2
            int r1 = (int) r1
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 < 0) goto L_0x00af
            r0 = r9
            int r1 = com.android.contacts.c.a.f624a
            if (r0 > r1) goto L_0x00af
        L_0x00ad:
            r0 = r9
            return r0
        L_0x00af:
            r0 = -1
            r9 = r0
            goto L_0x00ad
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.c.a.a(java.lang.String):int");
    }

    public static int b(int i) {
        int i2 = -1;
        if (i == 0) {
            i2 = 2131165304;
        }
        return i2;
    }

    private ArrayList<String> b(long j) {
        ArrayList<String> arrayList = new ArrayList<>();
        Cursor query = this.c.query(ContactsContract.Data.CONTENT_URI, new String[]{CoverUtils.CoverData.COVER_URI}, this.d, new String[]{String.valueOf(j)}, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    for (int i = 0; i < query.getCount(); i++) {
                        arrayList.add(query.getString(0));
                        query.moveToNext();
                    }
                    query.close();
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        arrayList = null;
        if (query != null) {
            query.close();
            arrayList = null;
        }
        return arrayList;
    }

    private Cursor c(long j) {
        Cursor cursor;
        try {
            cursor = this.c.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id"}, "contact_id = " + j, null, null);
        } catch (Exception e) {
            cursor = null;
        }
        return cursor;
    }

    public final int a(long j) {
        Cursor c = c(j);
        Calendar instance = Calendar.getInstance();
        instance.set(11, 0);
        instance.set(12, 0);
        instance.set(13, 0);
        instance.set(14, 0);
        int i = -1;
        while (c != null) {
            try {
                if (!c.moveToNext()) {
                    break;
                }
                ArrayList<String> b2 = b(c.getLong(0));
                if (b2 != null) {
                    int i2 = 0;
                    while (true) {
                        i = i;
                        if (i2 < b2.size()) {
                            Date parseDateAsus = DateUtils.parseDateAsus(b2.get(i2));
                            if (parseDateAsus != null) {
                                Calendar instance2 = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
                                instance2.setTimeInMillis(parseDateAsus.getTime());
                                Calendar instance3 = Calendar.getInstance();
                                instance3.set(2, instance2.get(2));
                                if (instance2.get(2) == 1 && instance3.getActualMaximum(5) == 28 && instance2.get(5) == 29) {
                                    i = -1;
                                } else {
                                    instance3.set(5, instance2.get(5));
                                    instance3.set(11, 0);
                                    instance3.set(12, 0);
                                    instance3.set(13, 0);
                                    instance3.set(14, 0);
                                    int timeInMillis = ((int) ((((instance3.getTimeInMillis() / 1000) / 60) / 60) / 24)) - ((int) ((((instance.getTimeInMillis() / 1000) / 60) / 60) / 24));
                                    int i3 = timeInMillis;
                                    if (timeInMillis < 0) {
                                        i3 = timeInMillis + instance.getActualMaximum(6);
                                    }
                                    i = i3;
                                    if (i3 == 0) {
                                    }
                                }
                                i2++;
                            }
                            i = i;
                            i2++;
                        }
                    }
                }
            } finally {
                if (c != null) {
                    c.close();
                }
            }
        }
        return i;
    }
}
