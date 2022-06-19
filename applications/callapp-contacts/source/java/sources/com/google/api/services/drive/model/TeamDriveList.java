package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/TeamDriveList.class */
public final class TeamDriveList extends GenericJson {
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String nextPageToken;
    @AbstractC15247q
    private List<TeamDrive> teamDrives;

    static {
        C15232j.m9242a(TeamDrive.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final TeamDriveList clone() {
        return (TeamDriveList) super.clone();
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public final List<TeamDrive> getTeamDrives() {
        return this.teamDrives;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final TeamDriveList set(String str, Object obj) {
        return (TeamDriveList) super.set(str, obj);
    }

    public final TeamDriveList setKind(String str) {
        this.kind = str;
        return this;
    }

    public final TeamDriveList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final TeamDriveList setTeamDrives(List<TeamDrive> list) {
        this.teamDrives = list;
        return this;
    }
}
