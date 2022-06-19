package com.truecaller.wizard.backup.analyitcs;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "ACTION_SHOWN", "ACTION_SKIPPED", "ACTION_RESTORE_CLICKED", "ACTION_RECOVERY_COMPLETED", "ACTION_ACCOUNT_CHANCED", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action.class */
public enum WizardGDriveAccountRecoveryEvent$Action {
    ACTION_SHOWN("Shown"),
    ACTION_SKIPPED("Skipped"),
    ACTION_RESTORE_CLICKED("RestoreClicked"),
    ACTION_RECOVERY_COMPLETED("RecoveryCompleted"),
    ACTION_ACCOUNT_CHANCED("AccountChanged");
    
    private final String value;

    WizardGDriveAccountRecoveryEvent$Action(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
