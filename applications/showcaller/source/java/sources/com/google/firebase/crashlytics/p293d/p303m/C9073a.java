package com.google.firebase.crashlytics.p293d.p303m;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
/* renamed from: com.google.firebase.crashlytics.d.m.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/m/a.class */
public class C9073a implements AbstractC9074b {

    /* renamed from: a */
    private final Context f39244a;

    /* renamed from: b */
    private boolean f39245b = false;

    /* renamed from: c */
    private String f39246c;

    public C9073a(Context context) {
        this.f39244a = context;
    }

    @Override // com.google.firebase.crashlytics.p293d.p303m.AbstractC9074b
    /* renamed from: a */
    public String mo1978a() {
        if (!this.f39245b) {
            this.f39246c = CommonUtils.m1977A(this.f39244a);
            this.f39245b = true;
        }
        String str = this.f39246c;
        if (str != null) {
            return str;
        }
        return null;
    }
}
