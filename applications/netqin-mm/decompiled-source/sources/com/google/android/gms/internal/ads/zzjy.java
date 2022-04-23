package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjy.class */
public interface zzjy {
    /* renamed from: a */
    long mo11888a();

    /* renamed from: a */
    void mo11887a(int i) throws IOException, InterruptedException;

    /* renamed from: a */
    void mo11886a(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    /* renamed from: a */
    boolean mo11885a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException;

    /* renamed from: b */
    int mo11883b(int i) throws IOException, InterruptedException;

    /* renamed from: b */
    void mo11884b();

    /* renamed from: c */
    void mo11882c(int i) throws IOException, InterruptedException;

    long getPosition();

    int read(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    void readFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException;
}
