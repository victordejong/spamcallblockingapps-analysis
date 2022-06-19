package com.freshchat.consumer.sdk.p057j;
/* renamed from: com.freshchat.consumer.sdk.j.ba */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ba.class */
public class C1642ba {
    /* renamed from: fX */
    public static void m40126fX() {
        Class m40250ay;
        if (!C1610af.m40304fW() && (m40250ay = C1621ao.m40250ay("com.squareup.picasso.Picasso")) != null && C1621ao.m40249c(m40250ay, "get") == null) {
            throw new IllegalArgumentException("Unsupported version of Picasso found. Please create and set custom Image loader using Freshchat.setImageLoader().");
        }
    }

    /* renamed from: fY */
    public static boolean m40125fY() {
        return C1621ao.m40250ay("com.squareup.picasso.Picasso") != null;
    }

    /* renamed from: fZ */
    public static boolean m40124fZ() {
        return !m40125fY();
    }
}
