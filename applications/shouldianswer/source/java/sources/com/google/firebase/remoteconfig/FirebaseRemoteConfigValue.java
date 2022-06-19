package com.google.firebase.remoteconfig;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigValue.class */
public interface FirebaseRemoteConfigValue {
    boolean asBoolean();

    byte[] asByteArray();

    double asDouble();

    long asLong();

    String asString();

    int getSource();
}
