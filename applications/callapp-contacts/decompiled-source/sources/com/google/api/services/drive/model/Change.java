package com.google.api.services.drive.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Change.class */
public final class Change extends GenericJson {
    @q
    private String changeType;
    @q
    private Drive drive;
    @q
    private String driveId;
    @q
    private File file;
    @q
    private String fileId;
    @q
    private String kind;
    @q
    private Boolean removed;
    @q
    private TeamDrive teamDrive;
    @q
    private String teamDriveId;
    @q
    private l time;
    @q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Change clone() {
        return (Change) super.clone();
    }

    public final String getChangeType() {
        return this.changeType;
    }

    public final Drive getDrive() {
        return this.drive;
    }

    public final String getDriveId() {
        return this.driveId;
    }

    public final File getFile() {
        return this.file;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getKind() {
        return this.kind;
    }

    public final Boolean getRemoved() {
        return this.removed;
    }

    public final TeamDrive getTeamDrive() {
        return this.teamDrive;
    }

    public final String getTeamDriveId() {
        return this.teamDriveId;
    }

    public final l getTime() {
        return this.time;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Change set(String str, Object obj) {
        return (Change) super.set(str, obj);
    }

    public final Change setChangeType(String str) {
        this.changeType = str;
        return this;
    }

    public final Change setDrive(Drive drive) {
        this.drive = drive;
        return this;
    }

    public final Change setDriveId(String str) {
        this.driveId = str;
        return this;
    }

    public final Change setFile(File file) {
        this.file = file;
        return this;
    }

    public final Change setFileId(String str) {
        this.fileId = str;
        return this;
    }

    public final Change setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Change setRemoved(Boolean bool) {
        this.removed = bool;
        return this;
    }

    public final Change setTeamDrive(TeamDrive teamDrive) {
        this.teamDrive = teamDrive;
        return this;
    }

    public final Change setTeamDriveId(String str) {
        this.teamDriveId = str;
        return this;
    }

    public final Change setTime(l lVar) {
        this.time = lVar;
        return this;
    }

    public final Change setType(String str) {
        this.type = str;
        return this;
    }
}
