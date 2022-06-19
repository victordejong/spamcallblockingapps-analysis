package p193e.p194a.p1053m0;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.CancellationSignal;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.s */
/* loaded from: classes8-dex2jar.jar:e/a/m0/s.class */
public final class C18125s implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        ContentResolver contentResolver;
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        String queryParameter = uri.getQueryParameter("group_id");
        String queryParameter2 = uri.getQueryParameter("peer_id");
        String queryParameter3 = uri.getQueryParameter("self_peer_id");
        boolean booleanQueryParameter = uri.getBooleanQueryParameter("filter_out_removed_participants", true);
        StringBuilder sb = new StringBuilder("\n    SELECT\n        gp.im_peer_id as im_peer_id,\n        gp.roles as roles,\n        iu.normalized_number as normalized_number,\n        IFNULL(ac.contact_name, iu.fallback_name) as name,\n        IFNULL(rc.contact_name, iu.fallback_name) as public_name,\n        ac.contact_image_url as image_url,\n        IFNULL(ac.contact_phonebook_id, -1) as phonebook_id,\n        IFNULL(ac.contact_source, 0) as source,\n        ac.tc_id as tc_contact_id,\n        ac.contact_search_time AS search_time,\n        ac.cache_control AS cache_control,\n        d.data9 as raw_number,\n        gp.im_peer_id = ? AS is_self\n    FROM msg_im_group_participants gp\n        LEFT JOIN msg_im_users iu ON gp.im_peer_id = iu.im_peer_id\n        LEFT JOIN data d ON d.data_type = 4\n            AND d.data1 = iu.normalized_number\n        LEFT JOIN raw_contact rc on d.data_raw_contact_id = rc._id\n            OR  iu.tc_id = rc.tc_id\n        LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n");
        if (queryParameter3 == null) {
            queryParameter3 = "";
        }
        List d0 = i.d0(new String[]{queryParameter3});
        if (queryParameter != null) {
            sb.append("WHERE gp.im_group_id = ?");
            d0.add(queryParameter);
        } else if (queryParameter2 == null) {
            return null;
        } else {
            sb.append("WHERE gp.im_peer_id = ?");
            d0.add(queryParameter2);
        }
        if (booleanQueryParameter) {
            sb.append(" AND gp.roles != 0");
        }
        if (str != null) {
            sb.append(" AND (" + str + ')');
        }
        if (strArr2 == null) {
            strArr2 = new String[0];
        }
        i.c(d0, strArr2);
        sb.append(" GROUP BY gp.im_peer_id");
        if (str2 != null) {
            C22128a.m8691L0(" ORDER BY ", str2, sb);
        }
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        String sb2 = sb.toString();
        l.d(sb2, "query.toString()");
        if (strArr != null) {
            StringBuilder m8728C = C22128a.m8728C("SELECT ");
            m8728C.append(C25225a.m3990M1(strArr, null, null, null, 0, null, null, 63));
            m8728C.append(" FROM (");
            m8728C.append(sb2);
            m8728C.append(')');
            sb2 = m8728C.toString();
        }
        Object[] array = d0.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor rawQuery = m28528m.rawQuery(sb2, (String[]) array);
        Context context = abstractC8448a.getContext();
        if (context != null && (contentResolver = context.getContentResolver()) != null && rawQuery != null) {
            rawQuery.setNotificationUri(contentResolver, C8582g0.m28336E());
        }
        return rawQuery;
    }
}
