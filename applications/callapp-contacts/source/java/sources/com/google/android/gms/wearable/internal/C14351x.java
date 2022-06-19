package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.AbstractC14225e;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.android.gms.wearable.internal.x */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/x.class */
final class C14351x implements AbstractC14225e {

    /* renamed from: a */
    private final Status f52326a;

    /* renamed from: b */
    private final OutputStream f52327b;

    public C14351x(Status status, OutputStream outputStream) {
        this.f52326a = (Status) C12045o.m19162a(status);
        this.f52327b = outputStream;
    }

    @Override // com.google.android.gms.common.api.AbstractC11924l
    /* renamed from: a */
    public final void mo11351a() {
        OutputStream outputStream = this.f52327b;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.f52326a;
    }
}
