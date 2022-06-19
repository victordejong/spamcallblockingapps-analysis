package com.google.android.play.core.splitcompat;

import android.util.Log;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitcompat.p */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/p.class */
public final class RunnableC15120p implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Set f54864a;

    /* renamed from: b */
    final /* synthetic */ C15105a f54865b;

    public RunnableC15120p(C15105a c15105a, Set set) {
        this.f54865b = c15105a;
        this.f54864a = set;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C15108d c15108d;
        try {
            for (String str : this.f54864a) {
                c15108d = this.f54865b.f54838b;
                c15108d.m9433f(str);
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to remove from splitcompat storage split that is already installed", e);
        }
    }
}
