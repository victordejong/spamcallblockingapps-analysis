package com.sinch.verification.utils.api;

import android.os.Build;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0005R\u0011\u0010\u0007\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0011\u0010\b\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0005¨\u0006\t"}, m4298d2 = {"Lcom/sinch/verification/utils/api/ApiLevelUtils;", "", "()V", "isApi22OrLater", "", "()Z", "isApi23OrLater", "isApi24OrLater", "isApi29OrLater", "utils_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/utils/api/ApiLevelUtils.class */
public final class ApiLevelUtils {
    public static final ApiLevelUtils INSTANCE = new ApiLevelUtils();

    private ApiLevelUtils() {
    }

    public final boolean isApi22OrLater() {
        return Build.VERSION.SDK_INT >= 22;
    }

    public final boolean isApi23OrLater() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public final boolean isApi24OrLater() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public final boolean isApi29OrLater() {
        return Build.VERSION.SDK_INT >= 29;
    }
}
