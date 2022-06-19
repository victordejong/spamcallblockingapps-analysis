package com.google.firebase.crashlytics.internal.settings;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.AbstractC7964f;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.crashlytics.internal.common.AbstractC9118p;
import com.google.firebase.crashlytics.internal.common.C9080c0;
import com.google.firebase.crashlytics.internal.common.C9119q;
import com.google.firebase.crashlytics.internal.common.C9125t;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.settings.p304h.AbstractC9143d;
import com.google.firebase.crashlytics.internal.settings.p304h.C9140a;
import com.google.firebase.crashlytics.internal.settings.p304h.C9144e;
import com.google.firebase.crashlytics.internal.settings.p304h.C9145f;
import com.google.firebase.crashlytics.internal.settings.p305i.AbstractC9147b;
import com.google.firebase.crashlytics.internal.settings.p305i.C9146a;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p299i.C9054b;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* renamed from: com.google.firebase.crashlytics.internal.settings.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/c.class */
public class C9134c implements AbstractC9136d {

    /* renamed from: a */
    private final Context f39416a;

    /* renamed from: b */
    private final C9145f f39417b;

    /* renamed from: c */
    private final C9137e f39418c;

    /* renamed from: d */
    private final AbstractC9118p f39419d;

    /* renamed from: e */
    private final C9132a f39420e;

    /* renamed from: f */
    private final AbstractC9147b f39421f;

    /* renamed from: g */
    private final C9119q f39422g;

    /* renamed from: h */
    private final AtomicReference<AbstractC9143d> f39423h;

    /* renamed from: i */
    private final AtomicReference<C7968h<C9140a>> f39424i = new AtomicReference<>(new C7968h());

    /* renamed from: com.google.firebase.crashlytics.internal.settings.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/c$a.class */
    public class C9135a implements AbstractC7964f<Void, Void> {
        C9135a() {
            C9134c.this = r4;
        }

        /* renamed from: b */
        public AbstractC7966g<Void> mo1607a(Void r6) {
            JSONObject mo1715a = C9134c.this.f39421f.mo1715a(C9134c.this.f39417b, true);
            if (mo1715a != null) {
                C9144e m1733b = C9134c.this.f39418c.m1733b(mo1715a);
                C9134c.this.f39420e.m1759c(m1733b.m1724d(), mo1715a);
                C9134c.this.m1739q(mo1715a, "Loaded settings: ");
                C9134c c9134c = C9134c.this;
                c9134c.m1738r(c9134c.f39417b.f39450f);
                C9134c.this.f39423h.set(m1733b);
                ((C7968h) C9134c.this.f39424i.get()).m5803e(m1733b.m1725c());
                C7968h c7968h = new C7968h();
                c7968h.m5803e(m1733b.m1725c());
                C9134c.this.f39424i.set(c7968h);
            }
            return C7970j.m5798e(null);
        }
    }

    C9134c(Context context, C9145f c9145f, AbstractC9118p abstractC9118p, C9137e c9137e, C9132a c9132a, AbstractC9147b abstractC9147b, C9119q c9119q) {
        AtomicReference<AbstractC9143d> atomicReference = new AtomicReference<>();
        this.f39423h = atomicReference;
        this.f39416a = context;
        this.f39417b = c9145f;
        this.f39419d = abstractC9118p;
        this.f39418c = c9137e;
        this.f39420e = c9132a;
        this.f39421f = abstractC9147b;
        this.f39422g = c9119q;
        atomicReference.set(C9133b.m1755e(abstractC9118p));
    }

    /* renamed from: l */
    public static C9134c m1744l(Context context, String str, C9125t c9125t, C9054b c9054b, String str2, String str3, C9119q c9119q) {
        String m1778e = c9125t.m1778e();
        C9080c0 c9080c0 = new C9080c0();
        return new C9134c(context, new C9145f(str, c9125t.m1777f(), c9125t.m1776g(), c9125t.m1775h(), c9125t, CommonUtils.m1967h(CommonUtils.m1960o(context), str, str3, str2), str3, str2, DeliveryMechanism.determineFrom(m1778e).getId()), c9080c0, new C9137e(c9080c0), new C9132a(context), new C9146a(String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), c9054b), c9119q);
    }

    /* renamed from: m */
    private C9144e m1743m(SettingsCacheBehavior settingsCacheBehavior) {
        Exception e;
        C9144e c9144e = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject m1760b = this.f39420e.m1760b();
                if (m1760b != null) {
                    c9144e = this.f39418c.m1733b(m1760b);
                    if (c9144e != null) {
                        m1739q(m1760b, "Loaded cached settings: ");
                        long mo1797a = this.f39419d.mo1797a();
                        if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) && c9144e.m1723e(mo1797a)) {
                            C8898b.m2397f().m2394i("Cached settings have expired.");
                            c9144e = null;
                        }
                        try {
                            C8898b.m2397f().m2394i("Returning cached settings.");
                        } catch (Exception e2) {
                            e = e2;
                            C8898b.m2397f().m2398e("Failed to get cached settings", e);
                            return c9144e;
                        }
                    } else {
                        C8898b.m2397f().m2398e("Failed to parse cached settings data.", null);
                        c9144e = null;
                    }
                } else {
                    C8898b.m2397f().m2401b("No cached settings data found.");
                    c9144e = null;
                }
            }
        } catch (Exception e3) {
            e = e3;
            c9144e = null;
        }
        return c9144e;
    }

    /* renamed from: n */
    private String m1742n() {
        return CommonUtils.m1956s(this.f39416a).getString("existing_instance_identifier", "");
    }

    /* renamed from: q */
    public void m1739q(JSONObject jSONObject, String str) {
        C8898b m2397f = C8898b.m2397f();
        m2397f.m2401b(str + jSONObject.toString());
    }

    @SuppressLint({"CommitPrefEdits"})
    /* renamed from: r */
    public boolean m1738r(String str) {
        SharedPreferences.Editor edit = CommonUtils.m1956s(this.f39416a).edit();
        edit.putString("existing_instance_identifier", str);
        edit.apply();
        return true;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.AbstractC9136d
    /* renamed from: a */
    public AbstractC7966g<C9140a> mo1736a() {
        return this.f39424i.get().m5807a();
    }

    @Override // com.google.firebase.crashlytics.internal.settings.AbstractC9136d
    /* renamed from: b */
    public AbstractC9143d mo1735b() {
        return this.f39423h.get();
    }

    /* renamed from: k */
    boolean m1745k() {
        return !m1742n().equals(this.f39417b.f39450f);
    }

    /* renamed from: o */
    public AbstractC7966g<Void> m1741o(SettingsCacheBehavior settingsCacheBehavior, Executor executor) {
        C9144e m1743m;
        if (!m1745k() && (m1743m = m1743m(settingsCacheBehavior)) != null) {
            this.f39423h.set(m1743m);
            this.f39424i.get().m5803e(m1743m.m1725c());
            return C7970j.m5798e(null);
        }
        C9144e m1743m2 = m1743m(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
        if (m1743m2 != null) {
            this.f39423h.set(m1743m2);
            this.f39424i.get().m5803e(m1743m2.m1725c());
        }
        return this.f39422g.m1789h().mo5808s(executor, new C9135a());
    }

    /* renamed from: p */
    public AbstractC7966g<Void> m1740p(Executor executor) {
        return m1741o(SettingsCacheBehavior.USE_CACHE, executor);
    }
}
