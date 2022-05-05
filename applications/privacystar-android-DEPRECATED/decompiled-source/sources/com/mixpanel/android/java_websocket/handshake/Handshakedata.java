package com.mixpanel.android.java_websocket.handshake;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/handshake/Handshakedata.class */
public interface Handshakedata {
    byte[] getContent();

    String getFieldValue(String str);

    boolean hasFieldValue(String str);

    Iterator<String> iterateHttpFields();
}
