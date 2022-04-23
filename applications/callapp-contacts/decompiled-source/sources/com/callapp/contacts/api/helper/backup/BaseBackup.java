package com.callapp.contacts.api.helper.backup;

import com.callapp.contacts.manager.preferences.Prefs;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018�� \u001e2\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\nH&J\u0016\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H&J\b\u0010\u0013\u001a\u00020\u0014H&J\b\u0010\u0015\u001a\u00020\u0016H&J\u0006\u0010\u0017\u001a\u00020\nJ.\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u00112\u0006\u0010\u0019\u001a\u00020\u00122\u0016\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u001bj\b\u0012\u0004\u0012\u00020\u001c`\u001dH&R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u001f"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/BaseBackup;", "", "()V", "loginListener", "Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;", "getLoginListener", "()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;", "setLoginListener", "(Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;)V", "doLogin", "", "activity", "Landroid/app/Activity;", "doLogout", "doUploadSync", "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;", "backupDataList", "", "Lcom/callapp/contacts/api/helper/backup/BackUpData;", "getName", "", "isLoggedIn", "", "removeLoginListener", "updateExistingFiles", "backupData", "finishUploadList", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "Lkotlin/collections/ArrayList;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BaseBackup.class */
public abstract class BaseBackup {

    /* renamed from: b  reason: collision with root package name */
    public static final Companion f14101b = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    BackupLoginCallBack f14102a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;", "", "()V", "getBackupHelper", "Lcom/callapp/contacts/api/helper/backup/BaseBackup;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BaseBackup$Companion.class */
    public static final class Companion {

        @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BaseBackup$Companion$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f14103a;

            static {
                int[] iArr = new int[BackupViaType.values().length];
                f14103a = iArr;
                iArr[BackupViaType.GOOGLE_DRIVE.ordinal()] = 1;
                iArr[BackupViaType.DROP_BOX.ordinal()] = 2;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final BaseBackup getBackupHelper() {
            BackupViaType backupViaType = (BackupViaType) Prefs.hK.get();
            if (backupViaType == null) {
                return null;
            }
            int i = WhenMappings.f14103a[backupViaType.ordinal()];
            if (i == 1) {
                return GoogleDriveHelper.f14115c.get();
            }
            if (i != 2) {
                return null;
            }
            return DropBoxHelper.f14111c.get();
        }
    }

    public abstract BackUpResultData a(List<BackUpData> list);

    public abstract void d();

    public final BackupLoginCallBack getLoginListener() {
        return this.f14102a;
    }

    public abstract String getName();

    public final void setLoginListener(BackupLoginCallBack backupLoginCallBack) {
        this.f14102a = backupLoginCallBack;
    }
}
