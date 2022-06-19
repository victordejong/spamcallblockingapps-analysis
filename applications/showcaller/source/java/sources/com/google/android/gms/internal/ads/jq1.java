package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTrack;
import com.zhy.http.okhttp.OkHttpUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jq1.class */
final class jq1 {

    /* renamed from: a */
    private final kp1 f24949a;

    /* renamed from: b */
    private int f24950b;

    /* renamed from: c */
    private long f24951c;

    /* renamed from: d */
    private long f24952d;

    /* renamed from: e */
    private long f24953e;

    /* renamed from: f */
    private long f24954f;

    public jq1(AudioTrack audioTrack) {
        if (C7101wa.f31475a >= 19) {
            this.f24949a = new kp1(audioTrack);
            m14064e();
            return;
        }
        this.f24949a = null;
        m14061h(3);
    }

    /* renamed from: h */
    private final void m14061h(int i) {
        this.f24950b = i;
        char c = 10000;
        if (i == 0) {
            this.f24953e = 0L;
            this.f24954f = -1L;
            this.f24951c = System.nanoTime() / 1000;
        } else if (i == 1) {
            this.f24952d = OkHttpUtils.DEFAULT_MILLISECONDS;
            return;
        } else {
            c = (i == 2 || i == 3) ? (char) 38528 : (char) 41248;
        }
        this.f24952d = c;
    }

    @TargetApi(19)
    /* renamed from: a */
    public final boolean m14068a(long j) {
        kp1 kp1Var = this.f24949a;
        boolean z = false;
        if (kp1Var == null || j - this.f24953e < this.f24952d) {
            return false;
        }
        this.f24953e = j;
        boolean m13838a = kp1Var.m13838a();
        int i = this.f24950b;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 && m13838a) {
                        m14064e();
                        return true;
                    }
                } else if (!m13838a) {
                    m14064e();
                    return false;
                }
            } else if (!m13838a) {
                m14064e();
            } else if (this.f24949a.m13836c() > this.f24954f) {
                m14061h(2);
                return true;
            }
        } else if (m13838a) {
            if (this.f24949a.m13837b() >= this.f24951c) {
                this.f24954f = this.f24949a.m13836c();
                m14061h(1);
                return true;
            }
            return z;
        } else if (j - this.f24951c > 500000) {
            m14061h(3);
            return false;
        }
        z = m13838a;
        return z;
    }

    /* renamed from: b */
    public final void m14067b() {
        m14061h(4);
    }

    /* renamed from: c */
    public final void m14066c() {
        if (this.f24950b == 4) {
            m14064e();
        }
    }

    /* renamed from: d */
    public final boolean m14065d() {
        return this.f24950b == 2;
    }

    /* renamed from: e */
    public final void m14064e() {
        if (this.f24949a != null) {
            m14061h(0);
        }
    }

    @TargetApi(19)
    /* renamed from: f */
    public final long m14063f() {
        kp1 kp1Var = this.f24949a;
        if (kp1Var != null) {
            return kp1Var.m13837b();
        }
        return -9223372036854775807L;
    }

    @TargetApi(19)
    /* renamed from: g */
    public final long m14062g() {
        kp1 kp1Var = this.f24949a;
        if (kp1Var != null) {
            return kp1Var.m13836c();
        }
        return -1L;
    }
}
