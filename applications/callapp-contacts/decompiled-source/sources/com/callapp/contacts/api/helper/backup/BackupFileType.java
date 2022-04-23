package com.callapp.contacts.api.helper.backup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupFileType.class */
public enum BackupFileType {
    CALLLOGS("call-logs"),
    RECORDINGS("recordings", false),
    CONTACTS("contacts"),
    VIDEO_RINGTONES("video-ringtones", false),
    UN_SUPPORTED("");
    
    private final String folder;
    private final boolean replace;

    BackupFileType(String str) {
        this.folder = str;
        this.replace = true;
    }

    BackupFileType(String str, boolean z) {
        this.folder = str;
        this.replace = z;
    }

    public final String getFolderName() {
        return this.folder;
    }

    public final boolean shouldDeleteFolder() {
        return this.replace;
    }
}
