package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/TeamDriveList.class */
public final class TeamDriveList extends C8666b {
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String nextPageToken;
    @AbstractC8720o
    private List<TeamDrive> teamDrives;

    static {
        C8712j.m2874j(TeamDrive.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public TeamDriveList clone() {
        return (TeamDriveList) super.clone();
    }

    public String getKind() {
        return this.kind;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    public List<TeamDrive> getTeamDrives() {
        return this.teamDrives;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public TeamDriveList set(String str, Object obj) {
        return (TeamDriveList) super.set(str, obj);
    }

    public TeamDriveList setKind(String str) {
        this.kind = str;
        return this;
    }

    public TeamDriveList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public TeamDriveList setTeamDrives(List<TeamDrive> list) {
        this.teamDrives = list;
        return this;
    }
}
