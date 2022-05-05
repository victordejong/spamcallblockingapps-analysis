package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayList;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/EntityBuffer.class */
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {

    /* renamed from: g */
    private boolean f7400g;

    /* renamed from: h */
    private ArrayList<Integer> f7401h;

    /* renamed from: k */
    private final void m14625k() {
        synchronized (this) {
            if (!this.f7400g) {
                int count = this.f7378f.getCount();
                ArrayList<Integer> arrayList = new ArrayList<>();
                this.f7401h = arrayList;
                if (count > 0) {
                    arrayList.add(0);
                    String h = m14626h();
                    String Y = this.f7378f.m14632Y(h, 0, this.f7378f.m14631d0(0));
                    for (int i = 1; i < count; i++) {
                        int d0 = this.f7378f.m14631d0(i);
                        String Y2 = this.f7378f.m14632Y(h, i, d0);
                        if (Y2 != null) {
                            Y = Y;
                            if (!Y2.equals(Y)) {
                                this.f7401h.add(Integer.valueOf(i));
                                Y = Y2;
                            }
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(h).length() + 78);
                            sb.append("Missing value for markerColumn: ");
                            sb.append(h);
                            sb.append(", at row: ");
                            sb.append(i);
                            sb.append(", for window: ");
                            sb.append(d0);
                            throw new NullPointerException(sb.toString());
                        }
                    }
                }
                this.f7400g = true;
            }
        }
    }

    /* renamed from: p */
    private final int m14624p(int i) {
        if (i >= 0 && i < this.f7401h.size()) {
            return this.f7401h.get(i).intValue();
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("Position ");
        sb.append(i);
        sb.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(sb.toString());
    }

    @KeepForSdk
    /* renamed from: d */
    protected String m14628d() {
        return null;
    }

    @KeepForSdk
    /* renamed from: e */
    protected abstract T m14627e(int i, int i2);

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public final T get(int i) {
        int i2;
        int i3;
        m14625k();
        int p = m14624p(i);
        int i4 = 0;
        if (i >= 0) {
            if (i == this.f7401h.size()) {
                i4 = 0;
            } else {
                if (i == this.f7401h.size() - 1) {
                    i3 = this.f7378f.getCount();
                    i2 = this.f7401h.get(i).intValue();
                } else {
                    i3 = this.f7401h.get(i + 1).intValue();
                    i2 = this.f7401h.get(i).intValue();
                }
                i4 = i3 - i2;
                if (i4 == 1) {
                    int p2 = m14624p(i);
                    int d0 = this.f7378f.m14631d0(p2);
                    String d = m14628d();
                    if (d != null && this.f7378f.m14632Y(d, p2, d0) == null) {
                        i4 = 0;
                    }
                }
            }
        }
        return m14627e(p, i4);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public int getCount() {
        m14625k();
        return this.f7401h.size();
    }

    @KeepForSdk
    /* renamed from: h */
    protected abstract String m14626h();
}
