package p131c.p161d.p170b.p173b.p174h.p175f;

import com.google.android.datatransport.cct.internal.ClientInfo;
/* renamed from: c.d.b.b.h.f.e */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/e.class */
public final class C2519e extends ClientInfo {

    /* renamed from: a */
    public final ClientInfo.ClientType f9533a;

    /* renamed from: b */
    public final AbstractC2506a f9534b;

    /* renamed from: c.d.b.b.h.f.e$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/e$b.class */
    public static final class C2521b extends ClientInfo.AbstractC7116a {

        /* renamed from: a */
        public ClientInfo.ClientType f9535a;

        /* renamed from: b */
        public AbstractC2506a f9536b;

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.AbstractC7116a
        /* renamed from: a */
        public ClientInfo.AbstractC7116a mo18750a(AbstractC2506a aVar) {
            this.f9536b = aVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.AbstractC7116a
        /* renamed from: a */
        public ClientInfo.AbstractC7116a mo18749a(ClientInfo.ClientType clientType) {
            this.f9535a = clientType;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.AbstractC7116a
        /* renamed from: a */
        public ClientInfo mo18751a() {
            return new C2519e(this.f9535a, this.f9536b);
        }
    }

    public C2519e(ClientInfo.ClientType clientType, AbstractC2506a aVar) {
        this.f9533a = clientType;
        this.f9534b = aVar;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    /* renamed from: a */
    public AbstractC2506a mo18754a() {
        return this.f9534b;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    /* renamed from: b */
    public ClientInfo.ClientType mo18753b() {
        return this.f9533a;
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
        ClientInfo.ClientType clientType = this.f9533a;
        if (clientType != null ? clientType.equals(clientInfo.mo18753b()) : clientInfo.mo18753b() == null) {
            AbstractC2506a aVar = this.f9534b;
            if (aVar != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        ClientInfo.ClientType clientType = this.f9533a;
        int i = 0;
        int hashCode = clientType == null ? 0 : clientType.hashCode();
        AbstractC2506a aVar = this.f9534b;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f9533a + ", androidClientInfo=" + this.f9534b + "}";
    }
}
