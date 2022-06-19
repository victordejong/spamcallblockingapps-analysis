package p193e.p194a.p1053m0;

import com.truecaller.blocking.FiltersContract;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.m0.q0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/q0.class */
public final class C18121q0 {

    /* renamed from: a */
    public static final String f51038a;

    /* renamed from: b */
    public static final String f51039b;

    static {
        StringBuilder m8728C = C22128a.m8728C("\n    SELECT\n        -1 AS _id,\n        CASE SUBSTR(d.data1, 1, 1)\n            WHEN '+' THEN 0\n            ELSE 1\n        END AS type,\n        d.data9 AS raw_destination,\n        d.data2 AS national_destination,\n        d.data1 AS normalized_destination,\n        d.data7 AS country_code,\n        a._id AS aggregated_contact_id,\n        a.tc_id AS tc_id,\n        CASE f.rule\n            WHEN 0 THEN 1\n            WHEN 1 THEN 2\n            ELSE 0\n        END AS filter_action,\n        CASE WHEN t._id IS NULL THEN 0 ELSE 1 END AS is_top_spammer,\n        IFNULL(t.count, 0) AS top_spam_score,\n        a.contact_name AS name,\n        a.contact_image_url AS image_url,\n        a.contact_source AS source,\n        a.contact_badges AS badges,\n        a.contact_company AS company_name,\n        IFNULL(a.contact_phonebook_id, -1) AS phonebook_id,\n        IFNULL(a.contact_spam_score, 0) AS spam_score,\n        a.contact_spam_type AS spam_type,\n        i.im_peer_id AS tc_im_peer_id,\n        a.contact_search_time AS search_time,\n        a.contact_premium_level AS premium_level,\n        a.cache_control AS cache_control,\n        -1 AS im_business_state,\n        0 AS im_business_feature_flags,\n        0 AS pb_numbers_count\n    FROM data d\n    LEFT JOIN raw_contact r ON d.data_raw_contact_id = r._id\n    LEFT JOIN aggregated_contact a ON a._id = aggregated_contact_id\n    LEFT JOIN filters f ON f.wildcard_type = ");
        FiltersContract.Filters.WildCardType wildCardType = FiltersContract.Filters.WildCardType.NONE;
        f51038a = C22128a.m8697J2(m8728C, wildCardType.type, "\n        AND f.value = d.data1\n    LEFT JOIN topspammers t ON t.value = d.data1\n    LEFT JOIN msg_im_users i ON i.normalized_number = d.data1\n    WHERE d.data_type = 4\n        AND d.data1 NOT NULL\n        AND d.data1 != ''\n        AND a.contact_source != 4\n        AND (d.data1 IN (%s)\n            OR d.data9 IN (%s)\n            OR d.data2 IN (%s)\n        )\n");
        f51039b = C22128a.m8697J2(C22128a.m8728C("\n    SELECT\n        -1 AS _id,\n        3 AS type,\n        NULL AS raw_destination,\n        NULL AS national_destination,\n        a.contact_im_id AS normalized_destination,\n        NULL AS country_code,\n        a._id AS aggregated_contact_id,\n        a.tc_id AS tc_id,\n        CASE f.rule\n            WHEN 0 THEN 1\n            WHEN 1 THEN 2\n            ELSE 0\n        END AS filter_action,\n        0 is_top_spammer,\n        0 AS top_spam_score,\n        a.contact_name AS name,\n        a.contact_image_url AS image_url,\n        a.contact_source AS source,\n        a.contact_badges AS badges,\n        a.contact_company AS company_name,\n        IFNULL(a.contact_phonebook_id, -1) AS phonebook_id,\n        IFNULL(a.contact_spam_score, 0) AS spam_score,\n        a.contact_spam_type AS spam_type,\n        a.contact_im_id AS tc_im_peer_id,\n        a.contact_search_time AS search_time,\n        a.contact_premium_level AS premium_level,\n        a.cache_control AS cache_control,\n        -1 AS im_business_state,\n        0 AS im_business_feature_flags,\n        0 AS pb_numbers_count\n    FROM aggregated_contact a\n    LEFT JOIN filters f ON f.wildcard_type = "), wildCardType.type, "\n        AND f.value = a.contact_im_id\n    WHERE a.contact_im_id IN (%s)\n");
    }
}
