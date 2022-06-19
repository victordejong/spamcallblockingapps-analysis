package com.huawei.secure.android.common.util;

import android.content.Context;
import android.os.Binder;
import android.os.Process;
import android.support.v4.content.PermissionChecker;
import com.huawei.secure.android.common.exception.NoPermissionCheckerException;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/PermissionUtil.class */
public class PermissionUtil {

    /* renamed from: a */
    private static final String f8132a = "PermissionUtil";

    public static boolean checkCallingPermission(Context context, String str, String str2) throws NoPermissionCheckerException {
        if (Binder.getCallingPid() == Process.myPid()) {
            return false;
        }
        return checkPermission(context, str, Binder.getCallingPid(), Binder.getCallingUid(), str2);
    }

    public static boolean checkPermission(Context context, String str, int i, int i2, String str2) throws NoPermissionCheckerException {
        try {
            return PermissionChecker.checkPermission(context, str, i, i2, str2) == 0;
        } catch (Throwable th) {
            th.getMessage();
            throw new NoPermissionCheckerException("you should implementation support library or androidx library");
        }
    }

    public static boolean checkSelfPermission(Context context, String str) throws NoPermissionCheckerException {
        return checkPermission(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
