package com.flexaspect.android.everycallcontrol.p003ui.activities;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.ComposeActivity$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$a.class */
public class ComposeActivity$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ComposeActivity f2768a;

    public ComposeActivity$a(ComposeActivity composeActivity) {
        this.f2768a = composeActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2768a.getListView().setSelection(this.f2768a.getListAdapter().getCount() - 1);
    }
}
