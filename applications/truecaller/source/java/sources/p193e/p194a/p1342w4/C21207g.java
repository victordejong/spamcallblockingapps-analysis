package p193e.p194a.p1342w4;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import com.razorpay.AnalyticsConstants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.l;
/* renamed from: e.a.w4.g */
/* loaded from: classes13-dex2jar.jar:e/a/w4/g.class */
public final class C21207g {
    /* renamed from: a */
    public static final boolean m10135a(Context context, String str) {
        String str2;
        l.e(context, AnalyticsConstants.CONTEXT);
        boolean z = true;
        if (str == null || str.length() == 0) {
            str2 = null;
        } else {
            try {
                Cursor query = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), C21208h.f59412a, null, null, null);
                if (C12864a2.m22540r(query != null ? Boolean.valueOf(query.moveToNext()) : null)) {
                    str2 = query != null ? query.getString(0) : null;
                    C25225a.m4016G(query, null);
                } else {
                    C25225a.m4016G(query, null);
                    str2 = null;
                }
            } catch (RuntimeException e) {
                C10480a.m26061I1(e);
                str2 = null;
            }
        }
        if (str2 == null) {
            z = false;
        }
        return z;
    }
}
