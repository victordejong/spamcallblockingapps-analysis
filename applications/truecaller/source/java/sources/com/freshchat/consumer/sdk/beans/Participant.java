package com.freshchat.consumer.sdk.beans;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Participant.class */
public class Participant {
    private String alias;
    private String firstName;
    private String lastName;
    private String profilePicUrl;

    public String getAlias() {
        return this.alias;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public String getProfilePicUrl() {
        return this.profilePicUrl;
    }

    public void setAlias(String str) {
        this.alias = str;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public void setProfilePicUrl(String str) {
        this.profilePicUrl = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Participant{alias='");
        C22128a.m8678P0(m8728C, this.alias, '\'', ", firstName='");
        C22128a.m8678P0(m8728C, this.firstName, '\'', ", lastName='");
        C22128a.m8678P0(m8728C, this.lastName, '\'', ", profilePicUrl='");
        return C22128a.m8626f(m8728C, this.profilePicUrl, '\'', '}');
    }
}
