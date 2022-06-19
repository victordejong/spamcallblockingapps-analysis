package com.google.firebase.messaging;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.firebase.messaging.C9271b;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/RemoteMessage.class */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new C9285h0();

    /* renamed from: d */
    Bundle f39723d;

    /* renamed from: e */
    private Map<String, String> f39724e;

    /* renamed from: f */
    private C9265b f39725f;

    /* renamed from: com.google.firebase.messaging.RemoteMessage$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$b.class */
    public static class C9265b {

        /* renamed from: a */
        private final String f39726a;

        /* renamed from: b */
        private final String f39727b;

        /* renamed from: c */
        private final String[] f39728c;

        /* renamed from: d */
        private final String f39729d;

        /* renamed from: e */
        private final String f39730e;

        /* renamed from: f */
        private final String[] f39731f;

        /* renamed from: g */
        private final String f39732g;

        /* renamed from: h */
        private final String f39733h;

        /* renamed from: i */
        private final String f39734i;

        /* renamed from: j */
        private final String f39735j;

        /* renamed from: k */
        private final String f39736k;

        /* renamed from: l */
        private final String f39737l;

        /* renamed from: m */
        private final String f39738m;

        /* renamed from: n */
        private final Uri f39739n;

        /* renamed from: o */
        private final String f39740o;

        /* renamed from: p */
        private final Integer f39741p;

        /* renamed from: q */
        private final Integer f39742q;

        /* renamed from: r */
        private final Integer f39743r;

        /* renamed from: s */
        private final int[] f39744s;

        /* renamed from: t */
        private final Long f39745t;

        /* renamed from: u */
        private final boolean f39746u;

        /* renamed from: v */
        private final boolean f39747v;

        /* renamed from: w */
        private final boolean f39748w;

        /* renamed from: x */
        private final boolean f39749x;

        /* renamed from: y */
        private final boolean f39750y;

        /* renamed from: z */
        private final long[] f39751z;

        private C9265b(C9283g0 c9283g0) {
            this.f39726a = c9283g0.m1241p("gcm.n.title");
            this.f39727b = c9283g0.m1249h("gcm.n.title");
            this.f39728c = m1344b(c9283g0, "gcm.n.title");
            this.f39729d = c9283g0.m1241p("gcm.n.body");
            this.f39730e = c9283g0.m1249h("gcm.n.body");
            this.f39731f = m1344b(c9283g0, "gcm.n.body");
            this.f39732g = c9283g0.m1241p("gcm.n.icon");
            this.f39734i = c9283g0.m1242o();
            this.f39735j = c9283g0.m1241p("gcm.n.tag");
            this.f39736k = c9283g0.m1241p("gcm.n.color");
            this.f39737l = c9283g0.m1241p("gcm.n.click_action");
            this.f39738m = c9283g0.m1241p("gcm.n.android_channel_id");
            this.f39739n = c9283g0.m1251f();
            this.f39733h = c9283g0.m1241p("gcm.n.image");
            this.f39740o = c9283g0.m1241p("gcm.n.ticker");
            this.f39741p = c9283g0.m1255b("gcm.n.notification_priority");
            this.f39742q = c9283g0.m1255b("gcm.n.visibility");
            this.f39743r = c9283g0.m1255b("gcm.n.notification_count");
            this.f39746u = c9283g0.m1256a("gcm.n.sticky");
            this.f39747v = c9283g0.m1256a("gcm.n.local_only");
            this.f39748w = c9283g0.m1256a("gcm.n.default_sound");
            this.f39749x = c9283g0.m1256a("gcm.n.default_vibrate_timings");
            this.f39750y = c9283g0.m1256a("gcm.n.default_light_settings");
            this.f39745t = c9283g0.m1247j("gcm.n.event_time");
            this.f39744s = c9283g0.m1252e();
            this.f39751z = c9283g0.m1240q();
        }

        /* renamed from: b */
        private static String[] m1344b(C9283g0 c9283g0, String str) {
            Object[] m1250g = c9283g0.m1250g(str);
            if (m1250g == null) {
                return null;
            }
            String[] strArr = new String[m1250g.length];
            for (int i = 0; i < m1250g.length; i++) {
                strArr[i] = String.valueOf(m1250g[i]);
            }
            return strArr;
        }

        /* renamed from: a */
        public String m1345a() {
            return this.f39729d;
        }

        /* renamed from: c */
        public String m1343c() {
            return this.f39726a;
        }
    }

    public RemoteMessage(Bundle bundle) {
        this.f39723d = bundle;
    }

    /* renamed from: k0 */
    public Map<String, String> m1348k0() {
        if (this.f39724e == null) {
            this.f39724e = C9271b.C9272a.m1303a(this.f39723d);
        }
        return this.f39724e;
    }

    /* renamed from: l0 */
    public String m1347l0() {
        return this.f39723d.getString("from");
    }

    /* renamed from: m0 */
    public C9265b m1346m0() {
        if (this.f39725f == null && C9283g0.m1237t(this.f39723d)) {
            this.f39725f = new C9265b(new C9283g0(this.f39723d));
        }
        return this.f39725f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C9285h0.m1228c(this, parcel, i);
    }
}
