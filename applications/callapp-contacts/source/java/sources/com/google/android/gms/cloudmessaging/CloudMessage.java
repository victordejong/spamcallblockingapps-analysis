package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.p023b.C0428a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.mopub.common.Constants;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessage.class */
public final class CloudMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CloudMessage> CREATOR = new C11780c();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;
    private Intent zza;
    private Map<String, String> zzb;

    public CloudMessage(Intent intent) {
        this.zza = intent;
    }

    private static int zza(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    public final String getCollapseKey() {
        return this.zza.getStringExtra("collapse_key");
    }

    public final Map<String, String> getData() {
        Map<String, String> map;
        synchronized (this) {
            if (this.zzb == null) {
                Bundle extras = this.zza.getExtras();
                C0428a c0428a = new C0428a();
                if (extras != null) {
                    for (String str : extras.keySet()) {
                        Object obj = extras.get(str);
                        if (obj instanceof String) {
                            String str2 = (String) obj;
                            if (!str.startsWith("google.") && !str.equals("from") && !str.equals(Constants.VAST_TRACKER_MESSAGE_TYPE) && !str.equals("collapse_key")) {
                                c0428a.put(str, str2);
                            }
                        }
                    }
                }
                this.zzb = c0428a;
            }
            map = this.zzb;
        }
        return map;
    }

    public final String getFrom() {
        return this.zza.getStringExtra("from");
    }

    public final Intent getIntent() {
        return this.zza;
    }

    public final String getMessageId() {
        String stringExtra = this.zza.getStringExtra("google.message_id");
        String str = stringExtra;
        if (stringExtra == null) {
            str = this.zza.getStringExtra("message_id");
        }
        return str;
    }

    public final String getMessageType() {
        return this.zza.getStringExtra(Constants.VAST_TRACKER_MESSAGE_TYPE);
    }

    public final int getOriginalPriority() {
        String stringExtra = this.zza.getStringExtra("google.original_priority");
        String str = stringExtra;
        if (stringExtra == null) {
            str = this.zza.getStringExtra("google.priority");
        }
        return zza(str);
    }

    public final int getPriority() {
        String stringExtra = this.zza.getStringExtra("google.delivered_priority");
        String str = stringExtra;
        if (stringExtra == null) {
            if ("1".equals(this.zza.getStringExtra("google.priority_reduced"))) {
                return 2;
            }
            str = this.zza.getStringExtra("google.priority");
        }
        return zza(str);
    }

    public final byte[] getRawData() {
        return this.zza.getByteArrayExtra("rawData");
    }

    public final String getSenderId() {
        return this.zza.getStringExtra("google.c.sender.id");
    }

    public final long getSentTime() {
        Bundle extras = this.zza.getExtras();
        String str = extras != null ? extras.get("google.sent_time") : null;
        if (str instanceof Long) {
            return str.longValue();
        }
        if (!(str instanceof String)) {
            return 0L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(str);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
            sb.append("Invalid sent time: ");
            sb.append(valueOf);
            Log.w("CloudMessage", sb.toString());
            return 0L;
        }
    }

    public final String getTo() {
        return this.zza.getStringExtra("google.to");
    }

    public final int getTtl() {
        Bundle extras = this.zza.getExtras();
        String str = extras != null ? extras.get("google.ttl") : null;
        if (str instanceof Integer) {
            return str.intValue();
        }
        if (!(str instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(str);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
            sb.append("Invalid TTL: ");
            sb.append(valueOf);
            Log.w("CloudMessage", sb.toString());
            return 0;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 1, this.zza, i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
