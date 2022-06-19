package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.ClientInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoValue_ClientInfo.class */
final class AutoValue_ClientInfo extends ClientInfo {
    private final AndroidClientInfo androidClientInfo;
    private final ClientInfo.ClientType clientType;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder.class */
    public static final class Builder extends ClientInfo.Builder {
        private AndroidClientInfo androidClientInfo;
        private ClientInfo.ClientType clientType;

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public ClientInfo build() {
            return new AutoValue_ClientInfo(this.clientType, this.androidClientInfo);
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public ClientInfo.Builder setAndroidClientInfo(AndroidClientInfo androidClientInfo) {
            this.androidClientInfo = androidClientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public ClientInfo.Builder setClientType(ClientInfo.ClientType clientType) {
            this.clientType = clientType;
            return this;
        }
    }

    private AutoValue_ClientInfo(ClientInfo.ClientType clientType, AndroidClientInfo androidClientInfo) {
        this.clientType = clientType;
        this.androidClientInfo = androidClientInfo;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientInfo)) {
            return false;
        }
        ClientInfo clientInfo = (ClientInfo) obj;
        ClientInfo.ClientType clientType = this.clientType;
        if (clientType != null ? clientType.equals(clientInfo.getClientType()) : clientInfo.getClientType() == null) {
            AndroidClientInfo androidClientInfo = this.androidClientInfo;
            if (androidClientInfo != null) {
            }
        }
        z = false;
        return z;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    public AndroidClientInfo getAndroidClientInfo() {
        return this.androidClientInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    public ClientInfo.ClientType getClientType() {
        return this.clientType;
    }

    public int hashCode() {
        ClientInfo.ClientType clientType = this.clientType;
        int i = 0;
        int hashCode = clientType == null ? 0 : clientType.hashCode();
        AndroidClientInfo androidClientInfo = this.androidClientInfo;
        if (androidClientInfo != null) {
            i = androidClientInfo.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.clientType + ", androidClientInfo=" + this.androidClientInfo + "}";
    }
}
