package android.support.p001v4.content.p002pm;

import android.annotation.SuppressLint;
import android.content.pm.PermissionInfo;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* renamed from: android.support.v4.content.pm.PermissionInfoCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/content/pm/PermissionInfoCompat.class */
public final class PermissionInfoCompat {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: android.support.v4.content.pm.PermissionInfoCompat$Protection */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/pm/PermissionInfoCompat$Protection.class */
    public @interface Protection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @SuppressLint({"UniqueConstants"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: android.support.v4.content.pm.PermissionInfoCompat$ProtectionFlags */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/pm/PermissionInfoCompat$ProtectionFlags.class */
    public @interface ProtectionFlags {
    }

    private PermissionInfoCompat() {
    }

    @SuppressLint({"WrongConstant"})
    public static int getProtection(@NonNull PermissionInfo permissionInfo) {
        return Build.VERSION.SDK_INT >= 28 ? permissionInfo.getProtection() : permissionInfo.protectionLevel & 15;
    }

    @SuppressLint({"WrongConstant"})
    public static int getProtectionFlags(@NonNull PermissionInfo permissionInfo) {
        return Build.VERSION.SDK_INT >= 28 ? permissionInfo.getProtectionFlags() : permissionInfo.protectionLevel & (-16);
    }
}
