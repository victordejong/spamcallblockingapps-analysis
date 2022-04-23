package com.criteo.publisher.k;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.criteo.publisher.k.a.d;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.q;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f17405a = Pattern.compile("^1([YN\\-yn]){3}$");

    /* renamed from: b  reason: collision with root package name */
    public static final List<String> f17406b = Arrays.asList("1ynn", "1yny", "1---", "", "1yn-", "1-n-");

    /* renamed from: c  reason: collision with root package name */
    public static final List<String> f17407c = Arrays.asList("explicit_no", "potential_whitelist", "dnt");

    /* renamed from: d  reason: collision with root package name */
    public final d f17408d;
    private final g e;
    private final q f;
    private final SharedPreferences g;

    public c(Context context) {
        this(PreferenceManager.getDefaultSharedPreferences(context), new d(context));
    }

    c(SharedPreferences sharedPreferences, d dVar) {
        this.e = h.a(getClass());
        this.g = sharedPreferences;
        this.f = new q(sharedPreferences);
        this.f17408d = dVar;
    }

    public final String a() {
        return this.f.a("IABUSPrivacy_String", "");
    }

    public final void a(String str) {
        SharedPreferences.Editor edit = this.g.edit();
        edit.putString("MoPubConsent_String", str);
        edit.apply();
        this.e.a(b.a(str));
    }

    public final void a(boolean z) {
        SharedPreferences.Editor edit = this.g.edit();
        edit.putString("USPrivacy_Optout", String.valueOf(z));
        edit.apply();
        this.e.a(b.a(z));
    }

    public final String b() {
        return this.f.a("USPrivacy_Optout", "");
    }

    public final String c() {
        return this.f.a("MoPubConsent_String", "");
    }
}
