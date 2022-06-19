package com.callerid.block.main;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.callerid.block.service.BinderC1135a;
import com.callerid.block.service.MyService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$k.class */
public class MainActivity$k implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MainActivity f4592b;

    /* renamed from: com.callerid.block.main.MainActivity$k$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$k$b.class */
    class ServiceConnectionC1094b implements ServiceConnection {
        ServiceConnectionC1094b() {
            MainActivity$k.this = r4;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MyService m9991a;
            try {
                if ((iBinder instanceof BinderC1135a) && (m9991a = ((BinderC1135a) iBinder).m9991a()) != null) {
                    m9991a.m10019a();
                }
                MainActivity$k.this.f4592b.getApplicationContext().unbindService(this);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    MainActivity$k(MainActivity mainActivity) {
        this.f4592b = mainActivity;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x040c A[Catch: Exception -> 0x0425, TRY_LEAVE, TryCatch #1 {Exception -> 0x0425, blocks: (B:56:0x03ff, B:58:0x040c), top: B:65:0x03ff }] */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.callerid.block.main.MainActivity$q] */
    /* JADX WARN: Type inference failed for: r1v18, types: [com.callerid.block.main.MainActivity$r] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 1067
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.main.MainActivity$k.run():void");
    }
}
