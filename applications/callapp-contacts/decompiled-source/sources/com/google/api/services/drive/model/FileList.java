package com.google.api.services.drive.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/FileList.class */
public final class FileList extends GenericJson {
    @q
    private List<File> files;
    @q
    private Boolean incompleteSearch;
    @q
    private String kind;
    @q
    private String nextPageToken;

    static {
        j.a(File.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
