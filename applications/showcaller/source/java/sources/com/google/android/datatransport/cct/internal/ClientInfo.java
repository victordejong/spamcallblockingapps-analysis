package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.C4626e;
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
    public static abstract class AbstractC4611a {
        /* renamed from: a */
        public abstract ClientInfo mo22122a();

        /* renamed from: b */
        public abstract AbstractC4611a mo22121b(AbstractC4613a abstractC4613a);

        /* renamed from: c */
        public abstract AbstractC4611a mo22120c(ClientType clientType);
    }

    /* renamed from: a */
    public static AbstractC4611a m22158a() {
        return new C4626e.C4628b();
    }

    /* renamed from: b */
    public abstract AbstractC4613a mo22124b();

    /* renamed from: c */
    public abstract ClientType mo22123c();
}
