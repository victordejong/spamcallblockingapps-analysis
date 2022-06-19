package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
/* renamed from: com.google.android.gms.internal.measurement.gb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gb.class */
public final class C3958gb implements AbstractC3941fl {

    /* renamed from: a */
    private final AbstractC3943fn f18196a;

    /* renamed from: b */
    private final String f18197b;

    /* renamed from: c */
    private final Object[] f18198c;

    /* renamed from: d */
    private final int f18199d;

    public C3958gb(AbstractC3943fn abstractC3943fn, String str, Object[] objArr) {
        this.f18196a = abstractC3943fn;
        this.f18197b = str;
        this.f18198c = objArr;
        int i = 1;
        int charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f18199d = charAt;
            return;
        }
        int i2 = charAt & 8191;
        int i3 = 13;
        while (true) {
            int charAt2 = str.charAt(i);
            if (charAt2 < 55296) {
                this.f18199d = (charAt2 << i3) | i2;
                return;
            }
            i2 |= (charAt2 & 8191) << i3;
            i++;
            i3 += 13;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3941fl
    /* renamed from: a */
    public final int mo5340a() {
        return (this.f18199d & 1) == 1 ? AbstractC3900ed.C3905e.f18099h : AbstractC3900ed.C3905e.f18100i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3941fl
    /* renamed from: b */
    public final boolean mo5339b() {
        return (this.f18199d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3941fl
    /* renamed from: c */
    public final AbstractC3943fn mo5338c() {
        return this.f18196a;
    }

    /* renamed from: d */
    public final String m5478d() {
        return this.f18197b;
    }

    /* renamed from: e */
    public final Object[] m5477e() {
        return this.f18198c;
    }
}
