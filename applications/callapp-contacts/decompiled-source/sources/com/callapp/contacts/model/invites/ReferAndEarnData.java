package com.callapp.contacts.model.invites;

import io.objectbox.BoxStore;
import io.objectbox.relation.ToMany;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnData.class */
public class ReferAndEarnData {
    transient BoxStore __boxStore;
    private int earnedPoints;
    protected Long id;
    private ToMany<ReferAndEarnUserData> referAndEarnUserDataToMany;
    private String referId;

    public ReferAndEarnData() {
        this.referAndEarnUserDataToMany = new ToMany<>(this, ReferAndEarnData_.referAndEarnUserDataToMany);
        this.earnedPoints = 1;
    }

    public ReferAndEarnData(String str) {
        this.referAndEarnUserDataToMany = new ToMany<>(this, ReferAndEarnData_.referAndEarnUserDataToMany);
        this.earnedPoints = 1;
        this.referId = str;
    }

    public ReferAndEarnData(String str, int i) {
        this.referAndEarnUserDataToMany = new ToMany<>(this, ReferAndEarnData_.referAndEarnUserDataToMany);
        this.earnedPoints = 1;
        this.referId = str;
        this.earnedPoints = i;
    }

    public int getEarnedPoints() {
        return this.earnedPoints;
    }

    public ToMany<ReferAndEarnUserData> getReferAndEarnUserDataToMany() {
        return this.referAndEarnUserDataToMany;
    }

    public String getReferId() {
        return this.referId;
    }

    public void setEarnedPoints(int i) {
        this.earnedPoints = i;
    }

    public void setReferAndEarnUserDataToMany(ToMany<ReferAndEarnUserData> toMany) {
        this.referAndEarnUserDataToMany = toMany;
    }

    public void setReferId(String str) {
        this.referId = str;
    }
}
