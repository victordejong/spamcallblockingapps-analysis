package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Change.class */
public final class Change extends GenericJson {
    @AbstractC15247q
    private String changeType;
    @AbstractC15247q
    private Drive drive;
    @AbstractC15247q
    private String driveId;
    @AbstractC15247q
    private File file;
    @AbstractC15247q
    private String fileId;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private Boolean removed;
    @AbstractC15247q
    private TeamDrive teamDrive;
    @AbstractC15247q
    private String teamDriveId;
    @AbstractC15247q
    private C15237l time;
    @AbstractC15247q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    public final C15237l getTime() {
        return this.time;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    public final Change setTime(C15237l c15237l) {
        this.time = c15237l;
        return this;
    }

    public final Change setType(String str) {
        this.type = str;
        return this;
    }
}
