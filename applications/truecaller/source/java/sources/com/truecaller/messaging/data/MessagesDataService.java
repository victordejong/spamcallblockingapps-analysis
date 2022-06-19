package com.truecaller.messaging.data;

import java.util.concurrent.TimeUnit;
import p193e.p194a.p1187r2.ServiceC19863i;
/* loaded from: classes6-dex2jar.jar:com/truecaller/messaging/data/MessagesDataService.class */
public class MessagesDataService extends ServiceC19863i {

    /* renamed from: g */
    public static final long f13169g = TimeUnit.SECONDS.toMillis(30);

    public MessagesDataService() {
        super("messages-storage", f13169g, true);
    }
}
