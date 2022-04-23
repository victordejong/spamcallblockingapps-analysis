package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.mopub.common.Constants;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/RemoteMessage.class */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new ai();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;
    Bundle bundle;
    private Map<String, String> data;
    private a notification;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f32451a;

        /* renamed from: b  reason: collision with root package name */
        private final String f32452b;

        /* renamed from: c  reason: collision with root package name */
        private final String f32453c;

        /* renamed from: d  reason: collision with root package name */
        private final String[] f32454d;
        private final String e;
        private final String[] f;
        private final String g;
        private final String h;
        private final String i;
        private final String j;
        private final String k;
        private final String l;
        private final String m;
        private final Uri n;
        private final String o;
        private final Integer p;
        private final Integer q;
        private final Integer r;
        private final int[] s;
        private final Long t;
        private final boolean u;
        private final boolean v;
        private final boolean w;
        private final boolean x;
        private final boolean y;
        private final long[] z;

        private a(ah ahVar) {
            this.f32452b = ahVar.a("gcm.n.title");
            this.f32453c = ahVar.e("gcm.n.title");
            this.f32454d = a(ahVar, "gcm.n.title");
            this.f32451a = ahVar.a("gcm.n.body");
            this.e = ahVar.e("gcm.n.body");
            this.f = a(ahVar, "gcm.n.body");
            this.g = ahVar.a("gcm.n.icon");
            this.i = ahVar.b();
            this.j = ahVar.a("gcm.n.tag");
            this.k = ahVar.a("gcm.n.color");
            this.l = ahVar.a("gcm.n.click_action");
            this.m = ahVar.a("gcm.n.android_channel_id");
            this.n = ahVar.a();
            this.h = ahVar.a("gcm.n.image");
            this.o = ahVar.a("gcm.n.ticker");
            this.p = ahVar.c("gcm.n.notification_priority");
            this.q = ahVar.c("gcm.n.visibility");
            this.r = ahVar.c("gcm.n.notification_count");
            this.u = ahVar.b("gcm.n.sticky");
            this.v = ahVar.b("gcm.n.local_only");
            this.w = ahVar.b("gcm.n.default_sound");
            this.x = ahVar.b("gcm.n.default_vibrate_timings");
            this.y = ahVar.b("gcm.n.default_light_settings");
            this.t = ahVar.d("gcm.n.event_time");
            this.s = ahVar.d();
            this.z = ahVar.c();
        }

        private static String[] a(ah ahVar, String str) {
            Object[] f = ahVar.f(str);
            if (f == null) {
                return null;
            }
            String[] strArr = new String[f.length];
            for (int i = 0; i < f.length; i++) {
                strArr[i] = String.valueOf(f[i]);
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
            androidx.b.a aVar = new androidx.b.a();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals(Constants.VAST_TRACKER_MESSAGE_TYPE) && !str.equals("collapse_key")) {
                        aVar.put(str, str2);
                    }
                }
            }
            this.data = aVar;
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

    public final a getNotification() {
        if (this.notification == null && ah.a(this.bundle)) {
            this.notification = new a(new ah(this.bundle));
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
        ai.a(this, parcel);
    }
}
