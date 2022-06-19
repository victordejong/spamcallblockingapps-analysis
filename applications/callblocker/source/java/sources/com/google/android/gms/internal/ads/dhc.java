package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhc.class */
public abstract class dhc implements adi {

    /* renamed from: b */
    private static dhl f14337b = dhl.m9456a(dhc.class);

    /* renamed from: c */
    private String f14339c;

    /* renamed from: d */
    private agj f14340d;

    /* renamed from: f */
    private ByteBuffer f14342f;

    /* renamed from: g */
    private long f14343g;

    /* renamed from: h */
    private long f14344h;

    /* renamed from: j */
    private dhf f14346j;

    /* renamed from: i */
    private long f14345i = -1;

    /* renamed from: k */
    private ByteBuffer f14347k = null;

    /* renamed from: e */
    private boolean f14341e = true;

    /* renamed from: a */
    boolean f14338a = true;

    public dhc(String str) {
        this.f14339c = str;
    }

    /* renamed from: b */
    private final void m9470b() {
        synchronized (this) {
            if (!this.f14341e) {
                try {
                    dhl dhlVar = f14337b;
                    String valueOf = String.valueOf(this.f14339c);
                    dhlVar.mo9455a(valueOf.length() != 0 ? "mem mapping ".concat(valueOf) : new String("mem mapping "));
                    this.f14342f = this.f14346j.mo9461a(this.f14343g, this.f14345i);
                    this.f14341e = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adi
    /* renamed from: a */
    public final String mo9473a() {
        return this.f14339c;
    }

    @Override // com.google.android.gms.internal.ads.adi
    /* renamed from: a */
    public final void mo9472a(agj agjVar) {
        this.f14340d = agjVar;
    }

    @Override // com.google.android.gms.internal.ads.adi
    /* renamed from: a */
    public final void mo9471a(dhf dhfVar, ByteBuffer byteBuffer, long j, aci aciVar) {
        this.f14343g = dhfVar.mo9459b();
        this.f14344h = this.f14343g - byteBuffer.remaining();
        this.f14345i = j;
        this.f14346j = dhfVar;
        dhfVar.mo9462a(dhfVar.mo9459b() + j);
        this.f14341e = false;
        this.f14338a = false;
        m9469d();
    }

    /* renamed from: a */
    protected abstract void mo9458a(ByteBuffer byteBuffer);

    /* renamed from: d */
    public final void m9469d() {
        synchronized (this) {
            m9470b();
            dhl dhlVar = f14337b;
            String valueOf = String.valueOf(this.f14339c);
            dhlVar.mo9455a(valueOf.length() != 0 ? "parsing details of ".concat(valueOf) : new String("parsing details of "));
            if (this.f14342f != null) {
                ByteBuffer byteBuffer = this.f14342f;
                this.f14338a = true;
                byteBuffer.rewind();
                mo9458a(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.f14347k = byteBuffer.slice();
                }
                this.f14342f = null;
            }
        }
    }
}
