package com.linkedin.android.litr.g;

import android.media.MediaCodec;
import android.os.Build;
import com.linkedin.android.litr.d.d;
import com.linkedin.android.litr.d.e;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/g/b.class */
public class b extends c {
    private static final String p = "b";

    /* renamed from: a  reason: collision with root package name */
    ByteBuffer f33743a;

    /* renamed from: b  reason: collision with root package name */
    MediaCodec.BufferInfo f33744b;

    /* renamed from: c  reason: collision with root package name */
    int f33745c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(d dVar, int i, e eVar, int i2) {
        super(dVar, i, eVar, i2, null, null, null, null);
    }

    @Override // com.linkedin.android.litr.g.c
    public final void a() throws TrackTranscoderException {
        this.f33746d.b(this.j);
        this.f33744b = new MediaCodec.BufferInfo();
    }

    @Override // com.linkedin.android.litr.g.c
    public final int b() {
        int i;
        int i2 = this.f33745c;
        if (i2 == 3) {
            return i2;
        }
        if (!this.l) {
            this.m = this.f33746d.a(this.j);
            if (this.n > 0) {
                this.m.setLong("durationUs", this.n);
            }
            this.k = this.e.a(this.m, this.k);
            this.l = true;
            this.f33743a = ByteBuffer.allocate(this.m.containsKey("max-input-size") ? this.m.getInteger("max-input-size") : 1048576);
            this.f33745c = 1;
            return 1;
        }
        int b2 = this.f33746d.b();
        if (b2 == -1 || b2 == this.j) {
            this.f33745c = 2;
            int a2 = this.f33746d.a(this.f33743a);
            long c2 = this.f33746d.c();
            int d2 = this.f33746d.d();
            if (a2 <= 0 || (d2 & 4) != 0) {
                this.f33743a.clear();
                this.o = 1.0f;
                this.f33745c = 3;
            } else if (c2 >= this.i.f33711b) {
                this.f33743a.clear();
                this.o = 1.0f;
                this.f33744b.set(0, 0, c2 - this.i.f33710a, this.f33744b.flags | 4);
                this.e.a(this.k, this.f33743a, this.f33744b);
                h();
                this.f33745c = 3;
            } else {
                if (c2 >= this.i.f33710a) {
                    if ((d2 & 1) != 0) {
                        int i3 = Build.VERSION.SDK_INT;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    long j = c2 - this.i.f33710a;
                    if (this.n > 0) {
                        this.o = ((float) j) / ((float) this.n);
                    }
                    this.f33744b.set(0, a2, j, i);
                    this.e.a(this.k, this.f33743a, this.f33744b);
                }
                this.f33746d.e();
            }
            return this.f33745c;
        }
        this.f33745c = 2;
        return 2;
    }

    @Override // com.linkedin.android.litr.g.c
    public final void c() {
        ByteBuffer byteBuffer = this.f33743a;
        if (byteBuffer != null) {
            byteBuffer.clear();
            this.f33743a = null;
        }
    }

    @Override // com.linkedin.android.litr.g.c
    public final String d() {
        return "passthrough";
    }

    @Override // com.linkedin.android.litr.g.c
    public final String e() {
        return "passthrough";
    }
}
