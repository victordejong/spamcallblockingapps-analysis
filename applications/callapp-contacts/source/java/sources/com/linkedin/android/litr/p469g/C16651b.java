package com.linkedin.android.litr.p469g;

import android.media.MediaCodec;
import android.os.Build;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.p466d.AbstractC16635d;
import com.linkedin.android.litr.p466d.AbstractC16636e;
import java.nio.ByteBuffer;
/* renamed from: com.linkedin.android.litr.g.b */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/g/b.class */
public class C16651b extends AbstractC16652c {

    /* renamed from: p */
    private static final String f58587p = "b";

    /* renamed from: a */
    ByteBuffer f58588a;

    /* renamed from: b */
    MediaCodec.BufferInfo f58589b;

    /* renamed from: c */
    int f58590c;

    public C16651b(AbstractC16635d abstractC16635d, int i, AbstractC16636e abstractC16636e, int i2) {
        super(abstractC16635d, i, abstractC16636e, i2, null, null, null, null);
    }

    @Override // com.linkedin.android.litr.p469g.AbstractC16652c
    /* renamed from: a */
    public final void mo6817a() throws TrackTranscoderException {
        this.f58591d.mo6855b(this.f58597j);
        this.f58589b = new MediaCodec.BufferInfo();
    }

    @Override // com.linkedin.android.litr.p469g.AbstractC16652c
    /* renamed from: b */
    public final int mo6816b() {
        int i;
        int i2 = this.f58590c;
        if (i2 == 3) {
            return i2;
        }
        if (!this.f58599l) {
            this.f58600m = this.f58591d.mo6859a(this.f58597j);
            if (this.f58601n > 0) {
                this.f58600m.setLong("durationUs", this.f58601n);
            }
            this.f58598k = this.f58592e.mo6846a(this.f58600m, this.f58598k);
            this.f58599l = true;
            this.f58588a = ByteBuffer.allocate(this.f58600m.containsKey("max-input-size") ? this.f58600m.getInteger("max-input-size") : 1048576);
            this.f58590c = 1;
            return 1;
        }
        int mo6856b = this.f58591d.mo6856b();
        if (mo6856b != -1 && mo6856b != this.f58597j) {
            this.f58590c = 2;
            return 2;
        }
        this.f58590c = 2;
        int mo6857a = this.f58591d.mo6857a(this.f58588a);
        long mo6854c = this.f58591d.mo6854c();
        int mo6853d = this.f58591d.mo6853d();
        if (mo6857a <= 0 || (mo6853d & 4) != 0) {
            this.f58588a.clear();
            this.f58602o = 1.0f;
            this.f58590c = 3;
        } else if (mo6854c >= this.f58596i.f58546b) {
            this.f58588a.clear();
            this.f58602o = 1.0f;
            this.f58589b.set(0, 0, mo6854c - this.f58596i.f58545a, this.f58589b.flags | 4);
            this.f58592e.mo6847a(this.f58598k, this.f58588a, this.f58589b);
            m6819h();
            this.f58590c = 3;
        } else {
            if (mo6854c >= this.f58596i.f58545a) {
                if ((mo6853d & 1) != 0) {
                    int i3 = Build.VERSION.SDK_INT;
                    i = 1;
                } else {
                    i = 0;
                }
                long j = mo6854c - this.f58596i.f58545a;
                if (this.f58601n > 0) {
                    this.f58602o = ((float) j) / ((float) this.f58601n);
                }
                this.f58589b.set(0, mo6857a, j, i);
                this.f58592e.mo6847a(this.f58598k, this.f58588a, this.f58589b);
            }
            this.f58591d.mo6852e();
        }
        return this.f58590c;
    }

    @Override // com.linkedin.android.litr.p469g.AbstractC16652c
    /* renamed from: c */
    public final void mo6815c() {
        ByteBuffer byteBuffer = this.f58588a;
        if (byteBuffer != null) {
            byteBuffer.clear();
            this.f58588a = null;
        }
    }

    @Override // com.linkedin.android.litr.p469g.AbstractC16652c
    /* renamed from: d */
    public final String mo6823d() {
        return "passthrough";
    }

    @Override // com.linkedin.android.litr.p469g.AbstractC16652c
    /* renamed from: e */
    public final String mo6822e() {
        return "passthrough";
    }
}
