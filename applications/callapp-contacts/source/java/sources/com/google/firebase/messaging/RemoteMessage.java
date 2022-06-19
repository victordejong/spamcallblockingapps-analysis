package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.p023b.C0428a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.mopub.common.Constants;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/RemoteMessage.class */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new C15848ai();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;
    Bundle bundle;
    private Map<String, String> data;
    private C15837a notification;

    /* renamed from: com.google.firebase.messaging.RemoteMessage$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$a.class */
    public static final class C15837a {

        /* renamed from: a */
        public final String f56288a;

        /* renamed from: b */
        private final String f56289b;

        /* renamed from: c */
        private final String f56290c;

        /* renamed from: d */
        private final String[] f56291d;

        /* renamed from: e */
        private final String f56292e;

        /* renamed from: f */
        private final String[] f56293f;

        /* renamed from: g */
        private final String f56294g;

        /* renamed from: h */
        private final String f56295h;

        /* renamed from: i */
        private final String f56296i;

        /* renamed from: j */
        private final String f56297j;

        /* renamed from: k */
        private final String f56298k;

        /* renamed from: l */
        private final String f56299l;

        /* renamed from: m */
        private final String f56300m;

        /* renamed from: n */
        private final Uri f56301n;

        /* renamed from: o */
        private final String f56302o;

        /* renamed from: p */
        private final Integer f56303p;

        /* renamed from: q */
        private final Integer f56304q;

        /* renamed from: r */
        private final Integer f56305r;

        /* renamed from: s */
        private final int[] f56306s;

        /* renamed from: t */
        private final Long f56307t;

        /* renamed from: u */
        private final boolean f56308u;

        /* renamed from: v */
        private final boolean f56309v;

        /* renamed from: w */
        private final boolean f56310w;

        /* renamed from: x */
        private final boolean f56311x;

        /* renamed from: y */
        private final boolean f56312y;

        /* renamed from: z */
        private final long[] f56313z;

        private C15837a(C15847ah c15847ah) {
            this.f56289b = c15847ah.m8200a("gcm.n.title");
            this.f56290c = c15847ah.m8191e("gcm.n.title");
            this.f56291d = m8244a(c15847ah, "gcm.n.title");
            this.f56288a = c15847ah.m8200a("gcm.n.body");
            this.f56292e = c15847ah.m8191e("gcm.n.body");
            this.f56293f = m8244a(c15847ah, "gcm.n.body");
            this.f56294g = c15847ah.m8200a("gcm.n.icon");
            this.f56296i = c15847ah.m8199b();
            this.f56297j = c15847ah.m8200a("gcm.n.tag");
            this.f56298k = c15847ah.m8200a("gcm.n.color");
            this.f56299l = c15847ah.m8200a("gcm.n.click_action");
            this.f56300m = c15847ah.m8200a("gcm.n.android_channel_id");
            this.f56301n = c15847ah.m8203a();
            this.f56295h = c15847ah.m8200a("gcm.n.image");
            this.f56302o = c15847ah.m8200a("gcm.n.ticker");
            this.f56303p = c15847ah.m8195c("gcm.n.notification_priority");
            this.f56304q = c15847ah.m8195c("gcm.n.visibility");
            this.f56305r = c15847ah.m8195c("gcm.n.notification_count");
            this.f56308u = c15847ah.m8197b("gcm.n.sticky");
            this.f56309v = c15847ah.m8197b("gcm.n.local_only");
            this.f56310w = c15847ah.m8197b("gcm.n.default_sound");
            this.f56311x = c15847ah.m8197b("gcm.n.default_vibrate_timings");
            this.f56312y = c15847ah.m8197b("gcm.n.default_light_settings");
            this.f56307t = c15847ah.m8193d("gcm.n.event_time");
            this.f56306s = c15847ah.m8194d();
            this.f56313z = c15847ah.m8196c();
        }

        /* renamed from: a */
        private static String[] m8244a(C15847ah c15847ah, String str) {
            Object[] m8189f = c15847ah.m8189f(str);
            if (m8189f == null) {
                return null;
            }
            String[] strArr = new String[m8189f.length];
            for (int i = 0; i < m8189f.length; i++) {
                strArr[i] = String.valueOf(m8189f[i]);
            }
            return strArr;
        }
    }

    public RemoteMessage(Bundle bundle) {
        this.bundle = bundle;
    }

    private int getMessagePriority(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    public final String getCollapseKey() {
        return this.bundle.getString("collapse_key");
    }

    public final Map<String, String> getData() {
        if (this.data == null) {
            Bundle bundle = this.bundle;
            C0428a c0428a = new C0428a();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals(Constants.VAST_TRACKER_MESSAGE_TYPE) && !str.equals("collapse_key")) {
                        c0428a.put(str, str2);
                    }
                }
            }
            this.data = c0428a;
        }
        return this.data;
    }

    public final String getFrom() {
        return this.bundle.getString("from");
    }

    public final String getMessageId() {
        String string = this.bundle.getString("google.message_id");
        String str = string;
        if (string == null) {
            str = this.bundle.getString("message_id");
        }
        return str;
    }

    public final String getMessageType() {
        return this.bundle.getString(Constants.VAST_TRACKER_MESSAGE_TYPE);
    }

    public final C15837a getNotification() {
        if (this.notification == null && C15847ah.m8201a(this.bundle)) {
            this.notification = new C15837a(new C15847ah(this.bundle));
        }
        return this.notification;
    }

    public final int getOriginalPriority() {
        String string = this.bundle.getString("google.original_priority");
        String str = string;
        if (string == null) {
            str = this.bundle.getString("google.priority");
        }
        return getMessagePriority(str);
    }

    public final int getPriority() {
        String string = this.bundle.getString("google.delivered_priority");
        String str = string;
        if (string == null) {
            if ("1".equals(this.bundle.getString("google.priority_reduced"))) {
                return 2;
            }
            str = this.bundle.getString("google.priority");
        }
        return getMessagePriority(str);
    }

    public final byte[] getRawData() {
        return this.bundle.getByteArray("rawData");
    }

    public final String getSenderId() {
        return this.bundle.getString("google.c.sender.id");
    }

    public final long getSentTime() {
        Object obj = this.bundle.get("google.sent_time");
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (!(obj instanceof String)) {
            return 0L;
        }
        try {
            return Long.parseLong((String) obj);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
            sb.append("Invalid sent time: ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
            return 0L;
        }
    }

    public final String getTo() {
        return this.bundle.getString("google.to");
    }

    public final int getTtl() {
        Object obj = this.bundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
            sb.append("Invalid TTL: ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
            return 0;
        }
    }

    final void populateSendMessageIntent(Intent intent) {
        intent.putExtras(this.bundle);
    }

    public final Intent toIntent() {
        Intent intent = new Intent();
        intent.putExtras(this.bundle);
        return intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C15848ai.m8184a(this, parcel);
    }
}
