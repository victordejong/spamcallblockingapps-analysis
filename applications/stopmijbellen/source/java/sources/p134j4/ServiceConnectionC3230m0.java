package p134j4;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.play.core.assetpacks.ExtractionForegroundService;
import java.util.ArrayList;
import java.util.List;
import p189o4.C3871h0;
import p189o4.C3885v;
import p201p6.C4018c;
/* renamed from: j4.m0 */
/* loaded from: classes-dex2jar.jar:j4/m0.class */
public final class ServiceConnectionC3230m0 implements ServiceConnection {

    /* renamed from: a */
    public final C4018c f10880a = new C4018c("ExtractionForegroundServiceConnection");

    /* renamed from: b */
    public final List f10881b = new ArrayList();

    /* renamed from: c */
    public final Context f10882c;

    /* renamed from: d */
    public ExtractionForegroundService f10883d;

    /* renamed from: e */
    public Notification f10884e;

    public ServiceConnectionC3230m0(Context context) {
        this.f10882c = context;
    }

    /* renamed from: a */
    public final void m2529a() {
        ArrayList arrayList;
        synchronized (this.f10881b) {
            arrayList = new ArrayList(this.f10881b);
            this.f10881b.clear();
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C3871h0 c3871h0 = (C3871h0) arrayList.get(i);
            try {
                Bundle bundle = new Bundle();
                Bundle bundle2 = new Bundle();
                Parcel m1735q = c3871h0.m1735q();
                int i2 = C3885v.f12380a;
                m1735q.writeInt(1);
                bundle.writeToParcel(m1735q, 0);
                m1735q.writeInt(1);
                bundle2.writeToParcel(m1735q, 0);
                c3871h0.m1734r(2, m1735q);
            } catch (RemoteException e) {
                this.f10880a.m1509c("Could not resolve Play Store service state update callback.", new Object[0]);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f10880a.m1510b("Starting foreground installation service.", new Object[0]);
        ExtractionForegroundService extractionForegroundService = ((BinderC3226l0) iBinder).f10869a;
        this.f10883d = extractionForegroundService;
        extractionForegroundService.startForeground(-1883842196, this.f10884e);
        m2529a();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
