package p081h.p203i.p204a.p224e.p235d;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7013p0;
import p081h.p203i.p204a.p224e.p235d.p249s.C7078j;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
/* renamed from: h.i.a.e.d.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/d.class */
public class C6793d {

    /* renamed from: a */
    public static final int f16688a = C6799g.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* renamed from: b */
    public static final C6793d f16689b = new C6793d();

    /* renamed from: a */
    public static C6793d m21896a() {
        return f16689b;
    }

    /* renamed from: b */
    public static String m21885b(@Nullable Context context, @Nullable String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f16688a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(C7097c.m21085b(context).m21087b(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public int mo21893a(Context context, int i) {
        int isGooglePlayServicesAvailable = C6799g.isGooglePlayServicesAvailable(context, i);
        int i2 = isGooglePlayServicesAvailable;
        if (C6799g.isPlayServicesPossiblyUpdating(context, isGooglePlayServicesAvailable)) {
            i2 = 18;
        }
        return i2;
    }

    @Nullable
    /* renamed from: a */
    public PendingIntent mo21892a(Context context, int i, int i2) {
        return m21891a(context, i, i2, null);
    }

    @Nullable
    /* renamed from: a */
    public PendingIntent m21891a(Context context, int i, int i2, @Nullable String str) {
        Intent a = mo21890a(context, i, str);
        if (a == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, a, 134217728);
    }

    @Nullable
    @Deprecated
    /* renamed from: a */
    public Intent m21895a(int i) {
        return mo21890a((Context) null, i, (String) null);
    }

    @Nullable
    /* renamed from: a */
    public Intent mo21890a(Context context, int i, @Nullable String str) {
        if (i == 1 || i == 2) {
            return (context == null || !C7078j.m21143c(context)) ? C7013p0.m21306a("com.google.android.gms", m21885b(context, str)) : C7013p0.m21308a();
        }
        if (i != 3) {
            return null;
        }
        return C7013p0.m21307a("com.google.android.gms");
    }

    /* renamed from: a */
    public void m21894a(Context context) {
        C6799g.cancelAvailabilityErrorNotifications(context);
    }

    /* renamed from: a */
    public boolean m21889a(Context context, String str) {
        return C6799g.isUninstalledAppPossiblyUpdating(context, str);
    }

    /* renamed from: b */
    public int m21887b(Context context) {
        return C6799g.getApkVersion(context);
    }

    @NonNull
    /* renamed from: b */
    public String mo21888b(int i) {
        return C6799g.getErrorString(i);
    }

    /* renamed from: b */
    public boolean m21886b(Context context, int i) {
        return C6799g.isPlayServicesPossiblyUpdating(context, i);
    }

    /* renamed from: c */
    public int mo21883c(Context context) {
        return mo21893a(context, f16688a);
    }

    /* renamed from: c */
    public boolean mo21884c(int i) {
        return C6799g.isUserRecoverableError(i);
    }
}
