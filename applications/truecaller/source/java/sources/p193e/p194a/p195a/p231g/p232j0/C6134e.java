package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImGroupPermissions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.v;
import s1.k;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.g.j0.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/e.class */
public final class C6134e extends CursorWrapper implements AbstractC6132d {

    /* renamed from: a */
    public final int f20478a = getColumnIndexOrThrow("conversation_id");

    /* renamed from: b */
    public final int f20479b = getColumnIndexOrThrow("group_id");

    /* renamed from: c */
    public final int f20480c = getColumnIndexOrThrow("group_name");

    /* renamed from: d */
    public final int f20481d = getColumnIndexOrThrow("group_avatar");

    /* renamed from: e */
    public final int f20482e = getColumnIndexOrThrow("group_roles");

    /* renamed from: f */
    public final int f20483f = getColumnIndexOrThrow("participants_names");

    /* renamed from: g */
    public final int f20484g = getColumnIndexOrThrow("participants_normalized_addresses");

    /* renamed from: h */
    public final int f20485h = getColumnIndexOrThrow("snippet_text");

    /* renamed from: i */
    public final int f20486i = getColumnIndexOrThrow("archived_date");

    /* renamed from: j */
    public final int f20487j = getColumnIndexOrThrow("latest_message_media_count");

    /* renamed from: k */
    public final int f20488k = getColumnIndexOrThrow("latest_message_media_type");

    /* renamed from: l */
    public final int f20489l = getColumnIndexOrThrow("latest_message_status");

    /* renamed from: m */
    public final int f20490m = getColumnIndexOrThrow("latest_message_transport");

    /* renamed from: n */
    public final int f20491n = getColumnIndexOrThrow("date_sorting");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6134e(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6132d
    /* renamed from: Q1 */
    public Conversation mo31748Q1() {
        ImGroupInfo imGroupInfo;
        s sVar = s.a;
        if (getString(this.f20479b) != null) {
            String string = getString(this.f20479b);
            l.d(string, "getString(groupId)");
            imGroupInfo = new ImGroupInfo(string, getString(this.f20480c), getString(this.f20481d), 0L, null, getInt(this.f20482e), new ImGroupPermissions(0, 0, 0, 0), -1, -1, -1L, -1L, false, -1L, -1L, 0, -1, null, 65536);
        } else {
            imGroupInfo = null;
        }
        s sVar2 = sVar;
        if (imGroupInfo == null) {
            String string2 = getString(this.f20483f);
            l.d(string2, "getString(participantsNames)");
            List U = v.U(string2, new String[]{","}, false, 0, 6);
            String string3 = getString(this.f20484g);
            l.d(string3, "getString(participantsNormalizedAddresses)");
            List U2 = v.U(string3, new String[]{","}, false, 0, 6);
            sVar2 = sVar;
            if (U.size() == U2.size()) {
                List i1 = i.i1(U, U2);
                sVar2 = new ArrayList(C25225a.m4004J(i1, 10));
                Iterator it = ((ArrayList) i1).iterator();
                while (it.hasNext()) {
                    k kVar = (k) it.next();
                    Participant.C3848b c3848b = new Participant.C3848b(3);
                    c3848b.f11605l = (String) kVar.a;
                    c3848b.f11598e = (String) kVar.b;
                    Participant m35443a = c3848b.m35443a();
                    l.d(m35443a, "Participant.Builder(True…                 .build()");
                    sVar2.add(m35443a);
                }
            }
        }
        Conversation.C4191b c4191b = new Conversation.C4191b();
        c4191b.f13237a = getLong(this.f20478a);
        c4191b.f13246j = getString(this.f20485h);
        c4191b.f13261y = imGroupInfo;
        c4191b.f13231G = new b(getLong(this.f20486i));
        c4191b.f13242f = getInt(this.f20487j);
        c4191b.f13243g = getString(this.f20488k);
        c4191b.f13241e = getInt(this.f20489l);
        c4191b.f13260x = getInt(this.f20490m);
        c4191b.f13249m.clear();
        c4191b.f13249m.addAll(sVar2);
        c4191b.f13245i = new b(getLong(this.f20491n));
        Conversation m35063b = c4191b.m35063b();
        l.d(m35063b, "Conversation.Builder()\n …e)))\n            .build()");
        return m35063b;
    }
}
