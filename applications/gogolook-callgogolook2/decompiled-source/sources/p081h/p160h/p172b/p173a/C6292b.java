package p081h.p160h.p172b.p173a;

import android.app.role.RoleManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Telephony;
import android.telecom.TelecomManager;
import androidx.annotation.RequiresApi;
import androidx.core.role.RoleManagerCompat;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.ApexHomeBadger;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0002\u0012\u0013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\u0004H\u0007J\u001c\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\u0004H\u0007J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\nH\u0003J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\u0004H\u0007J\u001a\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0014"}, m815d2 = {"Lcom/gogolook/commonlib/util/RoleManagerCompat;", "", "()V", "ROLE_CALL_SCREENING", "", "ROLE_DIALER", "ROLE_SMS", "createRequestRoleIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "roleName", "createRevertRoleIntent", "getRoleManager", "Landroid/app/role/RoleManager;", "isRoleAvailable", "", "isRoleHeld", "Legacy", "RoleName", "commonLib_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.b.a.b */
/* loaded from: classes2-dex2jar.jar:h/h/b/a/b.class */
public final class C6292b {

    /* renamed from: a */
    public static final C6292b f15596a = new C6292b();

    /* renamed from: h.h.b.a.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/b/a/b$a.class */
    public static final class C6293a {

        /* renamed from: a */
        public static final C6293a f15597a = new C6293a();

        /* renamed from: a */
        public final Intent m23375a(Context context) {
            C15149k.m377b(context, "context");
            return m23376a() ? new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER").putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", context.getPackageName()) : null;
        }

