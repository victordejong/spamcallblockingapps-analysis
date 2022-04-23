package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.d;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/w.class */
final class w implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Status f30159a;

    /* renamed from: b  reason: collision with root package name */
    private final InputStream f30160b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Status status, InputStream inputStream) {
        this.f30159a = (Status) o.a(status);
        this.f30160b = inputStream;
    }

    @Override // com.google.android.gms.common.api.l
    public final void a() {
        InputStream inputStream = this.f30160b;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.f30159a;
    }
}
