package com.callapp.contacts.api.helper.backup;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0015"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/BackUpFileData;", "", "filePath", "", "fileName", "(Ljava/lang/String;Ljava/lang/String;)V", "getFileName", "()Ljava/lang/String;", "setFileName", "(Ljava/lang/String;)V", "getFilePath", "setFilePath", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackUpFileData.class */
public final class BackUpFileData {

    /* renamed from: a */
    private String f24672a;

    /* renamed from: b */
    private String f24673b;

    public BackUpFileData(String filePath, String str) {
        C18524p.m3840d(filePath, "filePath");
        this.f24672a = filePath;
        this.f24673b = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BackUpFileData)) {
                return false;
            }
            BackUpFileData backUpFileData = (BackUpFileData) obj;
            return C18524p.m3850a((Object) this.f24672a, (Object) backUpFileData.f24672a) && C18524p.m3850a((Object) this.f24673b, (Object) backUpFileData.f24673b);
        }
        return true;
    }

    public final String getFileName() {
        return this.f24673b;
    }

    public final String getFilePath() {
        return this.f24672a;
    }

    public final int hashCode() {
        String str = this.f24672a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f24673b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "BackUpFileData(filePath=" + this.f24672a + ", fileName=" + this.f24673b + ")";
    }
}
