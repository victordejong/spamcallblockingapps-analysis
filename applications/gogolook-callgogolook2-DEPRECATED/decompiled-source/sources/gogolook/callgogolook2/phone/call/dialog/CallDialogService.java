package gogolook.callgogolook2.phone.call.dialog;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p521j0.EnumC12488a;
import p459j.p460a.p521j0.p522u.p523d.C12617h0;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p585b5.C13921a;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallDialogService.class */
public class CallDialogService extends Service {

    /* renamed from: a */
    public C12617h0 f12277a;

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallDialogService$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallDialogService$a.class */
    public class C4971a implements C12617h0.AbstractC12623f {
        public C4971a() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12617h0.AbstractC12623f
        public void onStop() {
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallDialogService] onStop() invoked");
            CallDialogService.this.f12277a.m5723n();
            CallDialogService.this.m26639b();
            CallDialogService.this.stopSelf();
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallDialogService] onStop() end");
        }
    }

    /* renamed from: a */
    public static void m26641a(@NonNull Context context) {
        context.stopService(new Intent(context, CallDialogService.class));
    }

    /* renamed from: a */
    public final void m26642a() {
        startForeground(8000, C14173t4.m2305a(C14173t4.m2304b(this).setContentTitle(C14206w4.m2225a((int) R$string.calldialog_notification_background)).setAutoCancel(false)));
    }

    /* renamed from: b */
    public final void m26639b() {
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3033b();
        stopForeground(true);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f12277a = new C12617h0(this, new C4971a());
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        m26639b();
        this.f12277a.m5723n();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        m26642a();
        if (this.f12277a.m5717t() != EnumC12488a.SHOW_DIALOG) {
            return 2;
        }
        m26639b();
        return 2;
    }
}
