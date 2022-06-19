package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.AbstractC14224d;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.gms.wearable.internal.w */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/w.class */
final class C14350w implements AbstractC14224d {

    /* renamed from: a */
    private final Status f52324a;

    /* renamed from: b */
    private final InputStream f52325b;

    public C14350w(Status status, InputStream inputStream) {
        this.f52324a = (Status) C12045o.m19162a(status);
        this.f52325b = inputStream;
    }

    @Override // com.google.android.gms.common.api.AbstractC11924l
    /* renamed from: a */
    public final void mo11351a() {
        InputStream inputStream = this.f52325b;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.f52324a;
    }
}
