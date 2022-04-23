package com.callapp.contacts.api.helper.backup;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J'\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001f"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "", "path", "", "message", "Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;", "fileType", "Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V", "getFileType", "()Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "setFileType", "(Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V", "getMessage", "()Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;", "setMessage", "(Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;)V", "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupUploadFileData.class */
public final class BackupUploadFileData {

    /* renamed from: a  reason: collision with root package name */
    private String f14094a;

    /* renamed from: b  reason: collision with root package name */
    private BackupMessageCode f14095b;

    /* renamed from: c  reason: collision with root package name */
    private BackupFileType f14096c;

    public BackupUploadFileData(String path, BackupMessageCode message, BackupFileType fileType) {
        p.d(path, "path");
        p.d(message, "message");
        p.d(fileType, "fileType");
        this.f14094a = path;
        this.f14095b = message;
        this.f14096c = fileType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackupUploadFileData)) {
            return false;
        }
        BackupUploadFileData backupUploadFileData = (BackupUploadFileData) obj;
        return p.a((Object) this.f14094a, (Object) backupUploadFileData.f14094a) && p.a(this.f14095b, backupUploadFileData.f14095b) && p.a(this.f14096c, backupUploadFileData.f14096c);
    }

    public final BackupFileType getFileType() {
        return this.f14096c;
    }

    public final BackupMessageCode getMessage() {
        return this.f14095b;
    }

    public final String getPath() {
        return this.f14094a;
    }

    public final int hashCode() {
        String str = this.f14094a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        BackupMessageCode backupMessageCode = this.f14095b;
        int hashCode2 = backupMessageCode != null ? backupMessageCode.hashCode() : 0;
        BackupFileType backupFileType = this.f14096c;
        if (backupFileType != null) {
            i = backupFileType.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "BackupUploadFileData(path=" + this.f14094a + ", message=" + this.f14095b + ", fileType=" + this.f14096c + ")";
    }
}
