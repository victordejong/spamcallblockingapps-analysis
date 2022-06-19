package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.AbstractC14226f;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/Channel.class */
public interface Channel extends Parcelable {
    AbstractC11921j<Status> addListener(AbstractC11826g abstractC11826g, AbstractC14226f.AbstractC14227a abstractC14227a);

    AbstractC11921j<Status> close(AbstractC11826g abstractC11826g);

    AbstractC11921j<Status> close(AbstractC11826g abstractC11826g, int i);

    AbstractC11921j<AbstractC14224d> getInputStream(AbstractC11826g abstractC11826g);

    String getNodeId();

    AbstractC11921j<AbstractC14225e> getOutputStream(AbstractC11826g abstractC11826g);

    String getPath();

    AbstractC11921j<Status> receiveFile(AbstractC11826g abstractC11826g, Uri uri, boolean z);

    AbstractC11921j<Status> removeListener(AbstractC11826g abstractC11826g, AbstractC14226f.AbstractC14227a abstractC14227a);

    AbstractC11921j<Status> sendFile(AbstractC11826g abstractC11826g, Uri uri);

    AbstractC11921j<Status> sendFile(AbstractC11826g abstractC11826g, Uri uri, long j, long j2);
}
