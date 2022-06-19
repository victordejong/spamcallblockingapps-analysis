package p193e.p1512i.p1516b.p1521g2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.criteo.publisher.CriteoInterstitialActivity;
import com.criteo.publisher.p024m0.ResultReceiverC0904i;
import p193e.p1512i.p1516b.p1520f3.C22947c;
import p193e.p1512i.p1516b.p1525o2.C23001d;
/* renamed from: e.i.b.g2.a */
/* loaded from: classes-dex2jar.jar:e/i/b/g2/a.class */
public class C22951a {

    /* renamed from: a */
    public final Context f63644a;

    /* renamed from: b */
    public final C22947c f63645b;

    public C22951a(Context context, C22947c c22947c) {
        this.f63644a = context;
        this.f63645b = c22947c;
    }

    /* renamed from: a */
    public void mo7425a(String str, C23001d c23001d) {
        if (!mo7424b()) {
            return;
        }
        ResultReceiverC0904i resultReceiverC0904i = new ResultReceiverC0904i(new Handler(Looper.getMainLooper()), c23001d);
        ComponentName m7616a = this.f63645b.m7616a();
        Intent intent = new Intent(this.f63644a, CriteoInterstitialActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("webviewdata", str);
        intent.putExtra("resultreceiver", resultReceiverC0904i);
        intent.putExtra("callingactivity", m7616a);
        this.f63644a.startActivity(intent);
    }

    /* renamed from: b */
    public boolean mo7424b() {
        boolean z = false;
        if (this.f63644a.getPackageManager().resolveActivity(new Intent(this.f63644a, CriteoInterstitialActivity.class), 65536) == null) {
            return false;
        }
        if (this.f63644a.getResources().getIdentifier("activity_criteo_interstitial", "layout", this.f63644a.getPackageName()) != 0) {
            z = true;
        }
        return z;
    }
}
