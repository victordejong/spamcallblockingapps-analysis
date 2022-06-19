package p193e.p194a.p1053m0.p1057c1;

import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.s */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/s.class */
public final class C18080s implements C8456a.AbstractC8463g {
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        char c;
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(uri, "$this$parseId");
        try {
            c = ContentUris.parseId(uri);
        } catch (NumberFormatException | UnsupportedOperationException e) {
            c = 65535;
        }
        if (strArr == null) {
            if (!(str == null)) {
                throw new IllegalArgumentException("Selection not supported".toString());
            }
            if (!(c != -1)) {
                throw new IllegalArgumentException("Message id must be specified".toString());
            }
            Cursor rawQuery = abstractC8448a.m28528m().rawQuery("\n    SELECT\n        m.raw_id as raw_message_id,\n        m.sequence_number as sequence_number,\n        p.type as participant_type,\n        p.normalized_destination as normalized_destination,\n        p.tc_im_peer_id as im_peer_id,\n        p.filter_action as filter_action,\n        c.tc_group_id as group_id\n    FROM msg_messages m\n        INNER JOIN msg_participants p ON p._id = m.participant_id\n            AND p.tc_im_peer_id NOT NULL\n        INNER JOIN msg_conversations c ON c._id = m.conversation_id\n    WHERE m._id = ? AND m.transport = 2\n", new String[]{String.valueOf((long) c)});
            l.d(rawQuery, "provider.database.rawQue…Of(messageId.toString()))");
            return rawQuery;
        }
        throw new IllegalArgumentException("Project not supported".toString());
    }
}
