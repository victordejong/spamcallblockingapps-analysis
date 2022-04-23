package com.google.firebase.installations;

import com.google.android.gms.tasks.Task;
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsApi.class */
public interface FirebaseInstallationsApi {
    Task<Void> delete();

    Task<String> getId();

    Task<InstallationTokenResult> getToken(boolean z);
}
