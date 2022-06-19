package com.criteo.publisher.p252k;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.p252k.p253a.C8374d;
import com.criteo.publisher.p256m0.C8446q;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.criteo.publisher.k.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/c.class */
public class C8380c {

    /* renamed from: a */
    public static final Pattern f30067a = Pattern.compile("^1([YN\\-yn]){3}$");

    /* renamed from: b */
    public static final List<String> f30068b = Arrays.asList("1ynn", "1yny", "1---", "", "1yn-", "1-n-");

    /* renamed from: c */
    public static final List<String> f30069c = Arrays.asList("explicit_no", "potential_whitelist", "dnt");

    /* renamed from: d */
    public final C8374d f30070d;

    /* renamed from: e */
    private final C8402g f30071e;

    /* renamed from: f */
    private final C8446q f30072f;

    /* renamed from: g */
    private final SharedPreferences f30073g;

    public C8380c(Context context) {
        this(PreferenceManager.getDefaultSharedPreferences(context), new C8374d(context));
    }

    C8380c(SharedPreferences sharedPreferences, C8374d c8374d) {
        this.f30071e = C8404h.m25741a(getClass());
        this.f30073g = sharedPreferences;
        this.f30072f = new C8446q(sharedPreferences);
        this.f30070d = c8374d;
    }

    /* renamed from: a */
    public final String m25758a() {
        return this.f30072f.m25671a("IABUSPrivacy_String", "");
    }

    /* renamed from: a */
    public final void m25757a(String str) {
        SharedPreferences.Editor edit = this.f30073g.edit();
        edit.putString("MoPubConsent_String", str);
        edit.apply();
        this.f30071e.m25744a(C8379b.m25761a(str));
    }

    /* renamed from: a */
    public final void m25756a(boolean z) {
        SharedPreferences.Editor edit = this.f30073g.edit();
        edit.putString("USPrivacy_Optout", String.valueOf(z));
        edit.apply();
        this.f30071e.m25744a(C8379b.m25760a(z));
    }

    /* renamed from: b */
    public final String m25755b() {
        return this.f30072f.m25671a("USPrivacy_Optout", "");
    }

    /* renamed from: c */
    public final String m25754c() {
        return this.f30072f.m25671a("MoPubConsent_String", "");
    }
}
