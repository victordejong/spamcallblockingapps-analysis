package com.allinone.callerid.service;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import com.allinone.callerid.p162i.p163a.p169e0.AbstractC2792a;
import com.allinone.callerid.p162i.p163a.p169e0.C2793b;
import com.allinone.callerid.util.C3718c0;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/ScheduleService.class */
public class ScheduleService extends JobService {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.service.ScheduleService$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/ScheduleService$a.class */
    public class C3610a implements AbstractC2792a {

        /* renamed from: com.allinone.callerid.service.ScheduleService$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/ScheduleService$a$a.class */
        class ServiceConnectionC3611a implements ServiceConnection {
            ServiceConnectionC3611a() {
                C3610a.this = r4;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                MyService m24807a;
                if ((iBinder instanceof BinderC3612a) && (m24807a = ((BinderC3612a) iBinder).m24807a()) != null) {
                    m24807a.m24853a();
                }
                ScheduleService.this.getApplicationContext().unbindService(this);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }
        }

        C3610a() {
            ScheduleService.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p169e0.AbstractC2792a
        /* renamed from: a */
        public void mo24808a(boolean z) {
            if (!z) {
                try {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wjjj", "ScheduleService：onStartJob():MyService死掉了");
                    }
                    if (Build.VERSION.SDK_INT <= 25) {
                        ScheduleService.this.startService(new Intent(ScheduleService.this.getApplicationContext(), MyService.class));
                        return;
                    }
                    ScheduleService.this.getApplicationContext().bindService(new Intent(ScheduleService.this.getApplicationContext(), MyService.class), new ServiceConnectionC3611a(), 1);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (C3718c0.f11914a) {
            Log.e("wjjj", "ScheduleService：onCreate");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wjjj", "onDestroy");
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (C3718c0.f11914a) {
            Log.e("wjjj", "ScheduleService：onStartJob():job已开启");
        }
        C2793b.m26591a(getApplicationContext(), new C3610a());
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (C3718c0.f11914a) {
            Log.e("wjjj", "onStopJob():job已结束 params = [" + jobParameters + "]");
            return false;
        }
        return false;
    }
}
