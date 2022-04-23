package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drq.class */
public abstract class drq implements aqp {

    /* renamed from: a  reason: collision with root package name */
    private static drz f27130a = drz.a(drq.class);

    /* renamed from: b  reason: collision with root package name */
    private String f27131b;

    /* renamed from: d  reason: collision with root package name */
    private apo f27133d;
    private ByteBuffer f;
    private long g;
    private long h;
    private drt j;
    private long i = -1;
    private ByteBuffer k = null;
    private boolean e = true;

    /* renamed from: c  reason: collision with root package name */
    boolean f27132c = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public drq(String str) {
        this.f27131b = str;
    }

    private final void c() {
        synchronized (this) {
            if (!this.e) {
                try {
                    drz drzVar = f27130a;
                    String valueOf = String.valueOf(this.f27131b);
                    drzVar.a(valueOf.length() != 0 ? "mem mapping ".concat(valueOf) : new String("mem mapping "));
                    this.f = this.j.a(this.g, this.i);
                    this.e = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aqp
    public final String a() {
        return this.f27131b;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    public final void a(apo apoVar) {
        this.f27133d = apoVar;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    public final void a(drt drtVar, ByteBuffer byteBuffer, long j, alm almVar) throws IOException {
        long b2 = drtVar.b();
        this.g = b2;
        this.h = b2 - byteBuffer.remaining();
        this.i = j;
        this.j = drtVar;
        drtVar.a(drtVar.b() + j);
        this.e = false;
        this.f27132c = false;
        b();
    }

    protected abstract void a(ByteBuffer byteBuffer);

    public final void b() {
        synchronized (this) {
            c();
            drz drzVar = f27130a;
            String valueOf = String.valueOf(this.f27131b);
            drzVar.a(valueOf.length() != 0 ? "parsing details of ".concat(valueOf) : new String("parsing details of "));
            ByteBuffer byteBuffer = this.f;
            if (byteBuffer != null) {
                this.f27132c = true;
                byteBuffer.rewind();
                a(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.k = byteBuffer.slice();
                }
                this.f = null;
            }
        }
    }
}
