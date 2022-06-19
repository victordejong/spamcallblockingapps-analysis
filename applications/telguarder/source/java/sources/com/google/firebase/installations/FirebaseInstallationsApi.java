package com.google.firebase.installations;

import com.google.android.gms.tasks.Task;
import com.google.firebase.installations.internal.FidListener;
import com.google.firebase.installations.internal.FidListenerHandle;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsApi.class */
public interface FirebaseInstallationsApi {
    Task<Void> delete();

    Task<String> getId();

    Task<InstallationTokenResult> getToken(boolean z);

    FidListenerHandle registerFidListener(FidListener fidListener);
}
