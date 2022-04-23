package com.callerid.block.p040h.p041a.p045e;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import com.callerid.block.bean.CollectInfo;
import com.callerid.block.p036d.C0945b;
import com.callerid.block.p040h.p041a.p045e.p048k.C1012b;
import com.callerid.block.service.CollectJobService;
import com.callerid.block.util.C1169c0;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
/* renamed from: com.callerid.block.h.a.e.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/c.class */
public class C0994c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.h.a.e.c$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/c$b.class */
    public static final class RunnableC0995b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ CollectInfo f4432b;

        /* renamed from: c */
        final /* synthetic */ Context f4433c;

        RunnableC0995b(CollectInfo collectInfo, Context context) {
            this.f4432b = collectInfo;
            this.f4433c = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 21) {
                C0945b.m10479b().m10478c(this.f4432b);
                if (C1227w.f5084a) {
                    C1227w.m9527a("collectinfo", "list:" + C0945b.m10479b().m10477d().toString());
                }
                if (C1227w.f5084a) {
                    C1227w.m9527a("collectinfo", "scheduleJob");
                }
                if (C1199n0.m9645z1(this.f4433c).booleanValue()) {
                    if (C1227w.f5084a) {
                        C1227w.m9527a("collectinfo", "开启调度任务");
                    }
                    JobInfo.Builder builder = new JobInfo.Builder(10088, new ComponentName(this.f4433c, CollectJobService.class));
                    builder.setRequiredNetworkType(1);
                    builder.setPersisted(true);
                    builder.setRequiresCharging(false);
                    builder.setRequiresDeviceIdle(false);
                    builder.setMinimumLatency(1000L);
                    ((JobScheduler) this.f4433c.getSystemService("jobscheduler")).schedule(builder.build());
                    C1199n0.m9768E1(this.f4433c, Boolean.FALSE);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m10387a(Context context, CollectInfo collectInfo) {
        try {
            C1169c0.m9902a().f4994a.execute(new RunnableC0995b(collectInfo, context));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10386b(Context context, AbstractC0991a aVar) {
        try {
            C1000g.m10378b(new c(context, aVar));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m10385c(Context context, CollectInfo collectInfo) {
        try {
            if (!C1216t0.m9585a(context) || C1216t0.m9587Y(collectInfo.getNumber())) {
                m10387a(context, collectInfo);
            } else {
                C1012b.m10361a(context, collectInfo.getNumber(), collectInfo.getUser_blocked(), collectInfo.getUser_commented(), collectInfo.getUser_reported(), collectInfo.getUser_upload_recording(), new a(context));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
