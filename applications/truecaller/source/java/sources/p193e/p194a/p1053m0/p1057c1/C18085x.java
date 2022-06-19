package p193e.p194a.p1053m0.p1057c1;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.CancellationSignal;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.x */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/x.class */
public final class C18085x implements C8456a.AbstractC8463g {

    /* renamed from: a */
    public final Context f51007a;

    public C18085x(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f51007a = context;
    }

    /* JADX WARN: Type inference failed for: r0v132, types: [long] */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        char c;
        String str3;
        String str4;
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        try {
            c = ContentUris.parseId(uri);
        } catch (NumberFormatException | UnsupportedOperationException e) {
            c = 65535;
        }
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        int i = (c > (-1L) ? 1 : (c == (-1L) ? 0 : -1));
        if (i != 0 || str != null) {
            sb.append(" WHERE ");
            if (i != 0) {
                sb.append("conversation_id = ?");
                arrayList.add(String.valueOf((long) c));
                if (str != null) {
                    sb.append(" AND ");
                }
            }
            if (str != null) {
                sb.append('(' + str + ')');
                if (strArr2 != null) {
                    i.c(arrayList, strArr2);
                }
            }
        }
        String queryParameter = uri.getQueryParameter("filter");
        String str5 = "";
        if (queryParameter == null) {
            str3 = "";
        } else {
            for (int i2 = 0; i2 < 3; i2++) {
                arrayList.add('%' + queryParameter + '%');
            }
            StringBuilder m8728C = C22128a.m8728C("WHERE (e.entity_info1 LIKE ? AND e.entity_type = 0)\n                    OR (p.type = 1 \n                    AND (p.normalized_destination LIKE ? OR a.contact_name LIKE ?))\n                ");
            if (Boolean.parseBoolean(uri.getQueryParameter("filename_filter_enabled"))) {
                arrayList.add('%' + queryParameter + '%');
                m8728C.append(" OR (e.entity_info4 LIKE ? AND e.entity_type = 5)");
            }
            str3 = m8728C.toString();
            l.d(str3, "StringBuilder().apply(builderAction).toString()");
        }
        String queryParameter2 = uri.getQueryParameter("im_id");
        if (queryParameter2 == null) {
            str4 = "";
        } else {
            arrayList.add(queryParameter2);
            str4 = "WHERE p.tc_im_peer_id = ?";
        }
        if (str3.length() > 0) {
            str4 = str3;
        } else if (!(str4.length() > 0)) {
            str4 = "";
        }
        String m8543z2 = str2 != null ? C22128a.m8543z2(" ORDER BY ", str2) : "";
        if (str4.length() == 0) {
            str5 = m8543z2;
        }
        String m8562v = C22128a.m8562v(new Object[]{sb.toString() + str5, str4, m8543z2}, 3, "SELECT m.*, p._id AS participant_id, p.type AS me_participant_type, p.tc_im_peer_id AS me_participant_im_id, p.raw_destination AS me_participant_raw_destination, p.normalized_destination AS me_participant_normalized_destination, p.country_code AS me_participant_country_code, p.aggregated_contact_id AS me_participant_aggregated_contact_id, p.filter_action AS me_participant_filter_action, p.is_top_spammer AS me_participant_is_top_spammer, p.top_spam_score AS me_participant_top_spam_score, p.im_business_state AS me_participant_im_business_state, a.contact_name AS me_participant_name, a.contact_image_url AS me_participant_image_url, a.contact_source AS me_participant_source, IFNULL(a.contact_badges, 0) AS me_participant_badges, a.contact_company AS me_participant_company_name, a.contact_search_time AS me_participant_search_time, IFNULL(a.contact_phonebook_id, -1) AS me_participant_phonebook_id, a.tc_id AS me_participant_tc_id, MAX(IFNULL(a.contact_spam_score, 0), p.top_spam_score) AS me_participant_spam_score, a.contact_spam_type AS me_participant_spam_type, a.contact_premium_level AS me_participant_premium_level, a.cache_control AS me_participant_cache_control, ig.title AS me_group_title, ig.avatar AS me_group_avatar, GROUP_CONCAT(e._id, '|') AS me_entities_id, GROUP_CONCAT(e.entity_type, '|') AS me_entities_type, GROUP_CONCAT(LENGTH(e.type) || '|' || e.type, \"\") AS me_entities_mime_type, GROUP_CONCAT(LENGTH(e.entity_info1) || '|' || e.entity_info1, \"\") AS entity_info1, GROUP_CONCAT(LENGTH(e.entity_info2) || '|' || e.entity_info2, \"\") AS entity_info2, GROUP_CONCAT(LENGTH(e.entity_info3) || '|' || e.entity_info3, \"\") AS entity_info3, GROUP_CONCAT(LENGTH(e.entity_info4) || '|' || e.entity_info4, \"\") AS entity_info4, GROUP_CONCAT(LENGTH(e.entity_info5) || '|' || e.entity_info5, \"\") AS entity_info5, GROUP_CONCAT(LENGTH(e.entity_info6) || '|' || e.entity_info6, \"\") AS entity_info6, GROUP_CONCAT(LENGTH(e.entity_info7) || '|' || e.entity_info7, \"\") AS entity_info7, rm.status AS re_message_status, ra.contact_name AS re_participant_name, rp.normalized_destination AS re_participant_normalized_address, rp.type AS re_participant_type, GROUP_CONCAT(re._id, '|') AS re_entities_id, GROUP_CONCAT(re.entity_type, '|') AS re_entities_type, GROUP_CONCAT(LENGTH(re.type) || '|' || re.type, \"\") AS re_entities_mime_type, GROUP_CONCAT(LENGTH(re.entity_info1) || '|' || re.entity_info1, \"\") AS re_entity_info1, GROUP_CONCAT(LENGTH(re.entity_info2) || '|' || re.entity_info2, \"\") AS re_entity_info2, GROUP_CONCAT(LENGTH(re.entity_info3) || '|' || re.entity_info3, \"\") AS re_entity_info3, GROUP_CONCAT(LENGTH(re.entity_info4) || '|' || re.entity_info4, \"\") AS re_entity_info4, GROUP_CONCAT(LENGTH(re.entity_info5) || '|' || re.entity_info5, \"\") AS re_entity_info5, GROUP_CONCAT(LENGTH(re.entity_info6) || '|' || re.entity_info6, \"\") AS re_entity_info6 FROM (SELECT * FROM msg_messages%s) m JOIN msg_entities e ON m._id = e.message_id LEFT JOIN msg_participants p ON p._id = m.participant_id LEFT JOIN aggregated_contact a ON p.aggregated_contact_id = a._id LEFT JOIN msg_messages rm ON rm._id = m.reply_to_msg_id LEFT JOIN msg_entities re ON rm._id = re.message_id LEFT JOIN msg_participants rp ON rp._id = rm.participant_id LEFT JOIN aggregated_contact ra ON ra._id = rp.aggregated_contact_id LEFT JOIN msg_conversations c ON m.conversation_id = c._id LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id %sGROUP BY m._id%s", "java.lang.String.format(format, *args)");
        String str6 = m8562v;
        if (strArr != null) {
            StringBuilder m8728C2 = C22128a.m8728C("SELECT ");
            m8728C2.append(C25225a.m3990M1(strArr, null, null, null, 0, null, null, 63));
            m8728C2.append(" FROM (");
            m8728C2.append(m8562v);
            m8728C2.append(')');
            str6 = m8728C2.toString();
        }
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor rawQuery = m28528m.rawQuery(str6, (String[]) array);
        if (rawQuery != null) {
            rawQuery.setNotificationUri(this.f51007a.getContentResolver(), c8456a.f26174j);
        }
        l.d(rawQuery, "cursor");
        return rawQuery;
    }
}
