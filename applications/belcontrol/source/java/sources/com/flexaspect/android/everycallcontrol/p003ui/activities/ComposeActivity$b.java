package com.flexaspect.android.everycallcontrol.p003ui.activities;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.ComposeActivity$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b.class */
public class ComposeActivity$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ComposeActivity f2769a;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.ComposeActivity$b$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b$a.class */
    public class RunnableC0389a implements Runnable {
        public RunnableC0389a() {
            ComposeActivity$b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ComposeActivity.d(ComposeActivity$b.this.f2769a);
        }
    }

    public ComposeActivity$b(ComposeActivity composeActivity) {
        this.f2769a = composeActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2769a.runOnUiThread(new RunnableC0389a());
    }
}
