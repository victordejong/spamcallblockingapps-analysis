package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.C12045o;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.data.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/e.class */
public abstract class AbstractC11952e<T> extends AbstractC11948a<T> {

    /* renamed from: b */
    private boolean f39444b = false;

    /* renamed from: c */
    private ArrayList<Integer> f39445c;

    public AbstractC11952e(DataHolder dataHolder) {
        super(dataHolder);
    }

    /* renamed from: b */
    private int m19250b(int i) {
        if (i < 0 || i >= this.f39445c.size()) {
            StringBuilder sb = new StringBuilder(53);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is out of bounds for this buffer");
            throw new IllegalArgumentException(sb.toString());
        }
        return this.f39445c.get(i).intValue();
    }

    /* renamed from: d */
    private final void m19249d() {
        synchronized (this) {
            if (!this.f39444b) {
                int count = ((DataHolder) C12045o.m19162a(this.f39438a)).getCount();
                ArrayList<Integer> arrayList = new ArrayList<>();
                this.f39445c = arrayList;
                if (count > 0) {
                    arrayList.add(0);
                    String mo11442c = mo11442c();
                    String string = this.f39438a.getString(mo11442c, 0, this.f39438a.getWindowIndex(0));
                    int i = 1;
                    while (i < count) {
                        int windowIndex = this.f39438a.getWindowIndex(i);
                        String string2 = this.f39438a.getString(mo11442c, i, windowIndex);
                        if (string2 == null) {
                            StringBuilder sb = new StringBuilder(String.valueOf(mo11442c).length() + 78);
                            sb.append("Missing value for markerColumn: ");
                            sb.append(mo11442c);
                            sb.append(", at row: ");
                            sb.append(i);
                            sb.append(", for window: ");
                            sb.append(windowIndex);
                            throw new NullPointerException(sb.toString());
                        }
                        String str = string;
                        if (!string2.equals(string)) {
                            this.f39445c.add(Integer.valueOf(i));
                            str = string2;
                        }
                        i++;
                        string = str;
                    }
                }
                this.f39444b = true;
            }
        }
    }

    @Override // com.google.android.gms.common.data.AbstractC11949b
    /* renamed from: a */
    public final T mo19252a(int i) {
        int i2;
        int i3;
        m19249d();
        int m19250b = m19250b(i);
        int i4 = 0;
        if (i >= 0) {
            if (i == this.f39445c.size()) {
                i4 = 0;
            } else {
                if (i == this.f39445c.size() - 1) {
                    i2 = ((DataHolder) C12045o.m19162a(this.f39438a)).getCount();
                    i3 = this.f39445c.get(i).intValue();
                } else {
                    i2 = this.f39445c.get(i + 1).intValue();
                    i3 = this.f39445c.get(i).intValue();
                }
                int i5 = i2 - i3;
                i4 = i5;
                if (i5 == 1) {
                    ((DataHolder) C12045o.m19162a(this.f39438a)).getWindowIndex(m19250b(i));
                    i4 = 1;
                }
            }
        }
        return mo11443a(m19250b, i4);
    }

    /* renamed from: a */
    protected abstract T mo11443a(int i, int i2);

    @Override // com.google.android.gms.common.data.AbstractC11948a, com.google.android.gms.common.data.AbstractC11949b
    /* renamed from: b */
    public final int mo19251b() {
        m19249d();
        return this.f39445c.size();
    }

    /* renamed from: c */
    protected abstract String mo11442c();
}
