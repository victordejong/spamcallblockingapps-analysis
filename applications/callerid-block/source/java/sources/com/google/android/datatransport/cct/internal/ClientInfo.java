package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.e;
import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/ClientInfo.class */
public abstract class ClientInfo {

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/ClientInfo$ClientType.class */
    public enum ClientType {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);
        
        private final int value;

        ClientType(int i) {
            this.value = i;
        }
    }

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.cct.internal.ClientInfo$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/ClientInfo$a.class */
    public static abstract class AbstractC1281a {
        /* renamed from: a */
        public abstract ClientInfo m9331a();

        /* renamed from: b */
        public abstract AbstractC1281a m9330b(AbstractC1283a abstractC1283a);

        /* renamed from: c */
        public abstract AbstractC1281a m9329c(ClientType clientType);
    }

    /* renamed from: a */
    public static AbstractC1281a m9334a() {
        return new e.b();
    }

    /* renamed from: b */
    public abstract AbstractC1283a m9333b();

    /* renamed from: c */
    public abstract ClientType m9332c();
}
