package com.flexaspect.android.everycallcontrol.p003ui.activities;

import p000.fa1;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.LLPPActivity$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a.class */
public class LLPPActivity$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LLPPActivity f2774a;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.LLPPActivity$a$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a$a.class */
    public class RunnableC0390a implements Runnable {
        public RunnableC0390a() {
            LLPPActivity$a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            LLPPActivity$a.this.f2774a.finish();
        }
    }

    public LLPPActivity$a(LLPPActivity lLPPActivity) {
        this.f2774a = lLPPActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (fa1.C1420e.m1805j() == 0) {
            this.f2774a.runOnUiThread(new RunnableC0390a());
        }
    }
}
