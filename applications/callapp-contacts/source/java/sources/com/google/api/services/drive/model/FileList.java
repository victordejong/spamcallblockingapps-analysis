package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/FileList.class */
public final class FileList extends GenericJson {
    @AbstractC15247q
    private List<File> files;
    @AbstractC15247q
    private Boolean incompleteSearch;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String nextPageToken;

    static {
        C15232j.m9242a(File.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final FileList clone() {
        return (FileList) super.clone();
    }

    public final List<File> getFiles() {
        return this.files;
    }

    public final Boolean getIncompleteSearch() {
        return this.incompleteSearch;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final FileList set(String str, Object obj) {
        return (FileList) super.set(str, obj);
    }

    public final FileList setFiles(List<File> list) {
        this.files = list;
        return this;
    }

    public final FileList setIncompleteSearch(Boolean bool) {
        this.incompleteSearch = bool;
        return this;
    }

    public final FileList setKind(String str) {
        this.kind = str;
        return this;
    }

    public final FileList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }
}
