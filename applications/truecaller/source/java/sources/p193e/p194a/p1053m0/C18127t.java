package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.t */
/* loaded from: classes8-dex2jar.jar:e/a/m0/t.class */
public final class C18127t implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        if (strArr == null) {
            if (!(str == null)) {
                throw new IllegalArgumentException("Selection is not supported.".toString());
            }
            if (!(strArr2 == null)) {
                throw new IllegalArgumentException("Selection args are not supported.".toString());
            }
            if (!(str2 == null)) {
                throw new IllegalArgumentException("Sort order is not supported.".toString());
            }
            String queryParameter = uri.getQueryParameter("group_id");
            l.c(queryParameter);
            String queryParameter2 = uri.getQueryParameter("sequence_number");
            l.c(queryParameter2);
            return abstractC8448a.m28528m().rawQuery("\n    SELECT\n        gr.peer_id as im_peer_id,\n        gr.date as date,\n        gr.sequence_number as sequence_number,\n        gr.type as type,\n        iu.normalized_number as normalized_number,\n        ac.contact_name as name,\n        ac.contact_image_url as image_url,\n        IFNULL(ac.contact_phonebook_id, -1) as phonebook_id\n    FROM msg_im_group_reports gr\n        LEFT JOIN msg_im_users iu ON gr.peer_id = iu.im_peer_id\n        LEFT JOIN data d ON d.data_type = 4\n            AND d.data1 = iu.normalized_number\n        LEFT JOIN raw_contact rc on d.data_raw_contact_id = rc._id\n            OR  iu.tc_id = rc.tc_id\n        LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n    WHERE gr.group_id=? AND gr.sequence_number>=?\n    GROUP BY gr.peer_id, gr.type\n    ORDER BY MIN(gr.sequence_number), gr.type DESC\n", new String[]{queryParameter, queryParameter2});
        }
        throw new IllegalArgumentException("Projection is not supported.".toString());
    }
}
