package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.C12045o;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.google.android.gms.measurement.internal.hk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hk.class */
public final class C14052hk extends AbstractC13962ec {

    /* renamed from: a */
    volatile C14044hc f51790a;

    /* renamed from: b */
    protected C14044hc f51791b;

    /* renamed from: c */
    C14044hc f51792c;

    /* renamed from: d */
    private C14044hc f51793d;

    /* renamed from: f */
    private Activity f51795f;

    /* renamed from: g */
    private volatile boolean f51796g;

    /* renamed from: h */
    private volatile C14044hc f51797h;

    /* renamed from: i */
    private boolean f51798i;

    /* renamed from: k */
    private C14044hc f51800k;

    /* renamed from: l */
    private String f51801l;

    /* renamed from: j */
    private final Object f51799j = new Object();

    /* renamed from: e */
    private final Map<Activity, C14044hc> f51794e = new ConcurrentHashMap();

    public C14052hk(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: a */
    private String m11821a(Class<?> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str = length > 0 ? split[length - 1] : "";
        String str2 = str;
        if (str.length() > 100) {
            str2 = str.substring(0, 100);
        }
        return str2;
    }

    /* renamed from: a */
    private final void m11828a(Activity activity, C14044hc c14044hc, boolean z) {
        C14044hc c14044hc2 = this.f51790a == null ? this.f51793d : this.f51790a;
        if (c14044hc.f51764b == null) {
            c14044hc = new C14044hc(c14044hc.f51763a, activity != null ? m11821a(activity.getClass()) : null, c14044hc.f51765c, c14044hc.f51767e, c14044hc.f51768f);
        }
        this.f51793d = this.f51790a;
        this.f51790a = c14044hc;
        this.f51637t.mo11658d().m12011a(new RunnableC14047hf(this, c14044hc, c14044hc2, this.f51637t.f51532j.mo19038b(), z));
    }

    /* renamed from: a */
    public static void m11825a(C14044hc c14044hc, Bundle bundle, boolean z) {
        boolean z2 = z;
        if (c14044hc != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = c14044hc.f51763a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = c14044hc.f51764b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", c14044hc.f51765c);
                return;
            }
            z2 = false;
        }
        if (c14044hc != null || !z2) {
            return;
        }
        bundle.remove("_sn");
        bundle.remove("_sc");
        bundle.remove("_si");
    }

