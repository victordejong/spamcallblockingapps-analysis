package com.criteo.publisher.j;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.criteo.publisher.CriteoInterstitialActivity;
import com.criteo.publisher.l.d;
import com.criteo.publisher.m.b;
import com.criteo.publisher.m0.i;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17360a;

    /* renamed from: b  reason: collision with root package name */
    private final b f17361b;

    public a(Context context, b bVar) {
        this.f17360a = context;
        this.f17361b = bVar;
    }

    private Intent b() {
        return new Intent(this.f17360a, CriteoInterstitialActivity.class);
    }

    public void a(String str, d dVar) {
        if (a()) {
            i iVar = new i(new Handler(Looper.getMainLooper()), dVar);
            ComponentName a2 = this.f17361b.a();
            Intent b2 = b();
            b2.setFlags(268435456);
            b2.putExtra("webviewdata", str);
            b2.putExtra("resultreceiver", iVar);
            b2.putExtra("callingactivity", a2);
            this.f17360a.startActivity(b2);
        }
    }

    public boolean a() {
        boolean z = false;
        if (this.f17360a.getPackageManager().resolveActivity(b(), 65536) == null) {
            return false;
        }
        if (this.f17360a.getResources().getIdentifier("activity_criteo_interstitial", "layout", this.f17360a.getPackageName()) != 0) {
            z = true;
        }
        return z;
    }
}
