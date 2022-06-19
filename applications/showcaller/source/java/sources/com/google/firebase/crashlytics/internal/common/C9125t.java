package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.installations.AbstractC9214g;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
/* renamed from: com.google.firebase.crashlytics.internal.common.t */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/t.class */
public class C9125t implements AbstractC9126u {

    /* renamed from: a */
    private static final Pattern f39400a = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: b */
    private static final String f39401b = Pattern.quote("/");

    /* renamed from: c */
    private final C9127v f39402c;

    /* renamed from: d */
    private final Context f39403d;

    /* renamed from: e */
    private final String f39404e;

    /* renamed from: f */
    private final AbstractC9214g f39405f;

    /* renamed from: g */
    private String f39406g;

    public C9125t(Context context, String str, AbstractC9214g abstractC9214g) {
        if (context != null) {
            if (str == null) {
                throw new IllegalArgumentException("appIdentifier must not be null");
            }
            this.f39403d = context;
            this.f39404e = str;
            this.f39405f = abstractC9214g;
            this.f39402c = new C9127v();
            return;
        }
        throw new IllegalArgumentException("appContext must not be null");
    }

    /* renamed from: b */
    private String m1781b(String str, SharedPreferences sharedPreferences) {
        String m1780c;
        synchronized (this) {
            m1780c = m1780c(UUID.randomUUID().toString());
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2394i("Created new Crashlytics installation ID: " + m1780c);
            sharedPreferences.edit().putString("crashlytics.installation.id", m1780c).putString("firebase.installation.id", str).apply();
        }
        return m1780c;
    }

    /* renamed from: c */
    private static String m1780c(String str) {
        return str == null ? null : f39400a.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    /* renamed from: i */
    private void m1774i(String str, String str2, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        synchronized (this) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2394i("Migrating legacy Crashlytics installation ID: " + str);
            sharedPreferences.edit().putString("crashlytics.installation.id", str).putString("firebase.installation.id", str2).apply();
            sharedPreferences2.edit().remove("crashlytics.installation.id").remove("crashlytics.advertising.id").apply();
        }
    }

    /* renamed from: j */
    private String m1773j(String str) {
        return str.replaceAll(f39401b, "");
    }

    @Override // com.google.firebase.crashlytics.internal.common.AbstractC9126u
    /* renamed from: a */
    public String mo1772a() {
        String str;
        synchronized (this) {
            String str2 = this.f39406g;
            if (str2 != null) {
                return str2;
            }
            C8898b.m2397f().m2394i("Determining Crashlytics installation ID...");
            SharedPreferences m1956s = CommonUtils.m1956s(this.f39403d);
            AbstractC7966g<String> id = this.f39405f.getId();
            String string = m1956s.getString("firebase.installation.id", null);
            try {
                str = (String) C9086f0.m1918a(id);
            } catch (Exception e) {
                C8898b.m2397f().m2391l("Failed to retrieve Firebase Installations ID.", e);
                str = string != null ? string : null;
            }
            if (string == null) {
                C8898b.m2397f().m2394i("No cached Firebase Installations ID found.");
                SharedPreferences m1961n = CommonUtils.m1961n(this.f39403d);
                String string2 = m1961n.getString("crashlytics.installation.id", null);
                if (string2 == null) {
                    C8898b.m2397f().m2394i("No legacy Crashlytics installation ID found, creating new ID.");
                    this.f39406g = m1781b(str, m1956s);
                } else {
                    C8898b.m2397f().m2394i("A legacy Crashlytics installation ID was found. Upgrading.");
                    this.f39406g = string2;
                    m1774i(string2, str, m1956s, m1961n);
                }
            } else if (string.equals(str)) {
                this.f39406g = m1956s.getString("crashlytics.installation.id", null);
                C8898b.m2397f().m2394i("Firebase Installations ID is unchanged from previous startup.");
                if (this.f39406g == null) {
                    C8898b.m2397f().m2394i("Crashlytics installation ID was null, creating new ID.");
                    this.f39406g = m1781b(str, m1956s);
                }
            } else {
                this.f39406g = m1781b(str, m1956s);
            }
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2394i("Crashlytics installation ID is " + this.f39406g);
            return this.f39406g;
        }
    }

    /* renamed from: d */
    public String m1779d() {
        return this.f39404e;
    }

    /* renamed from: e */
    public String m1778e() {
        return this.f39402c.m1771a(this.f39403d);
    }

    /* renamed from: f */
    public String m1777f() {
        return String.format(Locale.US, "%s/%s", m1773j(Build.MANUFACTURER), m1773j(Build.MODEL));
    }

    /* renamed from: g */
    public String m1776g() {
        return m1773j(Build.VERSION.INCREMENTAL);
    }

    /* renamed from: h */
    public String m1775h() {
        return m1773j(Build.VERSION.RELEASE);
    }
}
