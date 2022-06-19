package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.DateTime;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/Change.class */
public final class Change extends C8666b {
    @AbstractC8720o
    private File file;
    @AbstractC8720o
    private String fileId;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private Boolean removed;
    @AbstractC8720o
    private TeamDrive teamDrive;
    @AbstractC8720o
    private String teamDriveId;
    @AbstractC8720o
    private DateTime time;
    @AbstractC8720o
    private String type;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Change clone() {
        return (Change) super.clone();
    }

    public File getFile() {
        return this.file;
    }

    public String getFileId() {
        return this.fileId;
    }

    public String getKind() {
        return this.kind;
    }

    public Boolean getRemoved() {
        return this.removed;
    }

    public TeamDrive getTeamDrive() {
        return this.teamDrive;
    }

    public String getTeamDriveId() {
        return this.teamDriveId;
    }

    public DateTime getTime() {
        return this.time;
    }

    public String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public Change set(String str, Object obj) {
        return (Change) super.set(str, obj);
    }

    public Change setFile(File file) {
        this.file = file;
        return this;
    }

    public Change setFileId(String str) {
        this.fileId = str;
        return this;
    }

    public Change setKind(String str) {
        this.kind = str;
        return this;
    }

    public Change setRemoved(Boolean bool) {
        this.removed = bool;
        return this;
    }

    public Change setTeamDrive(TeamDrive teamDrive) {
        this.teamDrive = teamDrive;
        return this;
    }

    public Change setTeamDriveId(String str) {
        this.teamDriveId = str;
        return this;
    }

    public Change setTime(DateTime dateTime) {
        this.time = dateTime;
        return this;
    }

    public Change setType(String str) {
        this.type = str;
        return this;
    }
}
