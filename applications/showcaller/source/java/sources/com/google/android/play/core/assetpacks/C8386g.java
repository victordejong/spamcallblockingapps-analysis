package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC8472b1;
import com.google.android.play.core.internal.AbstractRunnableC8470b;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8504n;
import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.assetpacks.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/g.class */
final class C8386g extends AbstractRunnableC8470b {

    /* renamed from: e */
    final /* synthetic */ int f37725e;

    /* renamed from: f */
    final /* synthetic */ String f37726f;

    /* renamed from: g */
    final /* synthetic */ String f37727g;

    /* renamed from: h */
    final /* synthetic */ int f37728h;

    /* renamed from: i */
    final /* synthetic */ C8581m f37729i;

    /* renamed from: j */
    final /* synthetic */ C8418o f37730j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8386g(C8418o c8418o, C8581m c8581m, int i, String str, String str2, int i2, C8581m c8581m2) {
        super(c8581m);
        this.f37730j = c8418o;
        this.f37725e = i;
        this.f37726f = str;
        this.f37727g = str2;
        this.f37728h = i2;
        this.f37729i = c8581m2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC8470b
    /* renamed from: a */
    protected final void mo3507a() {
        C8466a c8466a;
        C8504n c8504n;
        String str;
        Bundle m3710j;
        try {
            c8504n = this.f37730j.f37870e;
            AbstractC8472b1 abstractC8472b1 = (AbstractC8472b1) c8504n.m3503c();
            str = this.f37730j.f37868c;
            Bundle m3703q = C8418o.m3703q(this.f37725e, this.f37726f, this.f37727g, this.f37728h);
            m3710j = C8418o.m3710j();
            abstractC8472b1.mo3414G2(str, m3703q, m3710j, new BinderC8402k(this.f37730j, this.f37729i));
        } catch (RemoteException e) {
            c8466a = C8418o.f37866a;
            c8466a.m3566b("getChunkFileDescriptor(%s, %s, %d, session=%d)", this.f37726f, this.f37727g, Integer.valueOf(this.f37728h), Integer.valueOf(this.f37725e));
            this.f37729i.m3312d(new RuntimeException(e));
        }
    }
}
