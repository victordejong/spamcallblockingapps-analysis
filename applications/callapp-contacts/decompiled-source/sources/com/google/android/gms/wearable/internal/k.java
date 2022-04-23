package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelClient;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/k.class */
public final class k extends ChannelClient {
    private final i h = new i();

    public k(Activity activity, f.a aVar) {
        super(activity, aVar);
    }

    public k(Context context, f.a aVar) {
        super(context, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzay a(Channel channel) {
        o.a(channel, "channel must not be null");
        return (zzay) channel;
    }
}
