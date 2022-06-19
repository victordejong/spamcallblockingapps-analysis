package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/FileList.class */
public final class FileList extends C8666b {
    @AbstractC8720o
    private List<File> files;
    @AbstractC8720o
    private Boolean incompleteSearch;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String nextPageToken;

    static {
        C8712j.m2874j(File.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public FileList clone() {
        return (FileList) super.clone();
    }

    public List<File> getFiles() {
        return this.files;
    }

    public Boolean getIncompleteSearch() {
        return this.incompleteSearch;
    }

    public String getKind() {
        return this.kind;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public FileList set(String str, Object obj) {
        return (FileList) super.set(str, obj);
    }

    public FileList setFiles(List<File> list) {
        this.files = list;
        return this;
    }

    public FileList setIncompleteSearch(Boolean bool) {
        this.incompleteSearch = bool;
        return this;
    }

    public FileList setKind(String str) {
        this.kind = str;
        return this;
    }

    public FileList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }
}
