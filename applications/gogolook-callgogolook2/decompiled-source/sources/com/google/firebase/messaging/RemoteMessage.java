package com.google.firebase.messaging;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Map;
import p081h.p203i.p325c.p372x.C9979b;
import p081h.p203i.p325c.p372x.C9998q;
import p081h.p203i.p325c.p372x.C9999r;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/RemoteMessage.class */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new C9999r();

    /* renamed from: a */
    public Bundle f7771a;

    /* renamed from: b */
    public Map<String, String> f7772b;

    /* renamed from: c */
    public C3679b f7773c;

    /* renamed from: com.google.firebase.messaging.RemoteMessage$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$b.class */
    public static class C3679b {

        /* renamed from: a */
        public final String f7774a;

        /* renamed from: b */
        public final String f7775b;

        /* renamed from: c */
        public final String f7776c;

        public C3679b(C9998q qVar) {
            this.f7774a = qVar.m13700g("gcm.n.title");
            qVar.m13704e("gcm.n.title");
            m31056a(qVar, "gcm.n.title");
            this.f7775b = qVar.m13700g("gcm.n.body");
            qVar.m13704e("gcm.n.body");
            m31056a(qVar, "gcm.n.body");
            qVar.m13700g("gcm.n.icon");
            qVar.m13703f();
            qVar.m13700g("gcm.n.tag");
            qVar.m13700g("gcm.n.color");
            qVar.m13700g("gcm.n.click_action");
            qVar.m13700g("gcm.n.android_channel_id");
            qVar.m13712b();
            this.f7776c = qVar.m13700g("gcm.n.image");
            qVar.m13700g("gcm.n.ticker");
            qVar.m13710b("gcm.n.notification_priority");
            qVar.m13710b("gcm.n.visibility");
            qVar.m13710b("gcm.n.notification_count");
            qVar.m13713a("gcm.n.sticky");
            qVar.m13713a("gcm.n.local_only");
            qVar.m13713a("gcm.n.default_sound");
            qVar.m13713a("gcm.n.default_vibrate_timings");
            qVar.m13713a("gcm.n.default_light_settings");
            qVar.m13702f("gcm.n.event_time");
            qVar.m13716a();
            qVar.m13701g();
        }

        /* renamed from: a */
        public static String[] m31056a(C9998q qVar, String str) {
            Object[] d = qVar.m13706d(str);
            if (d == null) {
                return null;
            }
            String[] strArr = new String[d.length];
            for (int i = 0; i < d.length; i++) {
                strArr[i] = String.valueOf(d[i]);
            }
            return strArr;
        }

        @Nullable
        /* renamed from: a */
        public String m31057a() {
            return this.f7775b;
        }

        @Nullable
        /* renamed from: b */
        public Uri m31055b() {
            String str = this.f7776c;
            if (str != null) {
                return Uri.parse(str);
            }
            return null;
        }

        @Nullable
        /* renamed from: c */
        public String m31054c() {
            return this.f7774a;
        }
    }

    public RemoteMessage(Bundle bundle) {
        this.f7771a = bundle;
    }

    @Nullable
    /* renamed from: H */
    public final String m31060H() {
        return this.f7771a.getString("from");
    }

    @Nullable
    /* renamed from: I */
    public final C3679b m31059I() {
        if (this.f7773c == null && C9998q.m13714a(this.f7771a)) {
            this.f7773c = new C3679b(new C9998q(this.f7771a));
        }
        return this.f7773c;
    }

    @NonNull
    /* renamed from: c */
    public final Map<String, String> m31058c() {
        if (this.f7772b == null) {
            this.f7772b = C9979b.C9980a.m13767a(this.f7771a);
        }
        return this.f7772b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        C9999r.m13690a(this, parcel, i);
    }
}
