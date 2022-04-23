package com.asus.blocklist;

import android.database.Cursor;
import android.net.Uri;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/h.class */
public class h implements Comparable {
    private static final String q = h.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public long f2526a;

    /* renamed from: b  reason: collision with root package name */
    public String f2527b;
    public String c;
    public int d;
    public String e;
    public long f;
    public int g;
    public Uri h;
    public long i;
    public int j;
    public long k;
    public String l;
    public String m;
    public String n;
    public long o;
    public boolean p;

    public h(long j, int i, long j2, String str, int i2, String str2, String str3, String str4, String str5, long j3) {
        this(j, i, j2, str, null, i2, -1L, null, str2, -1, 0L, str3, str4);
        this.n = str5;
        this.o = j3;
    }

    private h(long j, int i, long j2, String str, String str2, int i2, long j3, String str3, String str4, int i3, long j4, String str5, String str6) {
        this.p = false;
        this.k = j;
        this.j = i;
        this.f2526a = j2;
        this.f2527b = str;
        this.c = str2;
        this.d = i2;
        this.f = j3;
        if (str3 != null) {
            this.h = Uri.parse(str3);
        }
        this.g = i3;
        this.e = str4;
        this.i = j4;
        this.l = str5;
        this.m = str6;
    }

    public static h a(Cursor cursor) {
        h hVar;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            hVar = new h(cursor.getLong(cursor.getColumnIndex("_id")), 1, cursor.getLong(cursor.getColumnIndex("date")), cursor.getString(cursor.getColumnIndex("number")), cursor.getString(cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_NAME)), cursor.getInt(cursor.getColumnIndex("type")), cursor.getLong(cursor.getColumnIndex("block")), cursor.getString(cursor.getColumnIndex(PhotoSelectionActivity.LOOKUP_URI)), cursor.getString(cursor.getColumnIndex("sim_index")), cursor.getInt(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM)), cursor.getLong(cursor.getColumnIndex("photo_id")), cursor.getString(cursor.getColumnIndex("subscription_component_name")), cursor.getString(cursor.getColumnIndex("subscription_id")));
        } else {
            long j = cursor.getLong(cursor.getColumnIndex("_id"));
            long j2 = cursor.getLong(cursor.getColumnIndex("date"));
            String string = cursor.getString(cursor.getColumnIndex("number"));
            int i = cursor.getInt(cursor.getColumnIndex("type"));
            String string2 = cursor.getString(cursor.getColumnIndex("subscription_component_name"));
            String string3 = cursor.getString(cursor.getColumnIndex("subscription_id"));
            hVar = new h(j, 1, j2, string, cursor.getString(cursor.getColumnIndex("contact_name")), i, cursor.getLong(cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID)), cursor.getString(cursor.getColumnIndex("contact_lookupkey")), cursor.getString(cursor.getColumnIndex("sim_index")), cursor.getInt(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM)), cursor.getLong(cursor.getColumnIndex("photo_id")), string2, string3);
        }
        return hVar;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((int) ((h) obj).k) - ((int) this.k);
    }

    public boolean equals(Object obj) {
        h hVar = (h) obj;
        return hVar.j == this.j && hVar.k == this.k;
    }
}
