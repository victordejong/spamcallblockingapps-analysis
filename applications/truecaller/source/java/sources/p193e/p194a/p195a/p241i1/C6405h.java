package p193e.p194a.p195a.p241i1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Int64Value;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import com.truecaller.data.entity.messaging.Participant;
import p193e.p194a.p437c.p578p.C10480a;
import s1.f0.q;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.a.i1.h */
/* loaded from: classes11-dex2jar.jar:e/a/a/i1/h.class */
public final class C6405h {
    /* renamed from: a */
    public static final boolean m31303a(Participant participant) {
        l.e(participant, "$this$canShowDetails");
        int i = participant.f11569b;
        boolean z = true;
        if (i != 0) {
            z = true;
            if (i != 1) {
                z = i == 3 && participant.f11574g != null && participant.f11581n == 1;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static final String m31302b(Participant participant) {
        l.e(participant, "$this$filterType");
        int i = participant.f11569b;
        String str = i == 3 ? "IM_ID" : i == 0 ? "PHONE_NUMBER" : "OTHER";
        l.d(str, "ParticipantUtils.getFilterType(this.type)");
        return str;
    }

    /* renamed from: c */
    public static final String m31301c(Participant participant) {
        l.e(participant, "$this$getDisplayName");
        String m25885v0 = C10480a.m25885v0(participant);
        l.d(m25885v0, "ParticipantUtils.getDisplayName(this)");
        return m25885v0;
    }

    /* renamed from: d */
    public static final String m31300d(Participant participant) {
        String str;
        l.e(participant, "$this$getGroupParticipantName");
        if (participant.f11569b != 3) {
            str = m31301c(participant);
        } else {
            String str2 = participant.f11579l;
            if (str2 != null) {
                str = str2;
            } else {
                l.e(participant, "$this$getPresentableAddress");
                str = C10480a.m26058J0(participant);
                l.d(str, "ParticipantUtils.getPresentableAddress(this)");
            }
            l.d(str, "name ?: getPresentableAddress()");
        }
        return str;
    }

    /* renamed from: e */
    public static final boolean m31299e(Participant[] participantArr) {
        l.e(participantArr, "$this$isGroup");
        return C10480a.m25914p1(participantArr);
    }

    /* renamed from: f */
    public static final boolean m31298f(Participant[] participantArr) {
        l.e(participantArr, "$this$isImGroup");
        return C10480a.m25904r1(participantArr);
    }

    /* renamed from: g */
    public static final InputPeer m31297g(Participant participant) {
        l.e(participant, "$this$toInputPeer");
        if (participant.f11569b == 4) {
            InputPeer.C3289b newBuilder = InputPeer.newBuilder();
            InputPeer.Group.C3286a newBuilder2 = InputPeer.Group.newBuilder();
            newBuilder2.m35899a(participant.f11572e);
            newBuilder.m35897a(newBuilder2);
            return newBuilder.build();
        } else if (participant.f11570c == null) {
            return null;
        } else {
            InputPeer.User.C3287a newBuilder3 = InputPeer.User.newBuilder();
            newBuilder3.m35898a(participant.f11570c);
            if (participant.f11569b == 0) {
                String str = participant.f11572e;
                l.d(str, "normalizedAddress");
                Long j = q.j(r.u(str, "+", "", false, 4));
                if (j != null) {
                    Int64Value of = Int64Value.of(j.longValue());
                    newBuilder3.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder3).instance.addKnownPhoneNumbers(of);
                }
            }
            InputPeer.C3289b newBuilder4 = InputPeer.newBuilder();
            newBuilder4.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder4).instance.setUser(newBuilder3.build());
            return newBuilder4.build();
        }
    }
}