    /* renamed from: a */
    public static /* synthetic */ void m11822a(C14052hk c14052hk, Bundle bundle, C14044hc c14044hc, C14044hc c14044hc2, long j) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        c14052hk.m11824a(c14044hc, c14044hc2, j, true, c14052hk.f51637t.m11988g().m11581a(null, "screen_view", bundle, null, true));
    }

    /* renamed from: d */
    private final C14044hc m11815d(Activity activity) {
        C12045o.m19162a(activity);
        C14044hc c14044hc = this.f51794e.get(activity);
        C14044hc c14044hc2 = c14044hc;
        if (c14044hc == null) {
            c14044hc2 = new C14044hc(null, m11821a(activity.getClass()), this.f51637t.m11988g().m11562e());
            this.f51794e.put(activity, c14044hc2);
        }
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51330ar) && this.f51797h != null) {
            return this.f51797h;
        }
        return c14044hc2;
    }

    /* renamed from: a */
    public final C14044hc m11819a(boolean z) {
        m12046k();
        mo11884S_();
        if (!this.f51637t.f51529g.m12061d(null, C13935dc.f51330ar) || !z) {
            return this.f51791b;
        }
        C14044hc c14044hc = this.f51791b;
        return c14044hc != null ? c14044hc : this.f51792c;
    }

    /* renamed from: a */
    public final void m11830a(Activity activity) {
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51330ar)) {
            synchronized (this.f51799j) {
                this.f51798i = true;
                if (activity != this.f51795f) {
                    synchronized (this.f51799j) {
                        this.f51795f = activity;
                        this.f51796g = false;
                    }
                    if (this.f51637t.f51529g.m12061d(null, C13935dc.f51329aq) && this.f51637t.f51529g.m12058f()) {
                        this.f51797h = null;
                        this.f51637t.mo11658d().m12011a(new RunnableC14051hj(this));
                    }
                }
            }
        }
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51329aq) && !this.f51637t.f51529g.m12058f()) {
            this.f51790a = this.f51797h;
            this.f51637t.mo11658d().m12011a(new RunnableC14048hg(this));
            return;
        }
        m11828a(activity, m11815d(activity), false);
        C13906ca m11981p = this.f51637t.m11981p();
        m11981p.f51637t.mo11658d().m12011a(new RunnableC13877az(m11981p, m11981p.f51637t.f51532j.mo19038b()));
    }

    /* renamed from: a */
    public final void m11829a(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.f51637t.f51529g.m12058f() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f51794e.put(activity, new C14044hc(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    @Deprecated
    /* renamed from: a */
    public final void m11827a(Activity activity, String str, String str2) {
        if (!this.f51637t.f51529g.m12058f()) {
            this.f51637t.mo11661c().f51400h.m12092a("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        C14044hc c14044hc = this.f51790a;
        if (c14044hc == null) {
            this.f51637t.mo11661c().f51400h.m12092a("setCurrentScreen cannot be called while no activity active");
        } else if (this.f51794e.get(activity) == null) {
            this.f51637t.mo11661c().f51400h.m12092a("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            String str3 = str2;
            if (str2 == null) {
                str3 = m11821a(activity.getClass());
            }
            boolean m11564c = C14116ju.m11564c(c14044hc.f51764b, str3);
            boolean m11564c2 = C14116ju.m11564c(c14044hc.f51763a, str);
            if (m11564c && m11564c2) {
                this.f51637t.mo11661c().f51400h.m12092a("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                this.f51637t.mo11661c().f51400h.m12091a("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str3 != null && (str3.length() <= 0 || str3.length() > 100)) {
                this.f51637t.mo11661c().f51400h.m12091a("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str3.length()));
            } else {
                this.f51637t.mo11661c().f51403k.m12090a("Setting current screen to name, class", str == null ? JsonReaderKt.NULL : str, str3);
                C14044hc c14044hc2 = new C14044hc(str, str3, this.f51637t.m11988g().m11562e());
                this.f51794e.put(activity, c14044hc2);
                m11828a(activity, c14044hc2, true);
            }
        }
    }

    /* renamed from: a */
    public final void m11826a(Bundle bundle, long j) {
        if (!this.f51637t.f51529g.m12061d(null, C13935dc.f51330ar)) {
            this.f51637t.mo11661c().f51400h.m12092a("Manual screen reporting is disabled.");
            return;
        }
        synchronized (this.f51799j) {
            if (!this.f51798i) {
                this.f51637t.mo11661c().f51400h.m12092a("Cannot log screen view event when the app is in the background.");
                return;
            }
            String string = bundle.getString("screen_name");
            if (string != null && (string.length() <= 0 || string.length() > 100)) {
                this.f51637t.mo11661c().f51400h.m12091a("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                return;
            }
            String string2 = bundle.getString("screen_class");
            if (string2 != null && (string2.length() <= 0 || string2.length() > 100)) {
                this.f51637t.mo11661c().f51400h.m12091a("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                return;
            }
            if (string2 == null) {
                Activity activity = this.f51795f;
                string2 = activity != null ? m11821a(activity.getClass()) : "Activity";
            }
            C14044hc c14044hc = this.f51790a;
            if (this.f51796g && c14044hc != null) {
                this.f51796g = false;
                boolean m11564c = C14116ju.m11564c(c14044hc.f51764b, string2);
                boolean m11564c2 = C14116ju.m11564c(c14044hc.f51763a, string);
                if (m11564c && m11564c2) {
                    this.f51637t.mo11661c().f51400h.m12092a("Ignoring call to log screen view event with duplicate parameters.");
                    return;
                }
            }
            this.f51637t.mo11661c().f51403k.m12090a("Logging screen view with name, class", string == null ? JsonReaderKt.NULL : string, string2 == null ? JsonReaderKt.NULL : string2);
            C14044hc c14044hc2 = this.f51790a == null ? this.f51793d : this.f51790a;
            C14044hc c14044hc3 = new C14044hc(string, string2, this.f51637t.m11988g().m11562e(), true, j);
            this.f51790a = c14044hc3;
            this.f51793d = c14044hc2;
            this.f51797h = c14044hc3;
            this.f51637t.mo11658d().m12011a(new RunnableC14045hd(this, bundle, c14044hc3, c14044hc2, this.f51637t.f51532j.mo19038b()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x016d, code lost:
        if (r10 != 0) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x018a  */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11824a(com.google.android.gms.measurement.internal.C14044hc r8, com.google.android.gms.measurement.internal.C14044hc r9, long r10, boolean r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14052hk.m11824a(com.google.android.gms.measurement.internal.hc, com.google.android.gms.measurement.internal.hc, long, boolean, android.os.Bundle):void");
    }

    /* renamed from: a */
    public final void m11823a(C14044hc c14044hc, boolean z, long j) {
        this.f51637t.m11981p().m12125a(this.f51637t.f51532j.mo19038b());
        if (!this.f51637t.m11990e().f51932c.m11714a(c14044hc != null && c14044hc.f51766d, z, j) || c14044hc == null) {
            return;
        }
        c14044hc.f51766d = false;
    }

    /* renamed from: a */
    public final void m11820a(String str, C14044hc c14044hc) {
        mo11884S_();
        synchronized (this) {
            String str2 = this.f51801l;
            if (str2 == null || str2.equals(str) || c14044hc != null) {
                this.f51801l = str;
                this.f51800k = c14044hc;
            }
        }
    }

    /* renamed from: b */
    public final void m11818b(Activity activity) {
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51330ar)) {
            synchronized (this.f51799j) {
                this.f51798i = false;
                this.f51796g = true;
            }
        }
        long mo19038b = this.f51637t.f51532j.mo19038b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51329aq) && !this.f51637t.f51529g.m12058f()) {
            this.f51790a = null;
            this.f51637t.mo11658d().m12011a(new RunnableC14049hh(this, mo19038b));
            return;
        }
        C14044hc m11815d = m11815d(activity);
        this.f51793d = this.f51790a;
        this.f51790a = null;
        this.f51637t.mo11658d().m12011a(new RunnableC14050hi(this, m11815d, mo19038b));
    }

    /* renamed from: b */
    public final void m11817b(Activity activity, Bundle bundle) {
        C14044hc c14044hc;
        if (!this.f51637t.f51529g.m12058f() || bundle == null || (c14044hc = this.f51794e.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", c14044hc.f51765c);
        bundle2.putString("name", c14044hc.f51763a);
        bundle2.putString("referrer_name", c14044hc.f51764b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13962ec
    /* renamed from: b */
    protected final boolean mo11709b() {
        return false;
    }

    /* renamed from: c */
    public final void m11816c(Activity activity) {
        synchronized (this.f51799j) {
            if (activity == this.f51795f) {
                this.f51795f = null;
            }
        }
        if (!this.f51637t.f51529g.m12058f()) {
            return;
        }
        this.f51794e.remove(activity);
    }
}
