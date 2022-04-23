package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Response.class */
public class Response<T extends Result> {

    /* renamed from: f */
    private T f7020f;

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    /* renamed from: d */
    public T m15007d() {
        return this.f7020f;
    }

    /* renamed from: e */
    public void m15006e(@NonNull T t) {
        this.f7020f = t;
    }
}
