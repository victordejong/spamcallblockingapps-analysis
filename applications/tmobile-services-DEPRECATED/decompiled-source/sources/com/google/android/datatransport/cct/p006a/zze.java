package com.google.android.datatransport.cct.p006a;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;
/* renamed from: com.google.android.datatransport.cct.a.zze */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zze.class */
final class zze extends zzo {

    /* renamed from: a */
    private final List<zzr> f6544a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(List<zzr> list) {
        if (list != null) {
            this.f6544a = list;
            return;
        }
        throw new NullPointerException("Null logRequests");
    }

    @Override // com.google.android.datatransport.cct.p006a.zzo
    @NonNull
    @Encodable.Field(name = "logRequest")
    /* renamed from: b */
    public List<zzr> mo15529b() {
        return this.f6544a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzo) {
            return this.f6544a.equals(((zzo) obj).mo15529b());
        }
        return false;
    }

    public int hashCode() {
        return this.f6544a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f6544a + "}";
    }
}
