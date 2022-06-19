package com.sinch.logging;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\u001a\n\u0010��\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m4298d2 = {"logger", "Lcom/sinch/logging/Logger;", "", "tag", "", "logging_productionRelease"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/logging/LogKt.class */
public final class LogKt {
    public static final Logger logger(Object logger) {
        C18524p.m3841c(logger, "$this$logger");
        return Log.create$default(logger, null, 2, null);
    }

    public static final Logger logger(Object logger, String tag) {
        C18524p.m3841c(logger, "$this$logger");
        C18524p.m3841c(tag, "tag");
        return Log.create(logger, tag);
    }
}
