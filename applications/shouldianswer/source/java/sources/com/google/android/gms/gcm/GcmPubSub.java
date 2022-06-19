package com.google.android.gms.gcm;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.iid.InstanceID;
import java.util.regex.Pattern;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmPubSub.class */
public class GcmPubSub {
    private static GcmPubSub zzo;
    private static final Pattern zzq = Pattern.compile("/topics/[a-zA-Z0-9-_.~%]{1,900}");
    private InstanceID zzp;

    private GcmPubSub(Context context) {
        this.zzp = InstanceID.getInstance(context);
    }

    @Deprecated
    public static GcmPubSub getInstance(Context context) {
        GcmPubSub gcmPubSub;
        synchronized (GcmPubSub.class) {
            try {
                if (zzo == null) {
                    GoogleCloudMessaging.zze(context);
                    zzo = new GcmPubSub(context);
                }
                gcmPubSub = zzo;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gcmPubSub;
    }

    @Deprecated
    public void subscribe(String str, String str2, Bundle bundle) {
        if (str == null || str.isEmpty()) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid appInstanceToken: ".concat(valueOf) : new String("Invalid appInstanceToken: "));
        } else if (str2 == null || !zzq.matcher(str2).matches()) {
            String valueOf2 = String.valueOf(str2);
            throw new IllegalArgumentException(valueOf2.length() != 0 ? "Invalid topic name: ".concat(valueOf2) : new String("Invalid topic name: "));
        } else {
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString("gcm.topic", str2);
            this.zzp.getToken(str, str2, bundle2);
        }
    }

    @Deprecated
    public void unsubscribe(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", str2);
        this.zzp.zzd(str, str2, bundle);
    }
}
