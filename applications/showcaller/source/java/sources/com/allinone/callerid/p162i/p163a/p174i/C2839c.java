package com.allinone.callerid.p162i.p163a.p174i;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.p157f.C2623c;
import com.allinone.callerid.p162i.p163a.p174i.p177k.AbstractC2862a;
import com.allinone.callerid.p162i.p163a.p174i.p177k.C2863b;
import com.allinone.callerid.service.CollectJobService;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import java.util.List;
import org.json.JSONArray;
/* renamed from: com.allinone.callerid.i.a.i.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/c.class */
public class C2839c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.i.a.i.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/c$a.class */
    public class C2840a implements AbstractC2862a {

        /* renamed from: a */
        final /* synthetic */ Context f9600a;

        /* renamed from: com.allinone.callerid.i.a.i.c$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/c$a$a.class */
        class C2841a implements AbstractC2836a {
            C2841a() {
                C2840a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a
            /* renamed from: a */
            public void mo23879a(String str) {
            }
        }

        C2840a(Context context) {
            this.f9600a = context;
        }

        @Override // com.allinone.callerid.p162i.p163a.p174i.p177k.AbstractC2862a
        /* renamed from: a */
        public void mo26496a(JSONArray jSONArray) {
            if (jSONArray == null || jSONArray.length() <= 0) {
                return;
            }
            C2837b.m26522a(this.f9600a, jSONArray, new C2841a());
        }
    }

    /* renamed from: com.allinone.callerid.i.a.i.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/c$b.class */
    public class RunnableC2842b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ CollectInfo f9602d;

        /* renamed from: e */
        final /* synthetic */ Context f9603e;

        RunnableC2842b(CollectInfo collectInfo, Context context) {
            this.f9602d = collectInfo;
            this.f9603e = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 21) {
                C2623c.m27019b().m27018c(this.f9602d);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("collectinfo", "list:" + C2623c.m27019b().m27017d().toString());
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("collectinfo", "scheduleJob");
                }
                if (!C3711a1.m24485t2().booleanValue()) {
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("collectinfo", "开启调度任务");
                }
                JobInfo.Builder builder = new JobInfo.Builder(10086, new ComponentName(this.f9603e, CollectJobService.class));
                builder.setRequiredNetworkType(1);
                builder.setPersisted(true);
                builder.setRequiresCharging(false);
                builder.setRequiresDeviceIdle(false);
                builder.setMinimumLatency(1000L);
                ((JobScheduler) this.f9603e.getSystemService("jobscheduler")).schedule(builder.build());
                C3711a1.m24616L2(Boolean.FALSE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.i.a.i.c$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/c$c.class */
    public class C2843c implements AbstractC2850f {

        /* renamed from: a */
        final /* synthetic */ Context f9604a;

        /* renamed from: b */
        final /* synthetic */ AbstractC2836a f9605b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.i.a.i.c$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/c$c$a.class */
        public class C2844a implements AbstractC2862a {

            /* renamed from: com.allinone.callerid.i.a.i.c$c$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/c$c$a$a.class */
            class C2845a implements AbstractC2836a {
                C2845a() {
                    C2844a.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a
                /* renamed from: a */
                public void mo23879a(String str) {
                }
            }

            C2844a() {
                C2843c.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p174i.p177k.AbstractC2862a
            /* renamed from: a */
            public void mo26496a(JSONArray jSONArray) {
                if (jSONArray == null || jSONArray.length() <= 0) {
                    return;
                }
                C2837b.m26522a(C2843c.this.f9604a, jSONArray, new C2845a());
            }
        }

        C2843c(Context context, AbstractC2836a abstractC2836a) {
            this.f9604a = context;
            this.f9605b = abstractC2836a;
        }

        @Override // com.allinone.callerid.p162i.p163a.p174i.AbstractC2850f
        /* renamed from: a */
        public void mo26512a(List<CollectInfo> list) {
            if (list == null || list.size() <= 0) {
                return;
            }
            for (int i = 0; i < list.size(); i++) {
                CollectInfo collectInfo = list.get(i);
                C2863b.m26495a(this.f9604a, collectInfo.getNumber(), collectInfo.getUser_blocked(), collectInfo.getUser_commented(), collectInfo.getUser_reported(), collectInfo.getUser_upload_recording(), new C2844a());
            }
            C2851g.m26511a();
            this.f9605b.mo23879a("ok");
            C3711a1.m24616L2(Boolean.TRUE);
        }
    }

    /* renamed from: a */
    public static void m26519a(Context context, CollectInfo collectInfo) {
        try {
            new Thread(new RunnableC2842b(collectInfo, context)).start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26518b(Context context, AbstractC2836a abstractC2836a) {
        try {
            C2851g.m26510b(new C2843c(context, abstractC2836a));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26517c(Context context, CollectInfo collectInfo) {
        try {
            if (!C3767h1.m24261a(context) || C3767h1.m24216w0(collectInfo.getNumber())) {
                m26519a(context, collectInfo);
            } else {
                C2863b.m26495a(context, collectInfo.getNumber(), collectInfo.getUser_blocked(), collectInfo.getUser_commented(), collectInfo.getUser_reported(), collectInfo.getUser_upload_recording(), new C2840a(context));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
