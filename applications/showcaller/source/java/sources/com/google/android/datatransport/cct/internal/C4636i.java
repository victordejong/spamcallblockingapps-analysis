package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
/* renamed from: com.google.android.datatransport.cct.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/i.class */
final class C4636i extends NetworkConnectionInfo {

    /* renamed from: a */
    private final NetworkConnectionInfo.NetworkType f14186a;

    /* renamed from: b */
    private final NetworkConnectionInfo.MobileSubtype f14187b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.cct.internal.i$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/i$b.class */
    public static final class C4638b extends NetworkConnectionInfo.AbstractC4612a {

        /* renamed from: a */
        private NetworkConnectionInfo.NetworkType f14188a;

        /* renamed from: b */
        private NetworkConnectionInfo.MobileSubtype f14189b;

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.AbstractC4612a
        /* renamed from: a */
        public NetworkConnectionInfo mo22117a() {
            return new C4636i(this.f14188a, this.f14189b);
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.AbstractC4612a
        /* renamed from: b */
        public NetworkConnectionInfo.AbstractC4612a mo22116b(NetworkConnectionInfo.MobileSubtype mobileSubtype) {
            this.f14189b = mobileSubtype;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.AbstractC4612a
        /* renamed from: c */
        public NetworkConnectionInfo.AbstractC4612a mo22115c(NetworkConnectionInfo.NetworkType networkType) {
            this.f14188a = networkType;
            return this;
        }
    }

    private C4636i(NetworkConnectionInfo.NetworkType networkType, NetworkConnectionInfo.MobileSubtype mobileSubtype) {
        this.f14186a = networkType;
        this.f14187b = mobileSubtype;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    /* renamed from: b */
    public NetworkConnectionInfo.MobileSubtype mo22119b() {
        return this.f14187b;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    /* renamed from: c */
    public NetworkConnectionInfo.NetworkType mo22118c() {
        return this.f14186a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkConnectionInfo)) {
            return false;
        }
        NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
        NetworkConnectionInfo.NetworkType networkType = this.f14186a;
        if (networkType != null ? networkType.equals(networkConnectionInfo.mo22118c()) : networkConnectionInfo.mo22118c() == null) {
            NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f14187b;
            if (mobileSubtype != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        NetworkConnectionInfo.NetworkType networkType = this.f14186a;
        int i = 0;
        int hashCode = networkType == null ? 0 : networkType.hashCode();
        NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f14187b;
        if (mobileSubtype != null) {
            i = mobileSubtype.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f14186a + ", mobileSubtype=" + this.f14187b + "}";
    }
}
