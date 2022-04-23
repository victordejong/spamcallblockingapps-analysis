package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelClient;
import com.google.android.gms.wearable.f;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/l.class */
public final class l implements f.a {

    /* renamed from: a  reason: collision with root package name */
    private final ChannelClient.a f30143a;

    public l(ChannelClient.a aVar) {
        this.f30143a = aVar;
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void a(Channel channel) {
        k.a(channel);
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void a(Channel channel, int i, int i2) {
        k.a(channel);
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void b(Channel channel, int i, int i2) {
        k.a(channel);
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void c(Channel channel, int i, int i2) {
        k.a(channel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f30143a.equals(((l) obj).f30143a);
    }

    public final int hashCode() {
        return this.f30143a.hashCode();
    }
}
