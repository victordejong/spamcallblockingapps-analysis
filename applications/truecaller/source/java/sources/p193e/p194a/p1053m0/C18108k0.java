package p193e.p194a.p1053m0;

import com.amazon.device.ads.DtbConstants;
import java.util.List;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.f0.h;
import s1.z.c.l;
/* renamed from: e.a.m0.k0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/k0.class */
public final class C18108k0 implements C8456a.AbstractC8463g {

    /* renamed from: a */
    public final h f51027a = new h("\\+?[\\d\\s()-]+");

    /* renamed from: b */
    public final AbstractC8438a f51028b;

    /* renamed from: c */
    public final C20592g f51029c;

    public C18108k0(AbstractC8438a abstractC8438a, C20592g c20592g) {
        l.e(abstractC8438a, "accountSettings");
        l.e(c20592g, "featuresRegistry");
        this.f51028b = abstractC8438a;
        this.f51029c = c20592g;
    }

    /* renamed from: a */
    public final void m15484a(StringBuilder sb, String str, boolean z, List<String> list) {
        sb.append("\n              SELECT null                                                                                        as conversation_id,\n                     0                                                                                           as conversation_hidden_number,\n                     IFNULL(a.contact_name, '')                                                            as name_sorting,\n                     IFNULL(LENGTH(a.contact_name) || '|' || a.contact_name, '0|')                   as names_group,\n                     IFNULL(a.contact_phonebook_id, '')                                                    as phonebook_ids_grouped,\n                     IFNULL(a.contact_source, '')                                                          as source_group,\n                     IFNULL(a.contact_spam_score, 0)                                                       as spam_score_grouped,\n                     IFNULL(a.contact_spam_type, '')                                                       as spam_type_grouped,\n                     0                                                                                           as top_spam_grouped,\n                     0                                                                                           as filter_action_grouped,\n                     0                                                                                           as participant_type_grouped,\n                     a.contact_image_url                                                                   as image_uri,\n                     LENGTH(d.data1) || '|' || d.data1 as numbers_group,\n                     i.im_peer_id                                                                as im_id,\n                     i.registration_timestamp                                                    as im_registration_timestamp,\n                     0                                                                                           as date_sorting,\n                     CASE\n                        WHEN ? AND i.im_peer_id IS NOT NULL THEN 0\n                        ELSE 1 END                                                          as transport_type,\n                     " + str + "                                                                    as group_sorting,\n                     NULL                                                                                        as im_group_id,\n                     NULL                                                                                        as im_group_title,\n                     NULL                                                                                        as im_group_avatar,\n                     3                                                                      as conversation_preferred_transport,\n                     IFNULL(p.im_business_state, -1)                as participant_im_business_state\n              FROM data d\n                     LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n                     LEFT JOIN aggregated_contact a on a._id = r.aggregated_contact_id\n                     LEFT JOIN msg_im_users i ON i.normalized_number = d.data1\n                     LEFT JOIN msg_participants p ON p.aggregated_contact_id = a._id\n              WHERE d.data_type = 4 AND d.data8 IS NOT NULL\n        ");
        list.add(z ? "1" : DtbConstants.NETWORK_TYPE_UNKNOWN);
    }

    /* renamed from: b */
    public final String m15483b(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isDigit(charAt)) {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        l.d(sb2, "filterTo(StringBuilder(), predicate).toString()");
        return sb2;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03dd  */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor mo15459c(p193e.p194a.p372b0.p413i.AbstractC8448a r13, p193e.p194a.p372b0.p413i.p414e.C8456a r14, android.net.Uri r15, java.lang.String[] r16, java.lang.String r17, java.lang.String[] r18, java.lang.String r19, android.os.CancellationSignal r20) {
        /*
            Method dump skipped, instructions count: 1267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C18108k0.mo15459c(e.a.b0.i.a, e.a.b0.i.e.a, android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String, android.os.CancellationSignal):android.database.Cursor");
    }
}
