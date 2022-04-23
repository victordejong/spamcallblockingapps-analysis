package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.e;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/x.class */
final class x implements e {

    /* renamed from: a  reason: collision with root package name */
    private final Status f30161a;

    /* renamed from: b  reason: collision with root package name */
    private final OutputStream f30162b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(Status status, OutputStream outputStream) {
        this.f30161a = (Status) o.a(status);
        this.f30162b = outputStream;
    }

    @Override // com.google.android.gms.common.api.l
    public final void a() {
        OutputStream outputStream = this.f30162b;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.f30161a;
    }
}
