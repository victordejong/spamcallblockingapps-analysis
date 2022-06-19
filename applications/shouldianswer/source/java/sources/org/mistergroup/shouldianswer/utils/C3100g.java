package org.mistergroup.shouldianswer.utils;

import android.database.Cursor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.g */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/g.class */
public final class C3100g {

    /* renamed from: a */
    public static final C3100g f9119a = new C3100g();

    /* renamed from: b */
    private static SimpleDateFormat f9120b;

    private C3100g() {
    }

    /* renamed from: a */
    public final int m174a(Cursor cursor, String str) {
        C1694h.m3117b(cursor, "cursor");
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1) {
            C3104j c3104j = C3104j.f9124a;
            C3104j.m158a(c3104j, new Exception("Cursor does not contain column " + str), (String) null, 2, (Object) null);
        }
        return columnIndex;
    }

    /* renamed from: a */
    public final String m175a(Cursor cursor, int i) {
        C1694h.m3117b(cursor, "cursor");
        return i == -1 ? null : cursor.getString(i);
    }

    /* renamed from: a */
    public final String m173a(Date date) {
        String format;
        if (date != null) {
            try {
                if (f9120b == null) {
                    f9120b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    SimpleDateFormat simpleDateFormat = f9120b;
                    if (simpleDateFormat == null) {
                        C1694h.m3124a();
                    }
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTF"));
                }
                SimpleDateFormat simpleDateFormat2 = f9120b;
                if (simpleDateFormat2 == null) {
                    C1694h.m3124a();
                }
                format = simpleDateFormat2.format(date);
                C1694h.m3122a((Object) format, "simpleFormat!!.format(date)");
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return format;
        }
        format = "";
        return format;
    }

    /* renamed from: b */
    public final int m172b(Cursor cursor, int i) {
        C1694h.m3117b(cursor, "cursor");
        return i == -1 ? 0 : cursor.getInt(i);
    }

    /* renamed from: b */
    public final String m171b(Cursor cursor, String str) {
        C1694h.m3117b(cursor, "cursor");
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        int m174a = m174a(cursor, str);
        return m174a == -1 ? "" : cursor.getString(m174a);
    }

    /* renamed from: c */
    public final int m169c(Cursor cursor, String str) {
        C1694h.m3117b(cursor, "cursor");
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        int m174a = m174a(cursor, str);
        return m174a == -1 ? 0 : cursor.getInt(m174a);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: c */
    public final long m170c(Cursor cursor, int i) {
        C1694h.m3117b(cursor, "cursor");
        return i == -1 ? (char) 0 : cursor.getLong(i);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: d */
    public final long m168d(Cursor cursor, String str) {
        C1694h.m3117b(cursor, "cursor");
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        int m174a = m174a(cursor, str);
        return m174a == -1 ? (char) 0 : cursor.getLong(m174a);
    }
}
