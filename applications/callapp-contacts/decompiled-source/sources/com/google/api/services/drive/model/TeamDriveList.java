package com.google.api.services.drive.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/TeamDriveList.class */
public final class TeamDriveList extends GenericJson {
    @q
    private String kind;
    @q
    private String nextPageToken;
    @q
    private List<TeamDrive> teamDrives;

    static {
        j.a(TeamDrive.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
