package com.callapp.contacts.api.helper.backup;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J'\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001f"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "", "path", "", "message", "Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;", "fileType", "Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V", "getFileType", "()Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "setFileType", "(Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V", "getMessage", "()Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;", "setMessage", "(Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;)V", "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupUploadFileData.class */
public final class BackupUploadFileData {

    /* renamed from: a */
    private String f24744a;

    /* renamed from: b */
    private BackupMessageCode f24745b;

    /* renamed from: c */
    private BackupFileType f24746c;

    public BackupUploadFileData(String path, BackupMessageCode message, BackupFileType fileType) {
        C18524p.m3840d(path, "path");
        C18524p.m3840d(message, "message");
        C18524p.m3840d(fileType, "fileType");
        this.f24744a = path;
        this.f24745b = message;
        this.f24746c = fileType;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BackupUploadFileData)) {
                return false;
            }
            BackupUploadFileData backupUploadFileData = (BackupUploadFileData) obj;
            return C18524p.m3850a((Object) this.f24744a, (Object) backupUploadFileData.f24744a) && C18524p.m3850a(this.f24745b, backupUploadFileData.f24745b) && C18524p.m3850a(this.f24746c, backupUploadFileData.f24746c);
        }
        return true;
    }

    public final BackupFileType getFileType() {
        return this.f24746c;
    }

    public final BackupMessageCode getMessage() {
        return this.f24745b;
    }

    public final String getPath() {
        return this.f24744a;
    }

    public final int hashCode() {
        String str = this.f24744a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        BackupMessageCode backupMessageCode = this.f24745b;
        int hashCode2 = backupMessageCode != null ? backupMessageCode.hashCode() : 0;
        BackupFileType backupFileType = this.f24746c;
        if (backupFileType != null) {
            i = backupFileType.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "BackupUploadFileData(path=" + this.f24744a + ", message=" + this.f24745b + ", fileType=" + this.f24746c + ")";
    }
}
