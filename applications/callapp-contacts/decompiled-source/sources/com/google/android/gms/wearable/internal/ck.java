package com.google.android.gms.wearable.internal;

import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.e;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ck.class */
public final class ck {
    public static Status a(int i) {
        String str;
        switch (i) {
            case ConferenceActivity.SNACK_BAR_DURATION /* 4000 */:
                str = "TARGET_NODE_NOT_CONNECTED";
                break;
            case 4001:
                str = "DUPLICATE_LISTENER";
                break;
            case 4002:
                str = "UNKNOWN_LISTENER";
                break;
            case 4003:
                str = "DATA_ITEM_TOO_LARGE";
                break;
            case 4004:
                str = "INVALID_TARGET_NODE";
                break;
            case 4005:
                str = "ASSET_UNAVAILABLE";
                break;
            default:
                str = e.a(i);
                break;
        }
        return new Status(i, str);
    }
}