        /* renamed from: a */
        public final Intent m23374a(Context context, String str) {
            Intent intent;
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "roleName");
            int hashCode = str.hashCode();
            if (hashCode == -1309649439) {
                if (str.equals(RoleManagerCompat.ROLE_CALL_SCREENING)) {
                    intent = m23375a(context);
                    return intent;
                }
                throw new IllegalArgumentException("Not supported role " + str);
            } else if (hashCode != 443215373) {
                if (hashCode == 666116809 && str.equals(RoleManagerCompat.ROLE_DIALER)) {
                    intent = m23372b(context);
                    return intent;
                }
                throw new IllegalArgumentException("Not supported role " + str);
            } else {
                if (str.equals(RoleManagerCompat.ROLE_SMS)) {
                    intent = m23369c(context);
                    return intent;
                }
                throw new IllegalArgumentException("Not supported role " + str);
            }
        }

        /* renamed from: a */
        public final boolean m23376a() {
            return Build.VERSION.SDK_INT >= 24;
        }

        /* renamed from: b */
        public final Intent m23372b(Context context) {
            C15149k.m377b(context, "context");
            return m23373b() ? new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER").putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", context.getPackageName()) : null;
        }

        /* renamed from: b */
        public final boolean m23373b() {
            return Build.VERSION.SDK_INT >= 23;
        }

        /* renamed from: b */
        public final boolean m23371b(Context context, String str) {
            boolean z;
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "roleName");
            int hashCode = str.hashCode();
            if (hashCode == -1309649439) {
                if (str.equals(RoleManagerCompat.ROLE_CALL_SCREENING)) {
                    z = m23376a();
                    return z;
                }
                throw new IllegalArgumentException("Not supported role " + str);
            } else if (hashCode != 443215373) {
                if (hashCode == 666116809 && str.equals(RoleManagerCompat.ROLE_DIALER)) {
                    z = m23373b();
                    return z;
                }
                throw new IllegalArgumentException("Not supported role " + str);
            } else {
                if (str.equals(RoleManagerCompat.ROLE_SMS)) {
                    z = m23370c();
                    return z;
                }
                throw new IllegalArgumentException("Not supported role " + str);
            }
        }

        /* renamed from: c */
        public final Intent m23369c(Context context) {
            C15149k.m377b(context, "context");
            return m23370c() ? new Intent("android.provider.Telephony.ACTION_CHANGE_DEFAULT").putExtra(ApexHomeBadger.PACKAGENAME, context.getPackageName()) : null;
        }

        /* renamed from: c */
        public final boolean m23370c() {
            return Build.VERSION.SDK_INT >= 19;
        }

        /* renamed from: c */
        public final boolean m23368c(Context context, String str) {
            boolean z;
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "roleName");
            int hashCode = str.hashCode();
            if (hashCode == -1309649439) {
                if (str.equals(RoleManagerCompat.ROLE_CALL_SCREENING)) {
                    z = m23367d(context);
                    return z;
                }
                throw new IllegalArgumentException("Not supported role " + str);
            } else if (hashCode != 443215373) {
                if (hashCode == 666116809 && str.equals(RoleManagerCompat.ROLE_DIALER)) {
                    z = m23366e(context);
                    return z;
                }
                throw new IllegalArgumentException("Not supported role " + str);
            } else {
                if (str.equals(RoleManagerCompat.ROLE_SMS)) {
                    z = m23365f(context);
                    return z;
                }
                throw new IllegalArgumentException("Not supported role " + str);
            }
        }

        /* renamed from: d */
        public final boolean m23367d(Context context) {
            C15149k.m377b(context, "context");
            return m23376a() && m23366e(context);
        }

        /* renamed from: e */
        public final boolean m23366e(Context context) {
            boolean z;
            C15149k.m377b(context, "context");
            if (m23373b()) {
                Object systemService = context.getSystemService("telecom");
                boolean z2 = systemService instanceof TelecomManager;
                String str = null;
                if (!z2) {
                    systemService = null;
                }
                TelecomManager telecomManager = (TelecomManager) systemService;
                if (telecomManager != null) {
                    str = telecomManager.getDefaultDialerPackage();
                }
                if (C15149k.m384a((Object) str, (Object) context.getPackageName())) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        /* renamed from: f */
        public final boolean m23365f(Context context) {
            C15149k.m377b(context, "context");
            boolean z = false;
            try {
                if (m23370c()) {
                    z = false;
                    if (C15149k.m384a((Object) Telephony.Sms.getDefaultSmsPackage(context), (Object) context.getPackageName())) {
                        z = true;
                    }
                }
            } catch (Exception e) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    public static final Intent m23380a(Context context, String str) {
        Intent intent;
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "roleName");
        if (Build.VERSION.SDK_INT >= 29) {
            RoleManager a = f15596a.m23381a(context);
            intent = a != null ? a.createRequestRoleIntent(str) : null;
        } else {
            intent = C6293a.f15597a.m23374a(context, str);
        }
        return intent;
    }

    /* renamed from: b */
    public static final Intent m23379b(Context context, String str) {
        Intent intent;
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "roleName");
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            intent = new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS");
        } else if (i >= 23) {
            Intent intent2 = new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS");
            intent = intent2.resolveActivity(context.getPackageManager()) != null ? intent2 : null;
            if (intent == null) {
                intent = new Intent("android.settings.SETTINGS");
            }
        } else if (C15149k.m384a((Object) RoleManagerCompat.ROLE_SMS, (Object) str)) {
            intent = new Intent("android.settings.WIRELESS_SETTINGS");
        } else {
            throw new IllegalArgumentException("Not supported role " + str + " on SDK version " + Build.VERSION.SDK_INT);
        }
        return intent;
    }

    /* renamed from: c */
    public static final boolean m23378c(Context context, String str) {
        Boolean bool;
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "roleName");
        if (Build.VERSION.SDK_INT >= 29) {
            RoleManager a = f15596a.m23381a(context);
            bool = a != null ? Boolean.valueOf(a.isRoleAvailable(str)) : null;
        } else {
            bool = Boolean.valueOf(C6293a.f15597a.m23371b(context, str));
        }
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: d */
    public static final boolean m23377d(Context context, String str) {
        Boolean bool;
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "roleName");
        if (Build.VERSION.SDK_INT >= 29) {
            RoleManager a = f15596a.m23381a(context);
            bool = a != null ? Boolean.valueOf(a.isRoleHeld(str)) : null;
        } else {
            bool = Boolean.valueOf(C6293a.f15597a.m23368c(context, str));
        }
        return bool != null ? bool.booleanValue() : false;
    }

    @RequiresApi(29)
    /* renamed from: a */
    public final RoleManager m23381a(Context context) {
        return (RoleManager) context.getSystemService(RoleManager.class);
    }
}
