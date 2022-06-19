package p124i4;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;
import java.io.File;
import java.util.Objects;
import p201p6.C4018c;
import p220r4.C4203l;
/* renamed from: i4.q */
/* loaded from: classes-dex2jar.jar:i4/q.class */
public final class BinderC3115q extends BinderC3113o {

    /* renamed from: d */
    public final String f10542d;

    /* renamed from: e */
    public final /* synthetic */ C3116r f10543e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC3115q(C3116r c3116r, C4203l c4203l, String str) {
        super(c3116r, new C4018c("OnRequestInstallCallback"), c4203l);
        this.f10543e = c3116r;
        this.f10542d = str;
    }

    @Override // p124i4.BinderC3113o, p189o4.AbstractC3857a0
    /* renamed from: b */
    public final void mo1762b(Bundle bundle) throws RemoteException {
        this.f10541c.f10546a.m1747c(this.f10540b);
        this.f10539a.m1507e("onRequestInfo", new Object[0]);
        if (bundle.getInt("error.code", -2) != 0) {
            this.f10540b.m1294a(new InstallException(bundle.getInt("error.code", -2)));
            return;
        }
        C4203l c4203l = this.f10540b;
        C3116r c3116r = this.f10543e;
        String str = this.f10542d;
        int i = bundle.getInt("version.code", -1);
        int i2 = bundle.getInt("update.availability");
        int i3 = bundle.getInt("install.status", 0);
        Integer valueOf = bundle.getInt("client.version.staleness", -1) == -1 ? null : Integer.valueOf(bundle.getInt("client.version.staleness"));
        int i4 = bundle.getInt("in.app.update.priority", 0);
        long j = bundle.getLong("bytes.downloaded");
        long j2 = bundle.getLong("total.bytes.to.download");
        long j3 = bundle.getLong("additional.size.required");
        C3118t c3118t = c3116r.f10549d;
        Objects.requireNonNull(c3118t);
        c4203l.m1293b(new C3099a(str, i, i2, i3, valueOf, i4, j, j2, j3, C3118t.m2601a(new File(c3118t.f10552a.getFilesDir(), "assetpacks")), (PendingIntent) bundle.getParcelable("blocking.intent"), (PendingIntent) bundle.getParcelable("nonblocking.intent"), (PendingIntent) bundle.getParcelable("blocking.destructive.intent"), (PendingIntent) bundle.getParcelable("nonblocking.destructive.intent")));
    }
}
