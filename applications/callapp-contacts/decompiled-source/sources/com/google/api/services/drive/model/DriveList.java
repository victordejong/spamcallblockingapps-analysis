package com.google.api.services.drive.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/DriveList.class */
public final class DriveList extends GenericJson {
    @q
    private List<Drive> drives;
    @q
    private String kind;
    @q
    private String nextPageToken;

    static {
        j.a(Drive.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final DriveList clone() {
        return (DriveList) super.clone();
    }

    public final List<Drive> getDrives() {
        return this.drives;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final DriveList set(String str, Object obj) {
        return (DriveList) super.set(str, obj);
    }

    public final DriveList setDrives(List<Drive> list) {
        this.drives = list;
        return this;
    }

    public final DriveList setKind(String str) {
        this.kind = str;
        return this;
    }

    public final DriveList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }
}
