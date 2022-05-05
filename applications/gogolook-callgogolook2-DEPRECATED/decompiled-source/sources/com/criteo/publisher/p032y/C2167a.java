package com.criteo.publisher.p032y;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.p020a0.C1930r;
import com.criteo.publisher.p032y.p033b.AbstractC2171c;
import com.criteo.publisher.p032y.p033b.C2172d;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
/* renamed from: com.criteo.publisher.y.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/y/a.class */
public class C2167a {

    /* renamed from: d */
    public static final Pattern f2490d = Pattern.compile("^1(Y|N|-|y|n){3}$");

    /* renamed from: e */
    public static final List<String> f2491e = Arrays.asList("1ynn", "1yny", "1---", "", "1yn-", "1-n-");

    /* renamed from: f */
    public static final List<String> f2492f = Arrays.asList("explicit_no", "potential_whitelist", "dnt");

    /* renamed from: a */
    public final C1930r f2493a;

    /* renamed from: b */
    public final SharedPreferences f2494b;

    /* renamed from: c */
    public C2172d f2495c;

    public C2167a(@NonNull Context context) {
        this(PreferenceManager.getDefaultSharedPreferences(context), new C2172d(context));
    }

    @VisibleForTesting
    public C2167a(@NonNull SharedPreferences sharedPreferences, @NonNull C2172d dVar) {
        this.f2494b = sharedPreferences;
        this.f2493a = new C1930r(sharedPreferences);
        this.f2495c = dVar;
    }

    /* renamed from: g */
    private boolean m35539g() {
        boolean z = true;
        if (Boolean.parseBoolean(m35542d())) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    private boolean m35538h() {
        String b = m35544b();
        return !f2490d.matcher(b).matches() || f2491e.contains(b.toLowerCase(Locale.ROOT));
    }

    @Nullable
    /* renamed from: a */
    public AbstractC2171c m35547a() {
        return this.f2495c.m35530a();
    }

    /* renamed from: a */
    public void m35546a(@Nullable String str) {
        SharedPreferences.Editor edit = this.f2494b.edit();
        edit.putString("MoPubConsent_String", str);
        edit.apply();
    }

    /* renamed from: a */
    public void m35545a(boolean z) {
        SharedPreferences.Editor edit = this.f2494b.edit();
        edit.putString("USPrivacy_Optout", String.valueOf(z));
        edit.apply();
    }

    @NonNull
    /* renamed from: b */
    public String m35544b() {
        return this.f2493a.m35996a("IABUSPrivacy_String", "");
    }

    @NonNull
    /* renamed from: c */
    public String m35543c() {
        return this.f2493a.m35996a("MoPubConsent_String", "");
    }

    @NonNull
    /* renamed from: d */
    public String m35542d() {
        return this.f2493a.m35996a("USPrivacy_Optout", "");
    }

    /* renamed from: e */
    public boolean m35541e() {
        return m35544b().isEmpty() ? m35539g() : m35538h();
    }

    /* renamed from: f */
    public boolean m35540f() {
        return !f2492f.contains(m35543c().toLowerCase(Locale.ROOT));
    }
}
