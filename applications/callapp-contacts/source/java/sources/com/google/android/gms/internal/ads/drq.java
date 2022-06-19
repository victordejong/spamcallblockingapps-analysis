package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drq.class */
public abstract class drq implements aqp {

    /* renamed from: a */
    private static drz f47465a = drz.m15790a(drq.class);

    /* renamed from: b */
    private String f47466b;

    /* renamed from: d */
    private apo f47468d;

    /* renamed from: f */
    private ByteBuffer f47470f;

    /* renamed from: g */
    private long f47471g;

    /* renamed from: h */
    private long f47472h;

    /* renamed from: j */
    private drt f47474j;

    /* renamed from: i */
    private long f47473i = -1;

    /* renamed from: k */
    private ByteBuffer f47475k = null;

    /* renamed from: e */
    private boolean f47469e = true;

    /* renamed from: c */
    boolean f47467c = true;

    public drq(String str) {
        this.f47466b = str;
    }

    /* renamed from: c */
    private final void m15803c() {
        synchronized (this) {
            if (!this.f47469e) {
                try {
                    drz drzVar = f47465a;
                    String valueOf = String.valueOf(this.f47466b);
                    drzVar.mo15789a(valueOf.length() != 0 ? "mem mapping ".concat(valueOf) : new String("mem mapping "));
                    this.f47470f = this.f47474j.mo15795a(this.f47471g, this.f47473i);
                    this.f47469e = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aqp
    /* renamed from: a */
    public final String mo15807a() {
        return this.f47466b;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    /* renamed from: a */
    public final void mo15806a(apo apoVar) {
        this.f47468d = apoVar;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    /* renamed from: a */
    public final void mo15805a(drt drtVar, ByteBuffer byteBuffer, long j, alm almVar) throws IOException {
        long mo15793b = drtVar.mo15793b();
        this.f47471g = mo15793b;
        this.f47472h = mo15793b - byteBuffer.remaining();
        this.f47473i = j;
        this.f47474j = drtVar;
        drtVar.mo15796a(drtVar.mo15793b() + j);
        this.f47469e = false;
        this.f47467c = false;
        m15804b();
    }

    /* renamed from: a */
    protected abstract void mo15792a(ByteBuffer byteBuffer);

    /* renamed from: b */
    public final void m15804b() {
        synchronized (this) {
            m15803c();
            drz drzVar = f47465a;
            String valueOf = String.valueOf(this.f47466b);
            drzVar.mo15789a(valueOf.length() != 0 ? "parsing details of ".concat(valueOf) : new String("parsing details of "));
            ByteBuffer byteBuffer = this.f47470f;
            if (byteBuffer != null) {
                this.f47467c = true;
                byteBuffer.rewind();
                mo15792a(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.f47475k = byteBuffer.slice();
                }
                this.f47470f = null;
            }
        }
    }
}
