package com.appsflyer;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFVersionDeclaration.class */
public class AFVersionDeclaration {
    private static String googleSdkIdentifier;

    private AFVersionDeclaration() {
    }

    public static void init() {
        googleSdkIdentifier = "!SDK-VERSION-STRING!:com.appsflyer:af-android-sdk:5.4.6";
    }
}
