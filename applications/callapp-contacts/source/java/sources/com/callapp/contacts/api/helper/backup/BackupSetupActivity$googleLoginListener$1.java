package com.callapp.contacts.api.helper.backup;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016¨\u0006\n"}, m4298d2 = {"com/callapp/contacts/api/helper/backup/BackupSetupActivity$googleLoginListener$1", "Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;", "onCancel", "", "message", "", "onConnectionComplete", "accessToken", "onError", "e", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupSetupActivity$googleLoginListener$1.class */
public final class BackupSetupActivity$googleLoginListener$1 implements BackupLoginCallBack {

    /* renamed from: a */
    final /* synthetic */ BackupSetupActivity f24733a;

    public BackupSetupActivity$googleLoginListener$1(BackupSetupActivity backupSetupActivity) {
        this.f24733a = backupSetupActivity;
    }

    @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
    /* renamed from: a */
    public final void mo29304a() {
        Prefs.f26605hK.set(BackupViaType.GOOGLE_DRIVE);
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$googleLoginListener$1$onConnectionComplete$1
            @Override // java.lang.Runnable
            public final void run() {
                BackupSetupActivity$googleLoginListener$1.this.f24733a.m29307a(BackupSetupActivity$googleLoginListener$1.this.f24733a.getOkBtn(), true);
            }
        });
    }

    @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
    /* renamed from: a */
    public final void mo29303a(String e) {
        C18524p.m3840d(e, "e");
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$googleLoginListener$1$onError$1
            @Override // java.lang.Runnable
            public final void run() {
                BackupSetupActivity$googleLoginListener$1.this.f24733a.m29307a(BackupSetupActivity$googleLoginListener$1.this.f24733a.getOkBtn(), false);
                BackupSetupActivity$googleLoginListener$1.this.f24733a.getBackViaGroup().clearCheck();
            }
        });
        if (((BackupViaType) Prefs.f26605hK.get()) == BackupViaType.GOOGLE_DRIVE) {
            Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
        }
    }

    @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
    /* renamed from: b */
    public final void mo29302b(String message) {
        C18524p.m3840d(message, "message");
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$googleLoginListener$1$onCancel$1
            @Override // java.lang.Runnable
            public final void run() {
                BackupSetupActivity$googleLoginListener$1.this.f24733a.m29307a(BackupSetupActivity$googleLoginListener$1.this.f24733a.getOkBtn(), false);
                BackupSetupActivity$googleLoginListener$1.this.f24733a.getBackViaGroup().clearCheck();
            }
        });
        if (((BackupViaType) Prefs.f26605hK.get()) == BackupViaType.GOOGLE_DRIVE) {
            Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
        }
    }
}
