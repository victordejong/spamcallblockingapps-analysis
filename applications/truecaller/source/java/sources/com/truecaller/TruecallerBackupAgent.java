package com.truecaller;

import android.app.backup.BackupAgent;
import android.app.backup.BackupDataInput;
import android.app.backup.BackupDataOutput;
import android.app.backup.FullBackupDataOutput;
import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.huawei.hms.push.constant.RemoteMessageConst;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.C20571u1;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b \u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J+\u0010\u000b\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u0004J-\u0010\u0010\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0017\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/truecaller/TruecallerBackupAgent;", "Landroid/app/backup/BackupAgent;", "Ls1/s;", "onCreate", "()V", "Landroid/app/backup/BackupDataInput;", RemoteMessageConst.DATA, "", "appVersionCode", "Landroid/os/ParcelFileDescriptor;", "newState", "onRestore", "(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V", "onRestoreFinished", "oldState", "Landroid/app/backup/BackupDataOutput;", "onBackup", "(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V", "Landroid/app/backup/FullBackupDataOutput;", "onFullBackup", "(Landroid/app/backup/FullBackupDataOutput;)V", "", "backupAction", "a", "(Ljava/lang/String;)V", "Le/a/b0/e/r/a;", "Le/a/b0/e/r/a;", "getSettings", "()Le/a/b0/e/r/a;", "setSettings", "(Le/a/b0/e/r/a;)V", "settings", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes4-dex2jar.jar:com/truecaller/TruecallerBackupAgent.class */
public final class TruecallerBackupAgent extends BackupAgent {
    @Inject

    /* renamed from: a */
    public AbstractC8438a f9602a;

    /* JADX WARN: Removed duplicated region for block: B:36:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01eb  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m36029a(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.TruecallerBackupAgent.m36029a(java.lang.String):void");
    }

    @Override // android.app.backup.BackupAgent
    public void onBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) {
        AbstractC8438a abstractC8438a = this.f9602a;
        if (abstractC8438a == null) {
            l.l("settings");
            throw null;
        }
        abstractC8438a.putBoolean("accountFileWasBackedUpByAutobackup", true);
        m36029a("onBackup");
    }

    @Override // android.app.backup.BackupAgent
    public void onCreate() {
        super.onCreate();
        Context applicationContext = getApplicationContext();
        l.d(applicationContext, "applicationContext");
        C25225a.m3846s(applicationContext, Context.class);
        this.f9602a = (AbstractC8438a) new C20571u1(applicationContext, null).f57678c.get();
    }

    @Override // android.app.backup.BackupAgent
    public void onFullBackup(FullBackupDataOutput fullBackupDataOutput) {
        super.onFullBackup(fullBackupDataOutput);
        AbstractC8438a abstractC8438a = this.f9602a;
        if (abstractC8438a == null) {
            l.l("settings");
            throw null;
        }
        abstractC8438a.putBoolean("accountFileWasBackedUpByAutobackup", true);
        m36029a("onFullBackup");
    }

    @Override // android.app.backup.BackupAgent
    public void onRestore(BackupDataInput backupDataInput, int i, ParcelFileDescriptor parcelFileDescriptor) {
    }

    @Override // android.app.backup.BackupAgent
    public void onRestoreFinished() {
        super.onRestoreFinished();
        AbstractC8438a abstractC8438a = this.f9602a;
        if (abstractC8438a == null) {
            l.l("settings");
            throw null;
        }
        abstractC8438a.putBoolean("accountFileWasRestoredByAutobackup", true);
        m36029a("onRestore");
    }
}
