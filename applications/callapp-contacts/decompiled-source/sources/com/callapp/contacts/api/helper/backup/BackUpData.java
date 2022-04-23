package com.callapp.contacts.api.helper.backup;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u000bHÆ\u0003J7\u0010!\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\"\u001a\u00020\u00052\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006'"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/BackUpData;", "", "folderName", "", "deleteBeforeUpload", "", "(Ljava/lang/String;Z)V", "fileData", "", "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;", "fileType", "Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "(Ljava/lang/String;Ljava/util/List;ZLcom/callapp/contacts/api/helper/backup/BackupFileType;)V", "getDeleteBeforeUpload", "()Z", "setDeleteBeforeUpload", "(Z)V", "getFileData", "()Ljava/util/List;", "setFileData", "(Ljava/util/List;)V", "getFileType", "()Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "setFileType", "(Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V", "getFolderName", "()Ljava/lang/String;", "setFolderName", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackUpData.class */
public final class BackUpData {

    /* renamed from: a  reason: collision with root package name */
    private String f14029a;

    /* renamed from: b  reason: collision with root package name */
    private List<BackUpFileData> f14030b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f14031c;

    /* renamed from: d  reason: collision with root package name */
    private BackupFileType f14032d;

    public BackUpData(String folderName, List<BackUpFileData> fileData, boolean z, BackupFileType fileType) {
        p.d(folderName, "folderName");
        p.d(fileData, "fileData");
        p.d(fileType, "fileType");
        this.f14029a = folderName;
        this.f14030b = fileData;
        this.f14031c = z;
        this.f14032d = fileType;
    }

    public /* synthetic */ BackUpData(String str, ArrayList arrayList, boolean z, BackupFileType backupFileType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? new ArrayList() : arrayList, (i & 4) != 0 ? false : z, backupFileType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BackUpData(String folderName, boolean z) {
        this(folderName, new ArrayList(), z, BackupFileType.UN_SUPPORTED);
        p.d(folderName, "folderName");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackUpData)) {
            return false;
        }
        BackUpData backUpData = (BackUpData) obj;
        return p.a((Object) this.f14029a, (Object) backUpData.f14029a) && p.a(this.f14030b, backUpData.f14030b) && this.f14031c == backUpData.f14031c && p.a(this.f14032d, backUpData.f14032d);
    }

    public final boolean getDeleteBeforeUpload() {
        return this.f14031c;
    }

    public final List<BackUpFileData> getFileData() {
        return this.f14030b;
    }

    public final BackupFileType getFileType() {
        return this.f14032d;
    }

    public final String getFolderName() {
        return this.f14029a;
    }

    public final int hashCode() {
        String str = this.f14029a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<BackUpFileData> list = this.f14030b;
        int hashCode2 = list != null ? list.hashCode() : 0;
        boolean z = this.f14031c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        BackupFileType backupFileType = this.f14032d;
        if (backupFileType != null) {
            i = backupFileType.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i;
    }

    public final void setFileData(List<BackUpFileData> list) {
        p.d(list, "<set-?>");
        this.f14030b = list;
    }

    public final String toString() {
        return "BackUpData(folderName=" + this.f14029a + ", fileData=" + this.f14030b + ", deleteBeforeUpload=" + this.f14031c + ", fileType=" + this.f14032d + ")";
    }
}
