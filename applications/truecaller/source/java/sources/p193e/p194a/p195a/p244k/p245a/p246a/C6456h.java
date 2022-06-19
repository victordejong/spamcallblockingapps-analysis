package p193e.p194a.p195a.p244k.p245a.p246a;

import android.content.ContentValues;
import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.messenger.p138v1.models.ContextPermissions;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.ImGroupPermissions;
import java.util.concurrent.TimeUnit;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a.h */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/h.class */
public final class C6456h {

    /* renamed from: a */
    public static final ImGroupPermissions f21441a = new ImGroupPermissions(0, Integer.MAX_VALUE, 0, 0);

    /* renamed from: b */
    public static final long f21442b;

    /* renamed from: c */
    public static final long f21443c;

    static {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        f21442b = timeUnit.toMillis(5L);
        f21443c = timeUnit.toMillis(1L);
    }

    /* renamed from: a */
    public static final InputPeer m30910a(String str) {
        InputPeer.C3289b newBuilder = InputPeer.newBuilder();
        InputPeer.Group.C3286a newBuilder2 = InputPeer.Group.newBuilder();
        newBuilder2.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder2).instance.setId(str);
        newBuilder.m35897a(newBuilder2);
        InputPeer build = newBuilder.build();
        l.d(build, "InputPeer.newBuilder()\n …roupId))\n        .build()");
        return build;
    }

    /* renamed from: b */
    public static final Participant m30909b(String str) {
        Participant.C3848b c3848b = new Participant.C3848b(3);
        c3848b.f11598e = str;
        c3848b.f11596c = str;
        Participant m35443a = c3848b.m35443a();
        l.d(m35443a, "Participant.Builder(Part…PeerId(imId)\n    .build()");
        return m35443a;
    }

    /* renamed from: c */
    public static final ImGroupPermissions m30908c(ContextPermissions contextPermissions) {
        return new ImGroupPermissions(contextPermissions.getActions(), contextPermissions.getRoleUpdateRestrictionMask(), contextPermissions.getRoleUpdateMask(), contextPermissions.getSelfRoleUpdateMask());
    }

    /* renamed from: d */
    public static final InputPeer m30907d(Participant participant) {
        String str = participant.f11570c;
        AssertionUtil.AlwaysFatal.isFalse(str == null || str.length() == 0, new String[0]);
        InputPeer.C3289b newBuilder = InputPeer.newBuilder();
        InputPeer.User.C3287a newBuilder2 = InputPeer.User.newBuilder();
        newBuilder2.m35898a(participant.f11570c);
        newBuilder.m35896b((InputPeer.User) newBuilder2.build());
        InputPeer build = newBuilder.build();
        l.d(build, "InputPeer.newBuilder()\n …       )\n        .build()");
        return build;
    }

    /* renamed from: e */
    public static final long m30906e(int i) {
        return TimeUnit.SECONDS.toMillis(i);
    }

    /* renamed from: f */
    public static final ContentValues m30905f(ImGroupPermissions imGroupPermissions) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("actions", Integer.valueOf(imGroupPermissions.f13336a));
        contentValues.put("role_update_restriction_mask", Integer.valueOf(imGroupPermissions.f13337b));
        contentValues.put("role_update_mask", Integer.valueOf(imGroupPermissions.f13338c));
        contentValues.put("self_role_update_mask", Integer.valueOf(imGroupPermissions.f13339d));
        return contentValues;
    }
}
