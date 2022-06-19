package com.freshchat.consumer.sdk.exception;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/exception/PermissionNotGrantedException.class */
public class PermissionNotGrantedException extends SecurityException {
    public PermissionNotGrantedException(String str) {
        super(C22128a.m8725C2("Permission required by Freshchat SDK not granted (Is ", str, " permission present in your manifest? )"));
    }
}
