package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MembershipsDuration.class */
public final class MembershipsDuration extends GenericJson {
    @AbstractC15247q
    private String memberSince;
    @AbstractC15247q
    private Integer memberTotalDurationMonths;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final MembershipsDuration clone() {
        return (MembershipsDuration) super.clone();
    }

    public final String getMemberSince() {
        return this.memberSince;
    }

    public final Integer getMemberTotalDurationMonths() {
        return this.memberTotalDurationMonths;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final MembershipsDuration set(String str, Object obj) {
        return (MembershipsDuration) super.set(str, obj);
    }

    public final MembershipsDuration setMemberSince(String str) {
        this.memberSince = str;
        return this;
    }

    public final MembershipsDuration setMemberTotalDurationMonths(Integer num) {
        this.memberTotalDurationMonths = num;
        return this;
    }
}
