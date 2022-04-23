package com.inmobi.commons.core.utilities;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailability;
import com.inmobi.commons.p508a.C8326a;
/* renamed from: com.inmobi.commons.core.utilities.f */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/f.class */
public final class C8409f {

    /* renamed from: a */
    public static final String f32690a = "f";

    /* renamed from: a */
    public static boolean m5640a(String str) {
        Context b = C8326a.m5891b();
        if (b == null) {
            return false;
        }
        try {
            return GoogleApiAvailability.m17826a().mo17799c(b) == 0;
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error in connecting to GooglePlayServices API for component ");
            sb.append(str);
            sb.append(" : (");
            sb.append(e.getMessage());
            sb.append(")");
            return false;
        } catch (NoClassDefFoundError e2) {
            return false;
        }
    }
}
