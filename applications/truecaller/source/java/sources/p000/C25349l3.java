package p000;

import android.content.Intent;
import android.view.View;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.incallui.callui.ongoing.OngoingCallUIEvent;
import com.truecaller.messaging.conversation.ConversationActivity;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p717f.C13722p;
import p193e.p194a.p717f.p718a.p721b.AbstractC13589i;
import p193e.p194a.p717f.p718a.p721b.C13577c;
import p193e.p194a.p717f.p718a.p721b.C13590j;
import q3.a.w2.h;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: l3 */
/* loaded from: classes6-dex2jar.jar:l3.class */
public final class C25349l3 extends m implements p<View, Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ int f70762b;

    /* renamed from: c */
    public final /* synthetic */ Object f70763c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25349l3(int i, Object obj) {
        super(2);
        this.f70762b = i;
        this.f70763c = obj;
    }

    /* renamed from: k */
    public final Object m3701k(Object obj, Object obj2) {
        s sVar = s.a;
        int i = this.f70762b;
        if (i == 0) {
            ((Boolean) obj2).booleanValue();
            l.e((View) obj, "<anonymous parameter 0>");
            C13590j c13590j = (C13590j) ((C13577c) this.f70763c).mo21466QA();
            c13590j.f39377q.mo21064o0();
            AbstractC13589i abstractC13589i = (AbstractC13589i) c13590j.f57683a;
            if (abstractC13589i != null) {
                abstractC13589i.mo21551y5();
            }
            h<OngoingCallUIEvent> hVar = c13590j.f39370j;
            if (hVar != null) {
                hVar.offer(OngoingCallUIEvent.KEYPAD_CLICK);
                return sVar;
            }
            l.l("uiEventsChannel");
            throw null;
        } else if (i == 1) {
            ((Boolean) obj2).booleanValue();
            l.e((View) obj, "<anonymous parameter 0>");
            C13590j c13590j2 = (C13590j) ((C13577c) this.f70763c).mo21466QA();
            AbstractC13589i abstractC13589i2 = (AbstractC13589i) c13590j2.f57683a;
            if (abstractC13589i2 != null) {
                abstractC13589i2.mo21550z9();
            }
            h<OngoingCallUIEvent> hVar2 = c13590j2.f39370j;
            if (hVar2 != null) {
                hVar2.offer(OngoingCallUIEvent.ADD_CALL_CLICK);
                return sVar;
            }
            l.l("uiEventsChannel");
            throw null;
        } else if (i == 2) {
            ((Boolean) obj2).booleanValue();
            l.e((View) obj, "<anonymous parameter 0>");
            C13590j c13590j3 = (C13590j) ((C13577c) this.f70763c).mo21466QA();
            c13590j3.f39376p.mo21226D();
            AbstractC13589i abstractC13589i3 = (AbstractC13589i) c13590j3.f57683a;
            if (abstractC13589i3 != null) {
                abstractC13589i3.mo21574an();
            }
            h<OngoingCallUIEvent> hVar3 = c13590j3.f39370j;
            if (hVar3 != null) {
                hVar3.offer(OngoingCallUIEvent.MERGE_CLICK);
                return sVar;
            }
            l.l("uiEventsChannel");
            throw null;
        } else if (i == 3) {
            ((Boolean) obj2).booleanValue();
            l.e((View) obj, "<anonymous parameter 0>");
            ((C13590j) ((C13577c) this.f70763c).mo21466QA()).m21539Zj();
            return sVar;
        } else if (i == 4) {
            ((Boolean) obj2).booleanValue();
            l.e((View) obj, "<anonymous parameter 0>");
            C13590j c13590j4 = (C13590j) ((C13577c) this.f70763c).mo21466QA();
            c13590j4.f39376p.mo21194m();
            AbstractC13589i abstractC13589i4 = (AbstractC13589i) c13590j4.f57683a;
            if (abstractC13589i4 != null) {
                abstractC13589i4.mo21591Lm();
            }
            return sVar;
        } else if (i != 5) {
            throw null;
        } else {
            ((Boolean) obj2).booleanValue();
            l.e((View) obj, "<anonymous parameter 0>");
            C13590j c13590j5 = (C13590j) ((C13577c) this.f70763c).mo21466QA();
            String mo21200g = c13590j5.f39376p.mo21200g();
            if (mo21200g != null) {
                C13722p c13722p = c13590j5.f39366A;
                Objects.requireNonNull(c13722p);
                l.e(mo21200g, "number");
                AbstractC19462a abstractC19462a = (AbstractC19462a) c13722p.f39752c.get();
                AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("InCallUiMessageBtnPressed", null, null, null);
                l.d(c19505a, "AnalyticsEvent.Builder(A…eBtnPressed.NAME).build()");
                abstractC19462a.mo13271e(c19505a);
                Object[] array = C25225a.m3962T1(Participant.m35458a(mo21200g, (AbstractC8621z) c13722p.f39751b.get(), ((AbstractC8621z) c13722p.f39751b.get()).mo28189b())).toArray(new Participant[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                Participant[] participantArr = (Participant[]) array;
                Intent intent = new Intent(c13722p.f39750a, ConversationActivity.class);
                intent.putExtra("participants", participantArr);
                intent.putExtra("launch_source", "incallui");
                intent.setFlags(335544320);
                c13722p.f39750a.startActivity(intent);
            }
            return sVar;
        }
    }
}
