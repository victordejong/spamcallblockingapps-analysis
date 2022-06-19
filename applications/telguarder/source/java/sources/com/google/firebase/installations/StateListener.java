package com.google.firebase.installations;

import com.google.firebase.installations.local.PersistedInstallationEntry;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/StateListener.class */
public interface StateListener {
    boolean onException(Exception exc);

    boolean onStateReached(PersistedInstallationEntry persistedInstallationEntry);
}
