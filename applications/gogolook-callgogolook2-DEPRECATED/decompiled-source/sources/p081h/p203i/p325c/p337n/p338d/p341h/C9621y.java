package p081h.p203i.p325c.p337n.p338d.p341h;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.annotation.NonNull;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p367v.AbstractC9941h;
/* renamed from: h.i.c.n.d.h.y */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/y.class */
public class C9621y implements AbstractC9622z {

    /* renamed from: f */
    public static final Pattern f21920f = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: g */
    public static final String f21921g = Pattern.quote("/");

    /* renamed from: a */
    public final C9532a0 f21922a;

    /* renamed from: b */
    public final Context f21923b;

    /* renamed from: c */
    public final String f21924c;

    /* renamed from: d */
    public final AbstractC9941h f21925d;

    /* renamed from: e */
    public String f21926e;

    public C9621y(Context context, String str, AbstractC9941h hVar) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        } else if (str != null) {
            this.f21923b = context;
            this.f21924c = str;
            this.f21925d = hVar;
            this.f21922a = new C9532a0();
        } else {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
    }

    /* renamed from: b */
    public static String m14686b(String str) {
        return str == null ? null : f21920f.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9622z
    @NonNull
    /* renamed from: a */
    public String mo14681a() {
        String str;
        synchronized (this) {
            if (this.f21926e != null) {
                return this.f21926e;
            }
            SharedPreferences h = C9546h.m14912h(this.f21923b);
            AbstractC9143h<String> id = this.f21925d.getId();
            String string = h.getString("firebase.installation.id", null);
            try {
                str = (String) C9596l0.m14767a(id);
            } catch (Exception e) {
                C9513b.m15015a().m15012a("Failed to retrieve installation id", e);
                str = string != null ? string : null;
            }
            if (string == null) {
                SharedPreferences d = C9546h.m14916d(this.f21923b);
                String string2 = d.getString("crashlytics.installation.id", null);
                C9513b a = C9513b.m15015a();
                a.m15013a("No cached FID; legacy id is " + string2);
                if (string2 == null) {
                    this.f21926e = m14689a(str, h);
                } else {
                    this.f21926e = string2;
                    m14688a(string2, str, h, d);
                }
                return this.f21926e;
            }
            if (string.equals(str)) {
                this.f21926e = h.getString("crashlytics.installation.id", null);
                C9513b a2 = C9513b.m15015a();
                a2.m15013a("Found matching FID, using Crashlytics IID: " + this.f21926e);
                if (this.f21926e == null) {
                    this.f21926e = m14689a(str, h);
                }
            } else {
                this.f21926e = m14689a(str, h);
            }
            return this.f21926e;
        }
    }

    /* renamed from: a */
    public final String m14690a(String str) {
        return str.replaceAll(f21921g, "");
    }

    /* renamed from: a */
    public final String m14689a(String str, SharedPreferences sharedPreferences) {
        String b;
        synchronized (this) {
            b = m14686b(UUID.randomUUID().toString());
            C9513b a = C9513b.m15015a();
            a.m15013a("Created new Crashlytics IID: " + b);
            sharedPreferences.edit().putString("crashlytics.installation.id", b).putString("firebase.installation.id", str).apply();
        }
        return b;
    }

    /* renamed from: a */
    public final void m14688a(String str, String str2, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        synchronized (this) {
            C9513b a = C9513b.m15015a();
            a.m15013a("Migrating legacy Crashlytics IID: " + str);
            sharedPreferences.edit().putString("crashlytics.installation.id", str).putString("firebase.installation.id", str2).apply();
            sharedPreferences2.edit().remove("crashlytics.installation.id").remove("crashlytics.advertising.id").apply();
        }
    }

    /* renamed from: b */
    public String m14687b() {
        return this.f21924c;
    }

    /* renamed from: c */
    public String m14685c() {
        return this.f21922a.m14970a(this.f21923b);
    }

    /* renamed from: d */
    public String m14684d() {
        return String.format(Locale.US, "%s/%s", m14690a(Build.MANUFACTURER), m14690a(Build.MODEL));
    }

    /* renamed from: e */
    public String m14683e() {
        return m14690a(Build.VERSION.INCREMENTAL);
    }

    /* renamed from: f */
    public String m14682f() {
        return m14690a(Build.VERSION.RELEASE);
    }
}
