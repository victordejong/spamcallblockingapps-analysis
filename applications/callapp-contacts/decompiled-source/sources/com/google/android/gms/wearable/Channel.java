package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.j;
import com.google.android.gms.wearable.f;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/Channel.class */
public interface Channel extends Parcelable {
    j<Status> addListener(g gVar, f.a aVar);

    j<Status> close(g gVar);

    j<Status> close(g gVar, int i);

    j<d> getInputStream(g gVar);

    String getNodeId();

    j<e> getOutputStream(g gVar);

    String getPath();

    j<Status> receiveFile(g gVar, Uri uri, boolean z);

    j<Status> removeListener(g gVar, f.a aVar);

    j<Status> sendFile(g gVar, Uri uri);

    j<Status> sendFile(g gVar, Uri uri, long j, long j2);
}
