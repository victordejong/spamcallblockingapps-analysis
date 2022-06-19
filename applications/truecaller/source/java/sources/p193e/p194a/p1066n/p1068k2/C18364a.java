package p193e.p194a.p1066n.p1068k2;

import android.os.Bundle;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.n.k2.a */
/* loaded from: classes5-dex2jar.jar:e/a/n/k2/a.class */
public final class C18364a implements AbstractC19549v {

    /* renamed from: a */
    public final String f51853a;

    /* renamed from: b */
    public final boolean f51854b;

    /* renamed from: c */
    public final boolean f51855c;

    public C18364a(String str, boolean z, boolean z2) {
        l.e(str, "backupAction");
        this.f51853a = str;
        this.f51854b = z;
        this.f51855c = z2;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("BackupAction", this.f51853a);
        bundle.putBoolean("BackupFileExists", this.f51854b);
        bundle.putBoolean("AccountStateValid", this.f51855c);
        return new AbstractC19580x.C19582b("AccountBackup", bundle);
    }
}
