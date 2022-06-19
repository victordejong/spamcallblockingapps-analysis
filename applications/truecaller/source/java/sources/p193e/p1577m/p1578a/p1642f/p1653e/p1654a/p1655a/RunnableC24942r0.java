package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.widget.ProgressBar;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zap;
import com.google.android.gms.common.internal.zac;
import java.util.Objects;
/* renamed from: e.m.a.f.e.a.a.r0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/r0.class */
public final class RunnableC24942r0 implements Runnable {

    /* renamed from: a */
    public final C24938p0 f69868a;

    /* renamed from: b */
    public final /* synthetic */ zap f69869b;

    public RunnableC24942r0(zap zapVar, C24938p0 c24938p0) {
        this.f69869b = zapVar;
        this.f69868a = c24938p0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f69869b.f5899b) {
            return;
        }
        ConnectionResult connectionResult = this.f69868a.f69863b;
        if (connectionResult.m39077o2()) {
            zap zapVar = this.f69869b;
            LifecycleFragment lifecycleFragment = zapVar.f5762a;
            Activity m39025b = zapVar.m39025b();
            PendingIntent pendingIntent = connectionResult.f5664c;
            Objects.requireNonNull(pendingIntent, "null reference");
            int i = this.f69868a.f69862a;
            int i2 = GoogleApiActivity.f5701b;
            Intent intent = new Intent(m39025b, GoogleApiActivity.class);
            intent.putExtra("pending_intent", pendingIntent);
            intent.putExtra("failing_client_id", i);
            intent.putExtra("notify_manager", false);
            lifecycleFragment.startActivityForResult(intent, 1);
            return;
        }
        zap zapVar2 = this.f69869b;
        if (zapVar2.f5902e.mo39066a(zapVar2.m39025b(), connectionResult.f5663b, null) != null) {
            zap zapVar3 = this.f69869b;
            GoogleApiAvailability googleApiAvailability = zapVar3.f5902e;
            Activity m39025b2 = zapVar3.m39025b();
            zap zapVar4 = this.f69869b;
            googleApiAvailability.m39071g(m39025b2, zapVar4.f5762a, connectionResult.f5663b, zapVar4);
        } else if (connectionResult.f5663b != 18) {
            zap zapVar5 = this.f69869b;
            int i3 = this.f69868a.f69862a;
            zapVar5.f5900c.set(null);
            zapVar5.mo38928m(connectionResult, i3);
        } else {
            zap zapVar6 = this.f69869b;
            GoogleApiAvailability googleApiAvailability2 = zapVar6.f5902e;
            Activity m39025b3 = zapVar6.m39025b();
            zap zapVar7 = this.f69869b;
            Objects.requireNonNull(googleApiAvailability2);
            ProgressBar progressBar = new ProgressBar(m39025b3, null, 16842874);
            progressBar.setIndeterminate(true);
            progressBar.setVisibility(0);
            AlertDialog.Builder builder = new AlertDialog.Builder(m39025b3);
            builder.setView(progressBar);
            builder.setMessage(zac.m38833b(m39025b3, 18));
            builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
            AlertDialog create = builder.create();
            googleApiAvailability2.m39067k(m39025b3, create, "GooglePlayServicesUpdatingDialog", zapVar7);
            zap zapVar8 = this.f69869b;
            zapVar8.f5902e.m39069i(zapVar8.m39025b().getApplicationContext(), new C24940q0(this, create));
        }
    }
}
