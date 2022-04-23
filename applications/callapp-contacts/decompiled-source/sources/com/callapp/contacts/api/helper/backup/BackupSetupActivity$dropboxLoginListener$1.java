package com.callapp.contacts.api.helper.backup;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016¨\u0006\n"}, d2 = {"com/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1", "Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;", "onCancel", "", "message", "", "onConnectionComplete", "accessToken", "onError", "e", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1.class */
public final class BackupSetupActivity$dropboxLoginListener$1 implements BackupLoginCallBack {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BackupSetupActivity f14075a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BackupSetupActivity$dropboxLoginListener$1(BackupSetupActivity backupSetupActivity) {
        this.f14075a = backupSetupActivity;
    }

    @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
    public final void a() {
        Prefs.hK.set(BackupViaType.DROP_BOX);
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$dropboxLoginListener$1$onConnectionComplete$1
            @Override // java.lang.Runnable
            public final void run() {
                BackupSetupActivity$dropboxLoginListener$1.this.f14075a.a(BackupSetupActivity$dropboxLoginListener$1.this.f14075a.getOkBtn(), true);
            }
        });
    }

    @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
    public final void a(String e) {
        p.d(e, "e");
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$dropboxLoginListener$1$onError$1
            @Override // java.lang.Runnable
            public final void run() {
                BackupSetupActivity$dropboxLoginListener$1.this.f14075a.a(BackupSetupActivity$dropboxLoginListener$1.this.f14075a.getOkBtn(), false);
                BackupSetupActivity$dropboxLoginListener$1.this.f14075a.getBackViaGroup().clearCheck();
            }
        });
        if (((BackupViaType) Prefs.hK.get()) == BackupViaType.DROP_BOX) {
            Prefs.hK.set(BackupViaType.UN_KNOWN);
        }
    }

    @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
    public final void b(String message) {
        p.d(message, "message");
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$dropboxLoginListener$1$onCancel$1
            @Override // java.lang.Runnable
            public final void run() {
                BackupSetupActivity$dropboxLoginListener$1.this.f14075a.a(BackupSetupActivity$dropboxLoginListener$1.this.f14075a.getOkBtn(), false);
                BackupSetupActivity$dropboxLoginListener$1.this.f14075a.getBackViaGroup().clearCheck();
            }
        });
        if (((BackupViaType) Prefs.hK.get()) == BackupViaType.DROP_BOX) {
            Prefs.hK.set(BackupViaType.UN_KNOWN);
        }
    }
}
