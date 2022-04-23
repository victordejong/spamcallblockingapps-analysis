package com.inmobi.commons.core.utilities;

import android.content.Context;
import com.inmobi.commons.core.p513e.C8366b;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.util.HashMap;
/* renamed from: com.inmobi.commons.core.utilities.e */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/e.class */
public final class C8408e {
    /* renamed from: a */
    public static boolean m5641a(Context context, String str, String str2) {
        try {
            return context.checkCallingOrSelfPermission(str2) == 0;
        } catch (Exception e) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("type", "RuntimeException");
                hashMap.put(AvidVideoPlaybackListenerImpl.MESSAGE, e.getMessage());
                C8366b.m5794a();
                C8366b.m5789a(str, "ExceptionCaught", hashMap);
                return false;
            } catch (Exception e2) {
                StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                sb.append(e.getMessage());
                sb.append(")");
                return false;
            }
        }
    }
}
