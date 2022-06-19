package com.razorpay;

import android.view.inputmethod.InputMethodManager;
/* renamed from: com.razorpay.a */
/* loaded from: classes3-dex2jar.jar:com/razorpay/a.class */
public final class RunnableC2731a implements Runnable {

    /* renamed from: a */
    private /* synthetic */ RzpAssist f9432a;

    public RunnableC2731a(RzpAssist rzpAssist) {
        this.f9432a = rzpAssist;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((InputMethodManager) RzpAssist.access$100(this.f9432a).getSystemService("input_method")).showSoftInput(RzpAssist.access$000(this.f9432a), 0);
    }
}
