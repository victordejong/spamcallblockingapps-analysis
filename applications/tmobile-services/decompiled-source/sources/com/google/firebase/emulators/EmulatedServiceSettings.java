package com.google.firebase.emulators;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/emulators/EmulatedServiceSettings.class */
public final class EmulatedServiceSettings {
    private final String host;
    private final int port;

    public EmulatedServiceSettings(@NonNull String str, int i) {
        this.host = str;
        this.port = i;
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        return this.port;
    }
}
