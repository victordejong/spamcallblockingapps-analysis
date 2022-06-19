package com.google.android.gms.internal.firebase_remote_config;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbq.class */
public final class zzbq implements Comparator<String> {
    public zzbq(zzbr zzbrVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(String str, String str2) {
        String str3 = str;
        String str4 = str2;
        if (str3 == str4 || (str3 != null && str3.equals(str4))) {
            return 0;
        }
        if (str3 == 0) {
            return -1;
        }
        if (str4 != null) {
            return str3.compareTo(str4);
        }
        return 1;
    }
}
