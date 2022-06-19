package p193e.p194a.p195a.p271o.p272a;

import com.truecaller.calling.recorder.CallRecordingsListMvp$ActionType;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1356x2.C21391a;
import p193e.p194a.p372b0.p430q.AbstractC8584h0;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.a.l;
/* renamed from: e.a.a.o.a.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/a/e.class */
public final class C7056e extends AbstractC18894c<AbstractC7054c> implements AbstractC7055d {

    /* renamed from: i */
    public static final /* synthetic */ l[] f22755i = {C22128a.m8621g0(C7056e.class, "historyEventCursor", "getHistoryEventCursor()Lcom/truecaller/callhistory/data/cursor/HistoryEventCursor;", 0)};

    /* renamed from: b */
    public final AbstractC7057f f22756b;

    /* renamed from: c */
    public final AbstractC7057f f22757c;

    /* renamed from: d */
    public final AbstractC7053b f22758d;

    /* renamed from: e */
    public final AbstractC8584h0 f22759e;

    /* renamed from: f */
    public final AbstractC19223c0 f22760f;

    /* renamed from: g */
    public final AbstractC18951b0 f22761g;

    /* renamed from: h */
    public final C21391a f22762h;

    @Inject
    public C7056e(AbstractC7057f abstractC7057f, AbstractC7053b abstractC7053b, AbstractC8584h0 abstractC8584h0, AbstractC19223c0 abstractC19223c0, AbstractC18951b0 abstractC18951b0, C21391a c21391a) {
        s1.z.c.l.e(abstractC7057f, "listModel");
        s1.z.c.l.e(abstractC7053b, "itemCallback");
        s1.z.c.l.e(abstractC8584h0, "specialNumberResolver");
        s1.z.c.l.e(abstractC19223c0, "resourceProvider");
        s1.z.c.l.e(abstractC18951b0, "dateHelper");
        s1.z.c.l.e(c21391a, "contactAvatarXConfigProvider");
        this.f22757c = abstractC7057f;
        this.f22758d = abstractC7053b;
        this.f22759e = abstractC8584h0;
        this.f22760f = abstractC19223c0;
        this.f22761g = abstractC18951b0;
        this.f22762h = c21391a;
        this.f22756b = abstractC7057f;
    }

    /* renamed from: A */
    public final HistoryEvent m30213A(int i) {
        AbstractC17373b m30212B = m30212B();
        HistoryEvent historyEvent = null;
        if (m30212B != null) {
            historyEvent = null;
            if (m30212B.moveToPosition(i)) {
                historyEvent = m30212B.mo16159n();
            }
        }
        return historyEvent;
    }

    /* renamed from: B */
    public final AbstractC17373b m30212B() {
        return this.f22756b.mo30185kj(this, f22755i[0]);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC7054c abstractC7054c, int i) {
        AbstractC7054c abstractC7054c2 = abstractC7054c;
        s1.z.c.l.e(abstractC7054c2, "itemView");
        HistoryEvent m30213A = m30213A(i);
        if (m30213A != null) {
            Contact contact = m30213A.f11539f;
            if (!C18334g0.m15236c0(contact)) {
                contact = null;
            }
            Contact m15260J0 = C18334g0.m15260J0(contact, m30213A, this.f22760f, this.f22759e);
            CallRecording callRecording = m30213A.f11547n;
            if (callRecording == null) {
                return;
            }
            s1.z.c.l.d(callRecording, "historyEvent.callRecording ?: return");
            String m28239a = C8605o.m28239a(m15260J0.m35489x());
            s1.z.c.l.d(m28239a, "GUIUtils.bidiFormat(contact.displayNameOrNumber)");
            abstractC7054c2.setTitle(m28239a);
            String mo30182w3 = this.f22757c.mo30182w3(callRecording.f11505c);
            if (mo30182w3 == null) {
                mo30182w3 = "";
            }
            abstractC7054c2.mo30215c(mo30182w3);
            abstractC7054c2.mo30214p(this.f22761g.mo14281n(m30213A.f11541h).toString());
            abstractC7054c2.mo30217a(this.f22762h.mo9781a(m15260J0));
            abstractC7054c2.mo30216b(this.f22757c.mo30187f1().contains(Long.valueOf(callRecording.f11503a)));
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        AbstractC17373b m30212B = m30212B();
        return m30212B != null ? m30212B.getCount() : 0;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        AbstractC17373b m30212B = m30212B();
        char c = 65535;
        if (m30212B != null) {
            c = 65535;
            if (m30212B.moveToPosition(i)) {
                HistoryEvent mo16159n = m30212B.mo16159n();
                c = 65535;
                if (mo16159n != null) {
                    CallRecording callRecording = mo16159n.f11547n;
                    c = 65535;
                    if (callRecording != null) {
                        c = callRecording.f11503a;
                    }
                }
            }
        }
        return c;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        s1.z.c.l.e(c18900h, "event");
        HistoryEvent m30213A = m30213A(c18900h.f53002b);
        boolean z = false;
        if (m30213A != null) {
            CallRecording callRecording = m30213A.f11547n;
            z = false;
            if (callRecording != null) {
                s1.z.c.l.d(callRecording, "getEvent(event.position)…Recording ?: return false");
                String str = c18900h.f53001a;
                if (s1.z.c.l.a(str, "ItemEvent.CLICKED")) {
                    z = this.f22758d.mo30189Qi(callRecording);
                } else if (s1.z.c.l.a(str, "ItemEvent.LONG_CLICKED")) {
                    z = this.f22758d.mo30181yi(callRecording);
                } else if (s1.z.c.l.a(str, CallRecordingsListMvp$ActionType.PLAY_CALL_RECORDING.getEventAction())) {
                    z = this.f22758d.mo30179z4(callRecording);
                } else {
                    z = false;
                    if (s1.z.c.l.a(str, CallRecordingsListMvp$ActionType.DELETE_CALL_RECORDING.getEventAction())) {
                        z = this.f22758d.mo30192B5(callRecording);
                    }
                }
            }
        }
        return z;
    }
}
