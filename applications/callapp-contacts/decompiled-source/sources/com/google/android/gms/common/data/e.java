package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.o;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/e.class */
public abstract class e<T> extends a<T> {

    /* renamed from: b  reason: collision with root package name */
    private boolean f22805b = false;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<Integer> f22806c;

    public e(DataHolder dataHolder) {
        super(dataHolder);
    }

    private int b(int i) {
        if (i >= 0 && i < this.f22806c.size()) {
            return this.f22806c.get(i).intValue();
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("Position ");
        sb.append(i);
        sb.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(sb.toString());
    }

    private final void d() {
        synchronized (this) {
            if (!this.f22805b) {
                int count = ((DataHolder) o.a(this.f22799a)).getCount();
                ArrayList<Integer> arrayList = new ArrayList<>();
                this.f22806c = arrayList;
                if (count > 0) {
                    arrayList.add(0);
                    String c2 = c();
                    String string = this.f22799a.getString(c2, 0, this.f22799a.getWindowIndex(0));
                    for (int i = 1; i < count; i++) {
                        int windowIndex = this.f22799a.getWindowIndex(i);
                        String string2 = this.f22799a.getString(c2, i, windowIndex);
                        if (string2 != null) {
                            string = string;
                            if (!string2.equals(string)) {
                                this.f22806c.add(Integer.valueOf(i));
                                string = string2;
                            }
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(c2).length() + 78);
                            sb.append("Missing value for markerColumn: ");
                            sb.append(c2);
                            sb.append(", at row: ");
                            sb.append(i);
                            sb.append(", for window: ");
                            sb.append(windowIndex);
                            throw new NullPointerException(sb.toString());
                        }
                    }
                }
                this.f22805b = true;
            }
        }
    }

    @Override // com.google.android.gms.common.data.b
    public final T a(int i) {
        int i2;
        int i3;
        d();
        int b2 = b(i);
        int i4 = 0;
        if (i >= 0) {
            if (i == this.f22806c.size()) {
                i4 = 0;
            } else {
                if (i == this.f22806c.size() - 1) {
                    i2 = ((DataHolder) o.a(this.f22799a)).getCount();
                    i3 = this.f22806c.get(i).intValue();
                } else {
                    i2 = this.f22806c.get(i + 1).intValue();
                    i3 = this.f22806c.get(i).intValue();
                }
                int i5 = i2 - i3;
                i4 = i5;
                if (i5 == 1) {
                    ((DataHolder) o.a(this.f22799a)).getWindowIndex(b(i));
                    i4 = 1;
                }
            }
        }
        return a(b2, i4);
    }

    protected abstract T a(int i, int i2);

    @Override // com.google.android.gms.common.data.a, com.google.android.gms.common.data.b
    public final int b() {
        d();
        return this.f22806c.size();
    }

    protected abstract String c();
}
