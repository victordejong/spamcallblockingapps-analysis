package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.ClientInfo;
/* renamed from: com.google.android.datatransport.cct.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/e.class */
final class C4626e extends ClientInfo {

    /* renamed from: a */
    private final ClientInfo.ClientType f14153a;

    /* renamed from: b */
    private final AbstractC4613a f14154b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.cct.internal.e$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/e$b.class */
    public static final class C4628b extends ClientInfo.AbstractC4611a {

        /* renamed from: a */
        private ClientInfo.ClientType f14155a;

        /* renamed from: b */
        private AbstractC4613a f14156b;

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.AbstractC4611a
        /* renamed from: a */
        public ClientInfo mo22122a() {
            return new C4626e(this.f14155a, this.f14156b);
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.AbstractC4611a
        /* renamed from: b */
        public ClientInfo.AbstractC4611a mo22121b(AbstractC4613a abstractC4613a) {
            this.f14156b = abstractC4613a;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.AbstractC4611a
        /* renamed from: c */
        public ClientInfo.AbstractC4611a mo22120c(ClientInfo.ClientType clientType) {
            this.f14155a = clientType;
            return this;
        }
    }

    private C4626e(ClientInfo.ClientType clientType, AbstractC4613a abstractC4613a) {
        this.f14153a = clientType;
        this.f14154b = abstractC4613a;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    /* renamed from: b */
    public AbstractC4613a mo22124b() {
        return this.f14154b;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    /* renamed from: c */
    public ClientInfo.ClientType mo22123c() {
        return this.f14153a;
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
        ClientInfo.ClientType clientType = this.f14153a;
        if (clientType != null ? clientType.equals(clientInfo.mo22123c()) : clientInfo.mo22123c() == null) {
            AbstractC4613a abstractC4613a = this.f14154b;
            if (abstractC4613a != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        ClientInfo.ClientType clientType = this.f14153a;
        int i = 0;
        int hashCode = clientType == null ? 0 : clientType.hashCode();
        AbstractC4613a abstractC4613a = this.f14154b;
        if (abstractC4613a != null) {
            i = abstractC4613a.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f14153a + ", androidClientInfo=" + this.f14154b + "}";
    }
}
