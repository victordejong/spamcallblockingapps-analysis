package p193e.p194a.p195a.p244k.p245a.p246a;

import android.content.Intent;
import android.os.Bundle;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.messaging.data.types.ImInviteGroupInfo;
import n3.b.a.h;
import s1.k;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.a.k.a.a.d */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/d.class */
public interface AbstractC6448d {
    /* renamed from: a */
    void mo30942a(h hVar);

    /* renamed from: b */
    void mo30941b(Event.ParticipantsRemoved participantsRemoved, long j, boolean z);

    /* renamed from: c */
    boolean mo30940c(String str, boolean z);

    /* renamed from: d */
    void mo30939d(Event.GroupDeleted groupDeleted, long j, boolean z);

    /* renamed from: e */
    k<ImInviteGroupInfo, String> mo30938e(String str);

    /* renamed from: f */
    void mo30937f(String str, l<? super Event, s> lVar);

    /* renamed from: g */
    boolean mo30936g(String str, Event event);

    /* renamed from: h */
    int mo30935h(String str);

    /* renamed from: i */
    void mo30934i(Event.GroupInviteKeyUpdated groupInviteKeyUpdated, long j, boolean z);

    /* renamed from: j */
    Long mo30933j(String str);

    /* renamed from: k */
    void mo30932k(Event.GroupCreated groupCreated, long j, boolean z);

    /* renamed from: l */
    void mo30931l(Event.ParticipantsAdded participantsAdded, long j, boolean z);

    /* renamed from: m */
    String mo30930m(String str);

    /* renamed from: n */
    Integer mo30929n(String str, String str2);

    /* renamed from: o */
    Bundle mo30928o(Intent intent);

    /* renamed from: p */
    String mo30927p(String str);

    /* renamed from: q */
    k<String, String> mo30926q(String str);

    /* renamed from: r */
    boolean mo30925r(String str);

    /* renamed from: s */
    void mo30924s(Event.RolesUpdated rolesUpdated, long j, boolean z);

    /* renamed from: t */
    void mo30923t(Event.GroupInfoUpdated groupInfoUpdated, long j, boolean z);
}
