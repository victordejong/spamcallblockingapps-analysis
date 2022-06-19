package com.freshchat.consumer.sdk.exception;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException.class */
public class FreshchatComponentNotFoundException extends RuntimeException {
    public FreshchatComponentNotFoundException(String str) {
        super(C22128a.m8725C2("Component of Freshchat SDK not found in your app's AndroidManifest.xml + (", str, " missing!)"));
    }
}
