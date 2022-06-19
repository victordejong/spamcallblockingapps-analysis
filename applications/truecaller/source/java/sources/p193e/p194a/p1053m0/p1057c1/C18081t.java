package p193e.p194a.p1053m0.p1057c1;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.m0.c1.t */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/t.class */
public final class C18081t implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        List<String> queryParameters = uri.getQueryParameters("ids");
        if (queryParameters != null) {
            boolean z = true;
            AssertionUtil.AlwaysFatal.isTrue(!queryParameters.isEmpty(), new String[0]);
            String u = h.u("?", ",", queryParameters.size());
            l.d(u, "StringUtils.repeat(\"?\", \",\", ids.size)");
            ArrayList arrayList = new ArrayList(C25225a.m4004J(queryParameters, 10));
            for (String str3 : queryParameters) {
                arrayList.add(str3.toString());
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr3 = (String[]) array;
            String m8562v = C22128a.m8562v(new Object[]{C22128a.m8725C2("WHERE ", C22128a.m8725C2("\n            m._id IN(", u, ") AND m.important != 1\n            AND ts.filter = CASE WHEN split_criteria=0 THEN 1 ELSE 2 END \n        "), " GROUP BY m._id ORDER BY date DESC")}, 1, "\n    SELECT m.*, p._id AS participant_id, p.type AS me_participant_type, p.tc_im_peer_id AS me_participant_im_id, p.raw_destination AS me_participant_raw_destination, p.normalized_destination AS me_participant_normalized_destination, p.country_code AS me_participant_country_code, p.aggregated_contact_id AS me_participant_aggregated_contact_id, p.filter_action AS me_participant_filter_action, p.is_top_spammer AS me_participant_is_top_spammer, p.top_spam_score AS me_participant_top_spam_score, p.im_business_state AS me_participant_im_business_state, a.contact_name AS me_participant_name, a.contact_image_url AS me_participant_image_url, a.contact_source AS me_participant_source, IFNULL(a.contact_badges, 0) AS me_participant_badges, a.contact_company AS me_participant_company_name, a.contact_search_time AS me_participant_search_time, IFNULL(a.contact_phonebook_id, -1) AS me_participant_phonebook_id, a.tc_id AS me_participant_tc_id, MAX(IFNULL(a.contact_spam_score, 0), p.top_spam_score) AS me_participant_spam_score, a.contact_spam_type AS me_participant_spam_type, a.contact_premium_level AS me_participant_premium_level, a.cache_control AS me_participant_cache_control, ig.title AS me_group_title, ig.avatar AS me_group_avatar, GROUP_CONCAT(e._id, '|') AS me_entities_id, GROUP_CONCAT(e.entity_type, '|') AS me_entities_type, GROUP_CONCAT(LENGTH(e.type) || '|' || e.type, \"\") AS me_entities_mime_type, GROUP_CONCAT(LENGTH(e.entity_info1) || '|' || e.entity_info1, \"\") AS entity_info1, GROUP_CONCAT(LENGTH(e.entity_info2) || '|' || e.entity_info2, \"\") AS entity_info2, GROUP_CONCAT(LENGTH(e.entity_info3) || '|' || e.entity_info3, \"\") AS entity_info3, GROUP_CONCAT(LENGTH(e.entity_info4) || '|' || e.entity_info4, \"\") AS entity_info4, GROUP_CONCAT(LENGTH(e.entity_info5) || '|' || e.entity_info5, \"\") AS entity_info5, GROUP_CONCAT(LENGTH(e.entity_info6) || '|' || e.entity_info6, \"\") AS entity_info6, GROUP_CONCAT(LENGTH(e.entity_info7) || '|' || e.entity_info7, \"\") AS entity_info7, rm.status AS re_message_status, ra.contact_name AS re_participant_name, rp.normalized_destination AS re_participant_normalized_address, rp.type AS re_participant_type, GROUP_CONCAT(re._id, '|') AS re_entities_id, GROUP_CONCAT(re.entity_type, '|') AS re_entities_type, GROUP_CONCAT(LENGTH(re.type) || '|' || re.type, \"\") AS re_entities_mime_type, GROUP_CONCAT(LENGTH(re.entity_info1) || '|' || re.entity_info1, \"\") AS re_entity_info1, GROUP_CONCAT(LENGTH(re.entity_info2) || '|' || re.entity_info2, \"\") AS re_entity_info2, GROUP_CONCAT(LENGTH(re.entity_info3) || '|' || re.entity_info3, \"\") AS re_entity_info3, GROUP_CONCAT(LENGTH(re.entity_info4) || '|' || re.entity_info4, \"\") AS re_entity_info4, GROUP_CONCAT(LENGTH(re.entity_info5) || '|' || re.entity_info5, \"\") AS re_entity_info5, GROUP_CONCAT(LENGTH(re.entity_info6) || '|' || re.entity_info6, \"\") AS re_entity_info6 \n    \n    FROM (\n        SELECT * FROM msg_messages m\n        LEFT JOIN msg_conversations c ON c._id = m.conversation_id \n        LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id AND ts.archived_date == 0 \n        %s\n    ) m \n    \n    JOIN msg_entities e ON m._id = e.message_id LEFT JOIN msg_participants p ON p._id = m.participant_id LEFT JOIN aggregated_contact a ON p.aggregated_contact_id = a._id LEFT JOIN msg_messages rm ON rm._id = m.reply_to_msg_id LEFT JOIN msg_entities re ON rm._id = re.message_id LEFT JOIN msg_participants rp ON rp._id = rm.participant_id LEFT JOIN aggregated_contact ra ON ra._id = rp.aggregated_contact_id LEFT JOIN msg_conversations c ON m.conversation_id = c._id LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id \n    GROUP BY m._id\n    \n    ORDER BY date DESC\n", "java.lang.String.format(format, *args)");
            String str4 = m8562v;
            if (strArr != null) {
                if (strArr.length != 0) {
                    z = false;
                }
                str4 = m8562v;
                if (!z) {
                    StringBuilder m8728C = C22128a.m8728C("SELECT ");
                    m8728C.append(C25225a.m3990M1(strArr, null, null, null, 0, null, null, 63));
                    m8728C.append(" FROM (");
                    m8728C.append(m8562v);
                    m8728C.append(')');
                    str4 = m8728C.toString();
                }
            }
            Cursor rawQuery = abstractC8448a.m28528m().rawQuery(str4, strArr3);
            l.d(rawQuery, "provider.database.rawQuery(query, args)");
            return rawQuery;
        }
        throw new IllegalArgumentException("Ids are required");
    }
}
