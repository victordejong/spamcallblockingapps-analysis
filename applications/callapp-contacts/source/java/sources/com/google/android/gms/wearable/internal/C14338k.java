package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelClient;
/* renamed from: com.google.android.gms.wearable.internal.k */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/k.class */
public final class C14338k extends ChannelClient {

    /* renamed from: h */
    private final C14336i f52303h = new C14336i();

    public C14338k(Activity activity, AbstractC11823f.C11824a c11824a) {
        super(activity, c11824a);
    }

    public C14338k(Context context, AbstractC11823f.C11824a c11824a) {
        super(context, c11824a);
    }

    /* renamed from: a */
    public static /* synthetic */ zzay m11360a(Channel channel) {
        C12045o.m19161a(channel, "channel must not be null");
        return (zzay) channel;
    }
}
