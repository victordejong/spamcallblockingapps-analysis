package p080e5;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
import p122i2.C3079o;
import p286x5.AbstractC4871e;
/* renamed from: e5.e0 */
/* loaded from: classes-dex2jar.jar:e5/e0.class */
public class C2548e0 implements AbstractC2551f0 {

    /* renamed from: g */
    public static final Pattern f8911g = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: h */
    public static final String f8912h = Pattern.quote("/");

    /* renamed from: a */
    public final C3079o f8913a;

    /* renamed from: b */
    public final Context f8914b;

    /* renamed from: c */
    public final String f8915c;

    /* renamed from: d */
    public final AbstractC4871e f8916d;

    /* renamed from: e */
    public final C2538a0 f8917e;

    /* renamed from: f */
    public String f8918f;

    public C2548e0(Context context, String str, AbstractC4871e abstractC4871e, C2538a0 c2538a0) {
        if (str != null) {
            this.f8914b = context;
            this.f8915c = str;
            this.f8916d = abstractC4871e;
            this.f8917e = c2538a0;
            this.f8913a = new C3079o();
            return;
        }
        throw new IllegalArgumentException("appIdentifier must not be null");
    }

    /* renamed from: b */
    public static String m3444b() {
        StringBuilder m8752j = C0082b.m8752j("SYN_");
        m8752j.append(UUID.randomUUID().toString());
        return m8752j.toString();
    }

    /* renamed from: a */
    public final String m3445a(String str, SharedPreferences sharedPreferences) {
        String lowerCase;
        synchronized (this) {
            String uuid = UUID.randomUUID().toString();
            lowerCase = uuid == null ? null : f8911g.matcher(uuid).replaceAll("").toLowerCase(Locale.US);
            Log.isLoggable("FirebaseCrashlytics", 2);
            sharedPreferences.edit().putString("crashlytics.installation.id", lowerCase).putString("firebase.installation.id", str).apply();
        }
        return lowerCase;
    }

    /* renamed from: c */
    public String m3443c() {
        String str;
        synchronized (this) {
            String str2 = this.f8918f;
            if (str2 != null) {
                return str2;
            }
            Log.isLoggable("FirebaseCrashlytics", 2);
            SharedPreferences m3451g = C2546e.m3451g(this.f8914b);
            String string = m3451g.getString("firebase.installation.id", null);
            Log.isLoggable("FirebaseCrashlytics", 2);
            if (this.f8917e.m3461a()) {
                try {
                    str = (String) C2564l0.m3433a(this.f8916d.getId());
                } catch (Exception e) {
                    Log.w("FirebaseCrashlytics", "Failed to retrieve Firebase Installations ID.", e);
                    str = null;
                }
                Log.isLoggable("FirebaseCrashlytics", 2);
                String str3 = str;
                if (str == null) {
                    str3 = string == null ? m3444b() : string;
                }
                if (str3.equals(string)) {
                    this.f8918f = m3451g.getString("crashlytics.installation.id", null);
                } else {
                    this.f8918f = m3445a(str3, m3451g);
                }
            } else {
                if (string != null && string.startsWith("SYN_")) {
                    this.f8918f = m3451g.getString("crashlytics.installation.id", null);
                } else {
                    this.f8918f = m3445a(m3444b(), m3451g);
                }
            }
            if (this.f8918f == null) {
                Log.w("FirebaseCrashlytics", "Unable to determine Crashlytics Install Id, creating a new one.", null);
                this.f8918f = m3445a(m3444b(), m3451g);
            }
            Log.isLoggable("FirebaseCrashlytics", 2);
            return this.f8918f;
        }
    }

    /* renamed from: d */
    public String m3442d() {
        String str;
        C3079o c3079o = this.f8913a;
        Context context = this.f8914b;
        synchronized (c3079o) {
            if (c3079o.f10435a == null) {
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                String str2 = installerPackageName;
                if (installerPackageName == null) {
                    str2 = "";
                }
                c3079o.f10435a = str2;
            }
            str = "".equals(c3079o.f10435a) ? null : c3079o.f10435a;
        }
        return str;
    }

    /* renamed from: e */
    public final String m3441e(String str) {
        return str.replaceAll(f8912h, "");
    }
}
