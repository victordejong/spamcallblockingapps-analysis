package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.p014c.C0374a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/RemoteMessage.class */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new zzm();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;
    Bundle zza;
    private Map<String, String> zzb;
    private Notification zzc;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$Builder.class */
    public static class Builder {
        private final Bundle zza = new Bundle();
        private final Map<String, String> zzb = new C0374a();

        public Builder(String str) {
            if (TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid to: ".concat(valueOf) : new String("Invalid to: "));
            } else {
                this.zza.putString("google.to", str);
            }
        }

        public Builder addData(String str, String str2) {
            this.zzb.put(str, str2);
            return this;
        }

        public RemoteMessage build() {
            Bundle bundle = new Bundle();
            for (Map.Entry<String, String> entry : this.zzb.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
            bundle.putAll(this.zza);
            this.zza.remove("from");
            return new RemoteMessage(bundle);
        }

        public Builder clearData() {
            this.zzb.clear();
            return this;
        }

        public Builder setCollapseKey(String str) {
            this.zza.putString("collapse_key", str);
            return this;
        }

        public Builder setData(Map<String, String> map) {
            this.zzb.clear();
            this.zzb.putAll(map);
            return this;
        }

        public Builder setMessageId(String str) {
            this.zza.putString("google.message_id", str);
            return this;
        }

        public Builder setMessageType(String str) {
            this.zza.putString("message_type", str);
            return this;
        }

        public Builder setTtl(int i) {
            this.zza.putString("google.ttl", String.valueOf(i));
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$MessagePriority.class */
    public @interface MessagePriority {
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$Notification.class */
    public static class Notification {
        private final String zza;
        private final String zzb;
        private final String[] zzc;
        private final String zzd;
        private final String zze;
        private final String[] zzf;
        private final String zzg;
        private final String zzh;
        private final String zzi;
        private final String zzj;
        private final String zzk;
        private final String zzl;
        private final String zzm;
        private final Uri zzn;
        private final String zzo;
        private final Integer zzp;
        private final Integer zzq;
        private final Integer zzr;
        private final int[] zzs;
        private final Long zzt;
        private final boolean zzu;
        private final boolean zzv;
        private final boolean zzw;
        private final boolean zzx;
        private final boolean zzy;
        private final long[] zzz;

        private Notification(zzk zzkVar) {
            this.zza = zzkVar.zza("gcm.n.title");
            this.zzb = zzkVar.zze("gcm.n.title");
            this.zzc = zza(zzkVar, "gcm.n.title");
            this.zzd = zzkVar.zza("gcm.n.body");
            this.zze = zzkVar.zze("gcm.n.body");
            this.zzf = zza(zzkVar, "gcm.n.body");
            this.zzg = zzkVar.zza("gcm.n.icon");
            this.zzi = zzkVar.zzb();
            this.zzj = zzkVar.zza("gcm.n.tag");
            this.zzk = zzkVar.zza("gcm.n.color");
            this.zzl = zzkVar.zza("gcm.n.click_action");
            this.zzm = zzkVar.zza("gcm.n.android_channel_id");
            this.zzn = zzkVar.zza();
            this.zzh = zzkVar.zza("gcm.n.image");
            this.zzo = zzkVar.zza("gcm.n.ticker");
            this.zzp = zzkVar.zzc("gcm.n.notification_priority");
            this.zzq = zzkVar.zzc("gcm.n.visibility");
            this.zzr = zzkVar.zzc("gcm.n.notification_count");
            this.zzu = zzkVar.zzb("gcm.n.sticky");
            this.zzv = zzkVar.zzb("gcm.n.local_only");
            this.zzw = zzkVar.zzb("gcm.n.default_sound");
            this.zzx = zzkVar.zzb("gcm.n.default_vibrate_timings");
            this.zzy = zzkVar.zzb("gcm.n.default_light_settings");
            this.zzt = zzkVar.zzd("gcm.n.event_time");
            this.zzs = zzkVar.zzd();
            this.zzz = zzkVar.zzc();
        }

        private static String[] zza(zzk zzkVar, String str) {
            Object[] zzf = zzkVar.zzf(str);
            if (zzf == null) {
                return null;
            }
            String[] strArr = new String[zzf.length];
            for (int i = 0; i < zzf.length; i++) {
                strArr[i] = String.valueOf(zzf[i]);
            }
            return strArr;
        }

        public String getBody() {
            return this.zzd;
        }

        public String[] getBodyLocalizationArgs() {
            return this.zzf;
        }

        public String getBodyLocalizationKey() {
            return this.zze;
        }

        public String getChannelId() {
            return this.zzm;
        }

        public String getClickAction() {
            return this.zzl;
        }

        public String getColor() {
            return this.zzk;
        }

        public boolean getDefaultLightSettings() {
            return this.zzy;
        }

        public boolean getDefaultSound() {
            return this.zzw;
        }

        public boolean getDefaultVibrateSettings() {
            return this.zzx;
        }

        public Long getEventTime() {
            return this.zzt;
        }

        public String getIcon() {
            return this.zzg;
        }

        public Uri getImageUrl() {
            String str = this.zzh;
            if (str != null) {
                return Uri.parse(str);
            }
            return null;
        }

        public int[] getLightSettings() {
            return this.zzs;
        }

        public Uri getLink() {
            return this.zzn;
        }

        public boolean getLocalOnly() {
            return this.zzv;
        }

        public Integer getNotificationCount() {
            return this.zzr;
        }

        public Integer getNotificationPriority() {
            return this.zzp;
        }

        public String getSound() {
            return this.zzi;
        }

        public boolean getSticky() {
            return this.zzu;
        }

        public String getTag() {
            return this.zzj;
        }

        public String getTicker() {
            return this.zzo;
        }

        public String getTitle() {
            return this.zza;
        }

        public String[] getTitleLocalizationArgs() {
            return this.zzc;
        }

        public String getTitleLocalizationKey() {
            return this.zzb;
        }

        public long[] getVibrateTimings() {
            return this.zzz;
        }

        public Integer getVisibility() {
            return this.zzq;
        }
    }

    public RemoteMessage(Bundle bundle) {
        this.zza = bundle;
    }

    private static int zza(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    public final String getCollapseKey() {
        return this.zza.getString("collapse_key");
    }

    public final Map<String, String> getData() {
        if (this.zzb == null) {
            Bundle bundle = this.zza;
            C0374a c0374a = new C0374a();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals("message_type") && !str.equals("collapse_key")) {
                        c0374a.put(str, str2);
                    }
                }
            }
            this.zzb = c0374a;
        }
        return this.zzb;
    }

    public final String getFrom() {
        return this.zza.getString("from");
    }

    public final String getMessageId() {
        String string = this.zza.getString("google.message_id");
        String str = string;
        if (string == null) {
            str = this.zza.getString("message_id");
        }
        return str;
    }

    public final String getMessageType() {
        return this.zza.getString("message_type");
    }

    public final Notification getNotification() {
        if (this.zzc == null && zzk.zza(this.zza)) {
            this.zzc = new Notification(new zzk(this.zza));
        }
        return this.zzc;
    }

    public final int getOriginalPriority() {
        String string = this.zza.getString("google.original_priority");
        String str = string;
        if (string == null) {
            str = this.zza.getString("google.priority");
        }
        return zza(str);
    }

    public final int getPriority() {
        String string = this.zza.getString("google.delivered_priority");
        String str = string;
        if (string == null) {
            if ("1".equals(this.zza.getString("google.priority_reduced"))) {
                return 2;
            }
            str = this.zza.getString("google.priority");
        }
        return zza(str);
    }

    public final long getSentTime() {
        Object obj = this.zza.get("google.sent_time");
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
        return this.zza.getString("google.to");
    }

    public final int getTtl() {
        Object obj = this.zza.get("google.ttl");
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

    public final Intent toIntent() {
        Intent intent = new Intent();
        intent.putExtras(this.zza);
        return intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, this.zza, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
