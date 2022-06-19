package com.facebook.login;

import android.app.Activity;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AbstractC1985f;
import com.facebook.AbstractC1989h;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2198r;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookException;
import com.facebook.internal.C2025d;
import com.facebook.internal.C2056n;
import com.facebook.internal.C2084y;
import com.facebook.login.C2141j;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
/* renamed from: com.facebook.login.m */
/* loaded from: classes-dex2jar.jar:com/facebook/login/m.class */
public class C2154m {

    /* renamed from: a */
    private static final Set<String> f6327a = m15097c();

    /* renamed from: b */
    private static volatile C2154m f6328b;

    /* renamed from: c */
    private EnumC2140i f6329c = EnumC2140i.NATIVE_WITH_FALLBACK;

    /* renamed from: d */
    private EnumC2118b f6330d = EnumC2118b.FRIENDS;

    /* renamed from: f */
    private String f6332f = "rerequest";

    /* renamed from: e */
    private final SharedPreferences f6331e = C2095j.m15360h().getSharedPreferences("com.facebook.loginManager", 0);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.facebook.login.m$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/m$a.class */
    public static class C2158a implements AbstractC2171r {

        /* renamed from: a */
        private final Activity f6336a;

        C2158a(Activity activity) {
            C2084y.m15417a((Object) activity, "activity");
            this.f6336a = activity;
        }

        @Override // com.facebook.login.AbstractC2171r
        /* renamed from: a */
        public Activity mo15077a() {
            return this.f6336a;
        }

        @Override // com.facebook.login.AbstractC2171r
        /* renamed from: a */
        public void mo15076a(Intent intent, int i) {
            this.f6336a.startActivityForResult(intent, i);
        }
    }

    /* renamed from: com.facebook.login.m$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/m$b.class */
    public static class C2159b implements AbstractC2171r {

        /* renamed from: a */
        private final C2056n f6337a;

        C2159b(C2056n c2056n) {
            C2084y.m15417a(c2056n, "fragment");
            this.f6337a = c2056n;
        }

        @Override // com.facebook.login.AbstractC2171r
        /* renamed from: a */
        public Activity mo15077a() {
            return this.f6337a.m15567c();
        }

        @Override // com.facebook.login.AbstractC2171r
        /* renamed from: a */
        public void mo15076a(Intent intent, int i) {
            this.f6337a.m15569a(intent, i);
        }
    }

    /* renamed from: com.facebook.login.m$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/m$c.class */
    public static class C2160c {

        /* renamed from: a */
        private static C2153l f6338a;

