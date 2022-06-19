package com.google.firebase.remoteconfig.internal;

import com.google.firebase.remoteconfig.AbstractC2508h;
/* renamed from: com.google.firebase.remoteconfig.internal.q */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/q.class */
public class C2533q implements AbstractC2508h {

    /* renamed from: a */
    private final String f10853a;

    /* renamed from: b */
    private final int f10854b;

    public C2533q(String str, int i) {
        this.f10853a = str;
        this.f10854b = i;
    }

    /* renamed from: f */
    private String m3181f() {
        return mo3185b().trim();
    }

    /* renamed from: g */
    private void m3180g() {
        if (this.f10853a != null) {
            return;
        }
        throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
    }

    @Override // com.google.firebase.remoteconfig.AbstractC2508h
    /* renamed from: a */
    public double mo3186a() {
        if (this.f10854b == 0) {
            return 0.0d;
        }
        String m3181f = m3181f();
        try {
            return Double.valueOf(m3181f).doubleValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", m3181f, "double"), e);
        }
    }

    @Override // com.google.firebase.remoteconfig.AbstractC2508h
    /* renamed from: b */
    public String mo3185b() {
        if (this.f10854b == 0) {
            return "";
        }
        m3180g();
        return this.f10853a;
    }

    @Override // com.google.firebase.remoteconfig.AbstractC2508h
    /* renamed from: c */
    public long mo3184c() {
        if (this.f10854b == 0) {
            return 0L;
        }
        String m3181f = m3181f();
        try {
            return Long.valueOf(m3181f).longValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", m3181f, "long"), e);
        }
    }

    @Override // com.google.firebase.remoteconfig.AbstractC2508h
    /* renamed from: d */
    public boolean mo3183d() {
        if (this.f10854b == 0) {
            return false;
        }
        String m3181f = m3181f();
        if (C2527m.f10836e.matcher(m3181f).matches()) {
            return true;
        }
        if (!C2527m.f10837f.matcher(m3181f).matches()) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", m3181f, "boolean"));
        }
        return false;
    }

    @Override // com.google.firebase.remoteconfig.AbstractC2508h
    /* renamed from: e */
    public int mo3182e() {
        return this.f10854b;
    }
}
