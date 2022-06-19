package com.callapp.contacts.model;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounter.class */
public enum UsageCounter {
    facebookRequests(1, 1),
    twitterSearchRequests(4, 1),
    googlePlusSearchRequests(5, 1),
    foursquareRequests(6, 1),
    instagramRequests(7, 2),
    twitterTweets(4, 3),
    twitterPicture(4, 4),
    twitterUser(4, 5),
    pinterestRequests(9, 1);
    
    public final int callType;

    /* renamed from: id */
    public final int f26736id;

    UsageCounter(int i, int i2) {
        this.f26736id = i;
        this.callType = i2;
    }
}