        /* renamed from: b */
        public static C2153l m15094b(Context context) {
            C2153l c2153l;
            synchronized (C2160c.class) {
                if (context == null) {
                    try {
                        context = C2095j.m15360h();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (context == null) {
                    c2153l = null;
                } else {
                    if (f6338a == null) {
                        f6338a = new C2153l(context, C2095j.m15356l());
                    }
                    c2153l = f6338a;
                }
            }
            return c2153l;
        }
    }

    C2154m() {
        C2084y.m15420a();
    }

    /* renamed from: a */
    public static C2154m m15120a() {
        if (f6328b == null) {
            synchronized (C2154m.class) {
                try {
                    if (f6328b == null) {
                        f6328b = new C2154m();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f6328b;
    }

    /* renamed from: a */
    static C2162o m15105a(C2141j.C2145c c2145c, C1803a c1803a) {
        Set<String> m15160a = c2145c.m15160a();
        HashSet hashSet = new HashSet(c1803a.m16247g());
        if (c2145c.m15153f()) {
            hashSet.retainAll(m15160a);
        }
        HashSet hashSet2 = new HashSet(m15160a);
        hashSet2.removeAll(hashSet);
        return new C2162o(c1803a, hashSet, hashSet2);
    }

    /* renamed from: a */
    private void m15115a(Context context, C2141j.C2145c c2145c) {
        C2153l m15094b = C2160c.m15094b(context);
        if (m15094b == null || c2145c == null) {
            return;
        }
        m15094b.m15128a(c2145c);
    }

    /* renamed from: a */
    private void m15114a(Context context, C2141j.C2147d.EnumC2149a enumC2149a, Map<String, String> map, Exception exc, boolean z, C2141j.C2145c c2145c) {
        C2153l m15094b = C2160c.m15094b(context);
        if (m15094b == null) {
            return;
        }
        if (c2145c == null) {
            m15094b.m15121c("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("try_login_activity", z ? "1" : "0");
        m15094b.m15123a(c2145c.m15154e(), hashMap, enumC2149a, map, exc);
    }

    /* renamed from: a */
    private void m15111a(C1803a c1803a, C2141j.C2145c c2145c, FacebookException facebookException, boolean z, AbstractC1989h<C2162o> abstractC1989h) {
        if (c1803a != null) {
            C1803a.m16256a(c1803a);
            C2198r.m14969b();
        }
        if (abstractC1989h != null) {
            C2162o m15105a = c1803a != null ? m15105a(c2145c, c1803a) : null;
            if (z || (m15105a != null && m15105a.m15084b().size() == 0)) {
                abstractC1989h.mo1153a();
            } else if (facebookException != null) {
                abstractC1989h.mo1152a(facebookException);
            } else if (c1803a == null) {
            } else {
                m15101a(true);
                abstractC1989h.mo1150a((AbstractC1989h<C2162o>) m15105a);
            }
        }
    }

    /* renamed from: a */
    private void m15104a(AbstractC2171r abstractC2171r, C2141j.C2145c c2145c) {
        m15115a(abstractC2171r.mo15077a(), c2145c);
        C2025d.m15647a(C2025d.EnumC2027b.Login.m15643a(), new C2025d.AbstractC2026a() { // from class: com.facebook.login.m.3
            @Override // com.facebook.internal.C2025d.AbstractC2026a
            /* renamed from: a */
            public boolean mo15096a(int i, Intent intent) {
                return C2154m.this.m15119a(i, intent);
            }
        });
        if (!m15099b(abstractC2171r, c2145c)) {
            FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            m15114a(abstractC2171r.mo15077a(), C2141j.C2147d.EnumC2149a.ERROR, null, facebookException, false, c2145c);
            throw facebookException;
        }
    }

    /* renamed from: a */
    private void m15101a(boolean z) {
        SharedPreferences.Editor edit = this.f6331e.edit();
        edit.putBoolean("express_login_allowed", z);
        edit.apply();
    }

    /* renamed from: a */
    private boolean m15113a(Intent intent) {
        boolean z = false;
        if (C2095j.m15360h().getPackageManager().resolveActivity(intent, 0) != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private boolean m15099b(AbstractC2171r abstractC2171r, C2141j.C2145c c2145c) {
        boolean z = false;
        Intent m15106a = m15106a(c2145c);
        if (m15113a(m15106a)) {
            try {
                abstractC2171r.mo15076a(m15106a, C2141j.m15175d());
                z = true;
            } catch (ActivityNotFoundException e) {
            }
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m15098b(String str) {
        return str != null && (str.startsWith("publish") || str.startsWith("manage") || f6327a.contains(str));
    }

    /* renamed from: c */
    private static Set<String> m15097c() {
        return Collections.unmodifiableSet(new HashSet<String>() { // from class: com.facebook.login.m.2
            {
                add("ads_management");
                add("create_event");
                add("rsvp_event");
            }
        });
    }

    /* renamed from: a */
    protected Intent m15106a(C2141j.C2145c c2145c) {
        Intent intent = new Intent();
        intent.setClass(C2095j.m15360h(), FacebookActivity.class);
        intent.setAction(c2145c.m15157b().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable("request", c2145c);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        return intent;
    }

    /* renamed from: a */
    protected C2141j.C2145c m15102a(Collection<String> collection) {
        C2141j.C2145c c2145c = new C2141j.C2145c(this.f6329c, Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet()), this.f6330d, this.f6332f, C2095j.m15356l(), UUID.randomUUID().toString());
        c2145c.m15158a(C1803a.m16253b());
        return c2145c;
    }

    /* renamed from: a */
    public C2154m m15108a(EnumC2118b enumC2118b) {
        this.f6330d = enumC2118b;
        return this;
    }

    /* renamed from: a */
    public C2154m m15107a(EnumC2140i enumC2140i) {
        this.f6329c = enumC2140i;
        return this;
    }

    /* renamed from: a */
    public C2154m m15103a(String str) {
        this.f6332f = str;
        return this;
    }

    /* renamed from: a */
    public void m15117a(Activity activity, Collection<String> collection) {
        m15104a(new C2158a(activity), m15102a(collection));
    }

    /* renamed from: a */
    public void m15116a(Fragment fragment, Collection<String> collection) {
        m15109a(new C2056n(fragment), collection);
    }

    /* renamed from: a */
    public void m15112a(androidx.fragment.app.Fragment fragment, Collection<String> collection) {
        m15109a(new C2056n(fragment), collection);
    }

    /* renamed from: a */
    public void m15110a(AbstractC1985f abstractC1985f, final AbstractC1989h<C2162o> abstractC1989h) {
        if (!(abstractC1985f instanceof C2025d)) {
            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((C2025d) abstractC1985f).m15644b(C2025d.EnumC2027b.Login.m15643a(), new C2025d.AbstractC2026a() { // from class: com.facebook.login.m.1
            @Override // com.facebook.internal.C2025d.AbstractC2026a
            /* renamed from: a */
            public boolean mo15096a(int i, Intent intent) {
                return C2154m.this.m15118a(i, intent, abstractC1989h);
            }
        });
    }

    /* renamed from: a */
    public void m15109a(C2056n c2056n, Collection<String> collection) {
        m15104a(new C2159b(c2056n), m15102a(collection));
    }

    /* renamed from: a */
    boolean m15119a(int i, Intent intent) {
        return m15118a(i, intent, null);
    }

    /* renamed from: a */
    boolean m15118a(int i, Intent intent, AbstractC1989h<C2162o> abstractC1989h) {
        C2141j.C2147d.EnumC2149a enumC2149a;
        FacebookAuthorizationException facebookAuthorizationException;
        C1803a c1803a;
        FacebookAuthorizationException facebookAuthorizationException2;
        C2141j.C2147d.EnumC2149a enumC2149a2;
        C1803a c1803a2;
        FacebookAuthorizationException facebookAuthorizationException3;
        C2141j.C2147d.EnumC2149a enumC2149a3 = C2141j.C2147d.EnumC2149a.ERROR;
        Map<String, String> map = null;
        C2141j.C2145c c2145c = null;
        boolean z = false;
        if (intent != null) {
            C2141j.C2147d c2147d = (C2141j.C2147d) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (c2147d != null) {
                c2145c = c2147d.f6310e;
                enumC2149a2 = c2147d.f6306a;
                if (i == -1) {
                    if (c2147d.f6306a == C2141j.C2147d.EnumC2149a.SUCCESS) {
                        c1803a2 = c2147d.f6307b;
                        facebookAuthorizationException3 = null;
                    } else {
                        facebookAuthorizationException3 = new FacebookAuthorizationException(c2147d.f6308c);
                        c1803a2 = null;
                    }
                } else if (i == 0) {
                    z = true;
                    c1803a2 = null;
                    facebookAuthorizationException3 = null;
                } else {
                    c1803a2 = null;
                    facebookAuthorizationException3 = null;
                }
                map = c2147d.f6311f;
                C1803a c1803a3 = c1803a2;
                facebookAuthorizationException2 = facebookAuthorizationException3;
                c1803a = c1803a3;
            } else {
                c2145c = null;
                map = null;
                z = false;
                facebookAuthorizationException2 = null;
                enumC2149a2 = enumC2149a3;
                c1803a = null;
            }
            C2141j.C2147d.EnumC2149a enumC2149a4 = enumC2149a2;
            facebookAuthorizationException = facebookAuthorizationException2;
            enumC2149a = enumC2149a4;
        } else if (i == 0) {
            enumC2149a = C2141j.C2147d.EnumC2149a.CANCEL;
            z = true;
            c1803a = null;
            facebookAuthorizationException = null;
        } else {
            z = false;
            enumC2149a = enumC2149a3;
            facebookAuthorizationException = null;
            c1803a = null;
        }
        if (facebookAuthorizationException == null && c1803a == null && !z) {
            facebookAuthorizationException = new FacebookException("Unexpected call to LoginManager.onActivityResult");
        }
        m15114a(null, enumC2149a, map, facebookAuthorizationException, true, c2145c);
        m15111a(c1803a, c2145c, facebookAuthorizationException, z, abstractC1989h);
        return true;
    }

    /* renamed from: b */
    public void m15100b() {
        C1803a.m16256a((C1803a) null);
        C2198r.m14970a(null);
        m15101a(false);
    }
}
