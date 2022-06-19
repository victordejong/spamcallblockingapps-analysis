package p293y2;

import android.app.job.JobParameters;
import android.database.Cursor;
import android.os.Build;
import android.provider.CallLog;
import android.text.format.DateUtils;
import ba.C0748b;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.CallItem;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import p095f8.C2779g;
import p104g6.C2905a;
import p117h8.C3043q;
import p149k8.C3390f;
import p158l6.C3509f;
import p180n6.C3729e;
import p191o6.C3894b;
import p193o8.C3950f;
import p275w5.AbstractC4739b;
import p305z4.C5097q;
/* renamed from: y2.d */
/* loaded from: classes2-dex2jar.jar:y2/d.class */
public final /* synthetic */ class RunnableC4984d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f15189a;

    /* renamed from: b */
    public final /* synthetic */ Object f15190b;

    /* renamed from: c */
    public final /* synthetic */ Object f15191c;

    public /* synthetic */ RunnableC4984d(Object obj, Object obj2, int i) {
        this.f15189a = i;
        this.f15190b = obj;
        this.f15191c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15189a) {
            case 0:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.f15190b;
                JobParameters jobParameters = (JobParameters) this.f15191c;
                int i = JobInfoSchedulerService.f6216a;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            case 1:
                C5097q c5097q = (C5097q) this.f15190b;
                AbstractC4739b abstractC4739b = (AbstractC4739b) this.f15191c;
                synchronized (c5097q) {
                    if (c5097q.f15446b == null) {
                        c5097q.f15445a.add(abstractC4739b);
                    } else {
                        c5097q.f15446b.add(abstractC4739b.get());
                    }
                }
                return;
            case 2:
                C3509f c3509f = (C3509f) this.f15190b;
                C3729e c3729e = (C3729e) this.f15191c;
                C2905a c2905a = C3509f.f11647f;
                C3894b m2220b = c3509f.m2220b(c3729e);
                if (m2220b == null) {
                    return;
                }
                c3509f.f11650b.add(m2220b);
                return;
            default:
                C2107c c2107c = (C2107c) this.f15190b;
                List list = (List) this.f15191c;
                Objects.requireNonNull(c2107c);
                try {
                    list.clear();
                    Cursor query = Build.VERSION.SDK_INT >= 29 ? c2107c.f7646a.getContentResolver().query(CallLog.Calls.CONTENT_URI.buildUpon().appendQueryParameter("LIMIT", String.valueOf(200)).build(), null, "type!= ?", new String[]{String.valueOf(2)}, "date DESC") : c2107c.f7646a.getContentResolver().query(CallLog.Calls.CONTENT_URI, null, "type!= ?", new String[]{String.valueOf(2)}, "date DESC LIMIT 200");
                    String str = "";
                    while (true) {
                        String str2 = str;
                        if (!query.moveToNext()) {
                            if (list.size() > 0) {
                                C0748b.m7409b().m7404g(new C3390f(1));
                            } else {
                                C0748b.m7409b().m7404g(new C3390f(2));
                            }
                            query.close();
                            return;
                        }
                        Date date = new Date(query.getLong(query.getColumnIndex("date")));
                        int i2 = query.getInt(query.getColumnIndex("duration"));
                        String string = query.getString(query.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME));
                        String string2 = query.getString(query.getColumnIndex("number"));
                        query.getInt(query.getColumnIndex("type"));
                        String m2704r = C3043q.m2704r(string2);
                        String str3 = str2;
                        if (!str2.equals(C2779g.m3096s(c2107c.f7646a, date))) {
                            str3 = C2779g.m3096s(c2107c.f7646a, date);
                            if (DateUtils.isToday(date.getTime())) {
                                list.add(new C3950f(c2107c.f7646a.getResources().getString(2131821064)));
                            } else if (DateUtils.isToday(date.getTime() + 86400000)) {
                                list.add(new C3950f(c2107c.f7646a.getResources().getString(2131821074)));
                            } else {
                                list.add(new C3950f(str3));
                            }
                        }
                        list.add(new CallItem(string2, string, date, Integer.valueOf(i2), m2704r));
                        str = str3;
                    }
                } catch (Exception e) {
                    C0748b.m7409b().m7404g(new C3390f(2));
                    e.printStackTrace();
                    return;
                }
        }
    }
}
