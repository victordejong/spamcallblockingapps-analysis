package org.mistergroup.shouldianswer.utils;

import android.util.Base64;
import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import java.nio.ByteBuffer;
import java.util.UUID;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
/* renamed from: org.mistergroup.shouldianswer.utils.ab */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/ab.class */
public final class C3077ab {

    /* renamed from: a */
    public static final C3077ab f8980a = new C3077ab();

    private C3077ab() {
    }

    /* renamed from: a */
    public final String m221a() {
        UUID randomUUID = UUID.randomUUID();
        ByteBuffer allocate = ByteBuffer.allocate(16);
        C1694h.m3122a((Object) randomUUID, "uuid");
        allocate.putLong(randomUUID.getMostSignificantBits());
        allocate.putLong(randomUUID.getLeastSignificantBits());
        String encodeToString = Base64.encodeToString(allocate.array(), 1);
        C1694h.m3122a((Object) encodeToString, "Base64.encodeToString(by…ray(), Base64.NO_PADDING)");
        return C1747g.m3037a(C1747g.m3037a(C1747g.m3037a(encodeToString, "/", AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR, false, 4, (Object) null), "\\", "-", false, 4, (Object) null), "\n", "", false, 4, (Object) null);
    }
}
