package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.wearable.C14363p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ChannelClient.class */
public abstract class ChannelClient extends AbstractC11823f<C14363p.C14364a> {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ChannelClient$Channel.class */
    public interface Channel extends Parcelable {
        String getNodeId();

        String getPath();
    }

    /* renamed from: com.google.android.gms.wearable.ChannelClient$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ChannelClient$a.class */
    public static class C14204a {
    }

    public ChannelClient(Activity activity, AbstractC11823f.C11824a c11824a) {
        super(activity, (C11808a<C11808a.AbstractC11812d>) C14363p.f52336f, (C11808a.AbstractC11812d) null, c11824a);
    }

    public ChannelClient(Context context, AbstractC11823f.C11824a c11824a) {
        super(context, C14363p.f52336f, (C11808a.AbstractC11812d) null, c11824a);
    }
}
