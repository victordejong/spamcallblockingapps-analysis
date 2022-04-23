package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import android.os.Parcelable;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.wearable.p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ChannelClient.class */
public abstract class ChannelClient extends f<p.a> {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ChannelClient$Channel.class */
    public interface Channel extends Parcelable {
        String getNodeId();

        String getPath();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ChannelClient$a.class */
    public static class a {
    }

    public ChannelClient(Activity activity, f.a aVar) {
        super(activity, (com.google.android.gms.common.api.a<a.d>) p.f, (a.d) null, aVar);
    }

    public ChannelClient(Context context, f.a aVar) {
        super(context, p.f, (a.d) null, aVar);
    }
}
