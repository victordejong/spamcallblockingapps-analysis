package com.truecaller.presence;

import java.util.concurrent.TimeUnit;
import p193e.p194a.p1187r2.ServiceC19863i;
/* loaded from: classes12-dex2jar.jar:com/truecaller/presence/PresenceService.class */
public class PresenceService extends ServiceC19863i {
    public PresenceService() {
        super("presence", TimeUnit.SECONDS.toMillis(30L), true);
    }
}
