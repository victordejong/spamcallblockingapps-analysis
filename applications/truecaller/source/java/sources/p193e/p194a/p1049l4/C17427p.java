package p193e.p194a.p1049l4;

import com.truecaller.api.services.presence.p139v1.models.Availability;
import com.truecaller.presence.AvailabilityContext;
import com.truecaller.presence.AvailabilityStatus;
/* renamed from: e.a.l4.p */
/* loaded from: classes12-dex2jar.jar:e/a/l4/p.class */
public final class C17427p {

    /* renamed from: a */
    public static C17409e f48801a;

    /* renamed from: a */
    public static String m16038a(Availability availability) {
        return AvailabilityStatus.fromGrpsStatus(availability.getStatus()).name() + "," + AvailabilityContext.fromGrpcContext(availability.getContext()).name();
    }
}
