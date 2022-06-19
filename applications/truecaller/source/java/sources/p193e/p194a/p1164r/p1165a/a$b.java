package p193e.p194a.p1164r.p1165a;

import android.content.DialogInterface;
import com.truecaller.wizard.backup.RestoreDataBackupPendingAction;
import com.truecaller.wizard.backup.analyitcs.WizardGDriveAccountRecoveryEvent$Action;
import java.util.Objects;
/* renamed from: e.a.r.a.a$b */
/* loaded from: classes3-dex2jar.jar:e/a/r/a/a$b.class */
public final class a$b implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f54725a;

    /* renamed from: b */
    public final /* synthetic */ Object f54726b;

    public a$b(int i, Object obj) {
        this.f54725a = i;
        this.f54726b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f54725a;
        if (i2 == 0) {
            dialogInterface.dismiss();
            ((a) this.f54726b).SA().Jj((a) this.f54726b);
        } else if (i2 != 1) {
            throw null;
        } else {
            dialogInterface.dismiss();
            i SA = ((a) this.f54726b).SA();
            C19706d c19706d = SA.m;
            Objects.requireNonNull(c19706d);
            c19706d.m12967a(WizardGDriveAccountRecoveryEvent$Action.ACTION_SKIPPED);
            AbstractC19709h abstractC19709h = (AbstractC19709h) SA.f57683a;
            if (abstractC19709h != null) {
                abstractC19709h.m12957i();
            }
            SA.p.putString("restoreDataBackupPendingAction", RestoreDataBackupPendingAction.SKIP.getValue());
            SA.Kj((String) null);
        }
    }
}
