package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.AbstractC14226f;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelClient;
/* renamed from: com.google.android.gms.wearable.internal.l */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/l.class */
public final class C14339l implements AbstractC14226f.AbstractC14227a {

    /* renamed from: a */
    private final ChannelClient.C14204a f52304a;

    public C14339l(ChannelClient.C14204a c14204a) {
        this.f52304a = c14204a;
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: a */
    public final void mo11359a(Channel channel) {
        C12045o.m19161a(channel, "channel must not be null");
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: a */
    public final void mo11358a(Channel channel, int i, int i2) {
        C12045o.m19161a(channel, "channel must not be null");
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: b */
    public final void mo11357b(Channel channel, int i, int i2) {
        C12045o.m19161a(channel, "channel must not be null");
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: c */
    public final void mo11356c(Channel channel, int i, int i2) {
        C12045o.m19161a(channel, "channel must not be null");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f52304a.equals(((C14339l) obj).f52304a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f52304a.hashCode();
    }
}
