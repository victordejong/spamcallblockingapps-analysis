package com.google.android.gms.internal.icing;

import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
@ShowFirstParty
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzq.class */
public final class zzq {
    @VisibleForTesting

    /* renamed from: a */
    static final String[] f8140a = {"text1", "text2", "icon", "intent_action", "intent_data", "intent_data_id", "intent_extra_data", "suggest_large_icon", "intent_activity", "thing_proto"};

    /* renamed from: b */
    private static final Map<String, Integer> f8141b = new HashMap(f8140a.length);

    static {
        int i = 0;
        while (true) {
            String[] strArr = f8140a;
            if (i < strArr.length) {
                f8141b.put(strArr[i], Integer.valueOf(i));
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static String m13471a(int i) {
        if (i < 0) {
            return null;
        }
        String[] strArr = f8140a;
        if (i >= strArr.length) {
            return null;
        }
        return strArr[i];
    }
}
