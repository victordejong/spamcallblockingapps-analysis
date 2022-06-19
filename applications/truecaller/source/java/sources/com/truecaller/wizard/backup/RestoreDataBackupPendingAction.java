package com.truecaller.wizard.backup;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "RESTORE", "SKIP", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/backup/RestoreDataBackupPendingAction.class */
public enum RestoreDataBackupPendingAction {
    RESTORE("restore"),
    SKIP("skip");
    
    public static final C4868a Companion = new C4868a(null);
    private final String value;

    /* renamed from: com.truecaller.wizard.backup.RestoreDataBackupPendingAction$a */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/backup/RestoreDataBackupPendingAction$a.class */
    public static final class C4868a {
        public C4868a(f fVar) {
        }
    }

    RestoreDataBackupPendingAction(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
