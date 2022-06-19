package com.truecaller.backup;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/truecaller/backup/BackupFile;", "", "", "nameSuffix", "Ljava/lang/String;", "getNameSuffix", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "CONTACTS", "CALL_LOG", "SETTINGS", "BLOCK_LIST", "ACCOUNT", "DB", "backup_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/BackupFile.class */
public enum BackupFile {
    CONTACTS("_contacts.json"),
    CALL_LOG("_call_log.json"),
    SETTINGS("_settings.json"),
    BLOCK_LIST("_blockList.json"),
    ACCOUNT("_account.json"),
    DB("tc.db");
    
    private final String nameSuffix;

    BackupFile(String str) {
        this.nameSuffix = str;
    }

    public final String getNameSuffix() {
        return this.nameSuffix;
    }
}
