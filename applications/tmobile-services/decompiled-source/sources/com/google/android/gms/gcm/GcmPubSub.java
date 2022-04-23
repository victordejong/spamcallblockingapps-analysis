package com.google.android.gms.gcm;

import java.util.regex.Pattern;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmPubSub.class */
public class GcmPubSub {
    static {
        Pattern.compile("/topics/[a-zA-Z0-9-_.~%]{1,900}");
    }
}
