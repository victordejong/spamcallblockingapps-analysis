package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MembershipsDurationAtLevel.class */
public final class MembershipsDurationAtLevel extends GenericJson {
    @q
    private String level;
    @q
    private String memberSince;
    @q
    private Integer memberTotalDurationMonths;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final MembershipsDurationAtLevel clone() {
        return (MembershipsDurationAtLevel) super.clone();
    }

    public final String getLevel() {
        return this.level;
    }

    public final String getMemberSince() {
        return this.memberSince;
    }

    public final Integer getMemberTotalDurationMonths() {
        return this.memberTotalDurationMonths;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final MembershipsDurationAtLevel set(String str, Object obj) {
        return (MembershipsDurationAtLevel) super.set(str, obj);
    }

    public final MembershipsDurationAtLevel setLevel(String str) {
        this.level = str;
        return this;
    }

    public final MembershipsDurationAtLevel setMemberSince(String str) {
        this.memberSince = str;
        return this;
    }

    public final MembershipsDurationAtLevel setMemberTotalDurationMonths(Integer num) {
        this.memberTotalDurationMonths = num;
        return this;
    }
}
