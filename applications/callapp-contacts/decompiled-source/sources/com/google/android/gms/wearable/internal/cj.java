package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.f;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cj.class */
final class cj implements f.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f30101a;

    /* renamed from: b  reason: collision with root package name */
    private final f.a f30102b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(String str, f.a aVar) {
        this.f30101a = (String) o.a(str);
        this.f30102b = (f.a) o.a(aVar);
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void a(Channel channel) {
        this.f30102b.a(channel);
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void a(Channel channel, int i, int i2) {
        this.f30102b.a(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void b(Channel channel, int i, int i2) {
        this.f30102b.b(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void c(Channel channel, int i, int i2) {
        this.f30102b.c(channel, i, i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cj)) {
            return false;
        }
        cj cjVar = (cj) obj;
        return this.f30102b.equals(cjVar.f30102b) && this.f30101a.equals(cjVar.f30101a);
    }

    public final int hashCode() {
        return (this.f30101a.hashCode() * 31) + this.f30102b.hashCode();
    }
}
