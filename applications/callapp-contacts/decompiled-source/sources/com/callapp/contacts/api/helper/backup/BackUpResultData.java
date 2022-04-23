package com.callapp.contacts.api.helper.backup;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B!\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0006J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J)\u0010\u000f\u001a\u00020��2\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/BackUpResultData;", "", "uploadedFiles", "", "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "failedFiles", "(Ljava/util/List;Ljava/util/List;)V", "getFailedFiles", "()Ljava/util/List;", "setFailedFiles", "(Ljava/util/List;)V", "getUploadedFiles", "setUploadedFiles", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackUpResultData.class */
public final class BackUpResultData {

    /* renamed from: a  reason: collision with root package name */
    private List<BackupUploadFileData> f14037a;

    /* renamed from: b  reason: collision with root package name */
    private List<BackupUploadFileData> f14038b;

    public BackUpResultData(List<BackupUploadFileData> uploadedFiles, List<BackupUploadFileData> failedFiles) {
        p.d(uploadedFiles, "uploadedFiles");
        p.d(failedFiles, "failedFiles");
        this.f14037a = uploadedFiles;
        this.f14038b = failedFiles;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackUpResultData)) {
            return false;
        }
        BackUpResultData backUpResultData = (BackUpResultData) obj;
        return p.a(this.f14037a, backUpResultData.f14037a) && p.a(this.f14038b, backUpResultData.f14038b);
    }

    public final List<BackupUploadFileData> getFailedFiles() {
        return this.f14038b;
    }

    public final List<BackupUploadFileData> getUploadedFiles() {
        return this.f14037a;
    }

    public final int hashCode() {
        List<BackupUploadFileData> list = this.f14037a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<BackupUploadFileData> list2 = this.f14038b;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "BackUpResultData(uploadedFiles=" + this.f14037a + ", failedFiles=" + this.f14038b + ")";
    }
}
