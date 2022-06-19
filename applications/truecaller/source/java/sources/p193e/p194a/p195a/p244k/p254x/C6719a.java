package p193e.p194a.p195a.p244k.p254x;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.tenor.android.core.constant.SupportMessenger;
import com.truecaller.blocking.ActionSource;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.transport.history.HistoryTransportInfo;
import p193e.p194a.p195a.p244k.AbstractC6679g;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import s1.z.c.l;
/* renamed from: e.a.a.k.x.a */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/x/a.class */
public final class C6719a extends CursorWrapper implements AbstractC6679g.AbstractC6680a {

    /* renamed from: a */
    public final int f22115a;

    /* renamed from: b */
    public final int f22116b;

    /* renamed from: c */
    public final int f22117c;

    /* renamed from: d */
    public final int f22118d;

    /* renamed from: e */
    public final int f22119e;

    /* renamed from: f */
    public final int f22120f;

    /* renamed from: g */
    public final int f22121g;

    /* renamed from: h */
    public final int f22122h;

    /* renamed from: i */
    public final int f22123i;

    /* renamed from: j */
    public final int f22124j;

    /* renamed from: k */
    public final int f22125k;

    /* renamed from: l */
    public final int f22126l;

    /* renamed from: m */
    public final int f22127m;

    /* renamed from: n */
    public final AbstractC6694m f22128n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6719a(Cursor cursor, AbstractC6694m abstractC6694m) {
        super(cursor);
        l.e(cursor, "cursor");
        l.e(abstractC6694m, "participantCache");
        this.f22128n = abstractC6694m;
        this.f22115a = cursor.getColumnIndexOrThrow("_id");
        this.f22116b = cursor.getColumnIndexOrThrow("timestamp");
        this.f22117c = cursor.getColumnIndexOrThrow("new");
        this.f22118d = cursor.getColumnIndexOrThrow("is_read");
        this.f22119e = cursor.getColumnIndexOrThrow("type");
        this.f22120f = cursor.getColumnIndexOrThrow("normalized_number");
        this.f22121g = cursor.getColumnIndexOrThrow("call_log_id");
        this.f22122h = cursor.getColumnIndexOrThrow("number_type");
        this.f22123i = cursor.getColumnIndexOrThrow("subscription_id");
        this.f22124j = cursor.getColumnIndexOrThrow("tc_flag");
        this.f22125k = cursor.getColumnIndexOrThrow("subscription_component_name");
        this.f22126l = cursor.getColumnIndexOrThrow("action");
        this.f22127m = cursor.getColumnIndexOrThrow("filter_source");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: F */
    public int mo30516F() {
        return 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: X0 */
    public boolean mo30515X0() {
        boolean z = true;
        if (getInt(this.f22118d) != 1) {
            z = getStatus() != 8;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: Y */
    public boolean mo30514Y() {
        return getInt(this.f22117c) == 0 || getStatus() != 8;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: g2 */
    public long mo30511g2() {
        return getLong(this.f22116b);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    public long getId() {
        return getLong(this.f22115a);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    public Message getMessage() {
        Participant participant;
        int i;
        String string = getString(this.f22120f);
        if (string == null || string.length() == 0) {
            Participant participant2 = Participant.f11566B;
            Participant.C3848b c3848b = new Participant.C3848b(5);
            c3848b.f11598e = "hidden";
            c3848b.f11602i = 1;
            participant = c3848b.m35443a();
            l.d(participant, "Participant.buildFromHiddenNumber(true)");
        } else {
            participant = this.f22128n.mo30567a(string);
        }
        Message.C4209b c4209b = new Message.C4209b();
        c4209b.m35010c(mo30511g2());
        c4209b.f13423c = participant;
        c4209b.f13427g = getStatus();
        long id = getId();
        int i2 = getInt(this.f22121g);
        if (getInt(this.f22124j) == 3) {
            i = 1;
        } else {
            String string2 = getString(this.f22125k);
            if (string2 != null) {
                int hashCode = string2.hashCode();
                if (hashCode != -1547699361) {
                    if (hashCode == -847387129 && string2.equals("com.truecaller.voip.manager.VOIP")) {
                        i = 4;
                    }
                } else if (string2.equals(SupportMessenger.WHATSAPP)) {
                    i = 2;
                }
            }
            i = 0;
        }
        String string3 = getString(this.f22122h);
        int i3 = getInt(this.f22126l) != 1 ? 0 : 1;
        String string4 = getString(this.f22127m);
        if (string4 == null) {
            string4 = ActionSource.NONE.name();
        }
        HistoryTransportInfo historyTransportInfo = new HistoryTransportInfo(-1L, id, i2, i, string3, i3, string4);
        c4209b.f13431k = 5;
        c4209b.f13434n = historyTransportInfo;
        c4209b.m35006g(Entity.C4195a.m35042a(Entity.f13305h, 0L, "history", 0, "", false, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262133));
        c4209b.f13429i = mo30515X0();
        c4209b.f13428h = mo30514Y();
        c4209b.m35003j(getString(this.f22123i));
        Message m35012a = c4209b.m35012a();
        l.d(m35012a, "Message.Builder()\n      …Id))\n            .build()");
        return m35012a;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    public int getStatus() {
        int i = getInt(this.f22119e);
        return i != 2 ? i != 3 ? 0 : 8 : 1;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: q1 */
    public boolean mo30510q1() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: u1 */
    public String mo30509u1() {
        return null;
    }
}
