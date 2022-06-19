package p027c2;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
/* renamed from: c2.a */
/* loaded from: classes-dex2jar.jar:c2/a.class */
public final /* synthetic */ class RunnableC0813a implements Runnable {

    /* renamed from: b */
    public static final /* synthetic */ RunnableC0813a f2990b = new RunnableC0813a(0);

    /* renamed from: c */
    public static final /* synthetic */ RunnableC0813a f2991c = new RunnableC0813a(1);

    /* renamed from: a */
    public final /* synthetic */ int f2992a;

    public /* synthetic */ RunnableC0813a(int i) {
        this.f2992a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2992a) {
            case 0:
                AbstractView$OnClickListenerC0814b.f2994b = true;
                return;
            default:
                int i = AlarmManagerSchedulerBroadcastReceiver.f6215a;
                return;
        }
    }
}
