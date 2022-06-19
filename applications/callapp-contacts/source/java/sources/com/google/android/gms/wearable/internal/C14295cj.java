package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.AbstractC14226f;
import com.google.android.gms.wearable.Channel;
/* renamed from: com.google.android.gms.wearable.internal.cj */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cj.class */
final class C14295cj implements AbstractC14226f.AbstractC14227a {

    /* renamed from: a */
    private final String f52243a;

    /* renamed from: b */
    private final AbstractC14226f.AbstractC14227a f52244b;

    public C14295cj(String str, AbstractC14226f.AbstractC14227a abstractC14227a) {
        this.f52243a = (String) C12045o.m19162a(str);
        this.f52244b = (AbstractC14226f.AbstractC14227a) C12045o.m19162a(abstractC14227a);
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: a */
    public final void mo11359a(Channel channel) {
        this.f52244b.mo11359a(channel);
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: a */
    public final void mo11358a(Channel channel, int i, int i2) {
        this.f52244b.mo11358a(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: b */
    public final void mo11357b(Channel channel, int i, int i2) {
        this.f52244b.mo11357b(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: c */
    public final void mo11356c(Channel channel, int i, int i2) {
        this.f52244b.mo11356c(channel, i, i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14295cj)) {
            return false;
        }
        C14295cj c14295cj = (C14295cj) obj;
        return this.f52244b.equals(c14295cj.f52244b) && this.f52243a.equals(c14295cj.f52243a);
    }

    public final int hashCode() {
        return (this.f52243a.hashCode() * 31) + this.f52244b.hashCode();
    }
}
