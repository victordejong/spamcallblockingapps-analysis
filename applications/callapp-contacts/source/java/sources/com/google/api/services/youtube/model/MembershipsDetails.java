package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MembershipsDetails.class */
public final class MembershipsDetails extends GenericJson {
    @AbstractC15247q
    private List<String> accessibleLevels;
    @AbstractC15247q
    private String highestAccessibleLevel;
    @AbstractC15247q
    private String highestAccessibleLevelDisplayName;
    @AbstractC15247q
    private MembershipsDuration membershipsDuration;
    @AbstractC15247q
    private List<MembershipsDurationAtLevel> membershipsDurationAtLevels;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final MembershipsDetails clone() {
        return (MembershipsDetails) super.clone();
    }

    public final List<String> getAccessibleLevels() {
        return this.accessibleLevels;
    }

    public final String getHighestAccessibleLevel() {
        return this.highestAccessibleLevel;
    }

    public final String getHighestAccessibleLevelDisplayName() {
        return this.highestAccessibleLevelDisplayName;
    }

    public final MembershipsDuration getMembershipsDuration() {
        return this.membershipsDuration;
    }

    public final List<MembershipsDurationAtLevel> getMembershipsDurationAtLevels() {
        return this.membershipsDurationAtLevels;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final MembershipsDetails set(String str, Object obj) {
        return (MembershipsDetails) super.set(str, obj);
    }

    public final MembershipsDetails setAccessibleLevels(List<String> list) {
        this.accessibleLevels = list;
        return this;
    }

    public final MembershipsDetails setHighestAccessibleLevel(String str) {
        this.highestAccessibleLevel = str;
        return this;
    }

    public final MembershipsDetails setHighestAccessibleLevelDisplayName(String str) {
        this.highestAccessibleLevelDisplayName = str;
        return this;
    }

    public final MembershipsDetails setMembershipsDuration(MembershipsDuration membershipsDuration) {
        this.membershipsDuration = membershipsDuration;
        return this;
    }

    public final MembershipsDetails setMembershipsDurationAtLevels(List<MembershipsDurationAtLevel> list) {
        this.membershipsDurationAtLevels = list;
        return this;
    }
}
