package com.android.a.b;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
/* loaded from: classes-dex2jar.jar:com/android/a/b/b.class */
public abstract class b extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    public Cursor f411a;
    private Context d;
    private int e;
    private int f;
    private int g;
    private long[] h;
    private int j;
    private int k;
    private int l;
    private SparseIntArray i = new SparseIntArray();
    private a m = new a();

    /* renamed from: b  reason: collision with root package name */
    protected ContentObserver f412b = new ContentObserver(new Handler()) { // from class: com.android.a.b.b.1
        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            b.this.a();
        }
    };
    protected DataSetObserver c = new DataSetObserver() { // from class: com.android.a.b.b.2
        @Override // android.database.DataSetObserver
        public final void onChanged() {
            b.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            b.this.notifyDataSetInvalidated();
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/android/a/b/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f415a;

        /* renamed from: b  reason: collision with root package name */
        boolean f416b;
        int c;
        int d;
        int e;
        int f = -1;

        protected a() {
        }
    }

    public b(Context context) {
        this.d = context;
        b();
    }

    private void a(a aVar, int i) {
        if (aVar.f != i) {
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            if (this.j != -1) {
                if (i <= this.j) {
                    int indexOfKey = this.i.indexOfKey(i);
                    int i5 = indexOfKey;
                    if (indexOfKey < 0) {
                        int i6 = (indexOfKey ^ (-1)) - 1;
                        i5 = i6;
                        if (i6 >= this.i.size()) {
                            i5 = i6 - 1;
                        }
                    }
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                    if (i5 >= 0) {
                        i4 = this.i.keyAt(i5);
                        i2 = this.i.valueAt(i5);
                        i3 = (int) (this.h[i2] & 4294967295L);
                    }
                } else {
                    i2 = this.l;
                    i4 = this.j;
                    i3 = this.k;
                }
            }
            while (i2 < this.g) {
                long j = this.h[i2];
                int i7 = (int) (4294967295L & j);
                int i8 = i4 + (i7 - i3);
                if (i2 > this.l) {
                    this.i.append(i8, i2);
                    this.j = i8;
                    this.k = i7;
                    this.l = i2;
                }
                if (i < i8) {
                    aVar.f415a = 0;
                    aVar.c = i7 - (i8 - i);
                    return;
                }
                boolean z = (Long.MIN_VALUE & j) != 0;
                int i9 = (int) ((j & 9223372032559808512L) >> 32);
                if (i == i8) {
                    aVar.f415a = 1;
                    aVar.e = i2;
                    aVar.f416b = z;
                    aVar.d = i9;
                    aVar.c = i7;
                    return;
                }
                if (!z) {
                    i4 = i8 + 1;
                } else if (i < i8 + i9 + 1) {
                    aVar.f415a = 2;
                    aVar.c = ((i - i8) + i7) - 1;
                    return;
                } else {
                    i4 = i8 + i9 + 1;
                }
                i3 = i7 + i9;
                i2++;
            }
            aVar.f415a = 0;
            aVar.c = (i - i4) + i3;
        }
    }

    private void b() {
        this.e = -1;
        this.j = -1;
        this.k = -1;
        this.l = -1;
        this.m.f = -1;
        this.i.clear();
    }

    public abstract View a(Context context, ViewGroup viewGroup);

    public void a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long[]] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r7, int r8, boolean r9) {
        /*
            r6 = this;
            r0 = r6
            int r0 = r0.g
            r1 = r6
            long[] r1 = r1.h
            int r1 = r1.length
            if (r0 < r1) goto L_0x005b
            r0 = r6
            long[] r0 = r0.h
            int r0 = r0.length
            r1 = 128(0x80, float:1.794E-43)
            int r0 = r0 + r1
            r1 = 8
            int r0 = r0 * r1
            r10 = r0
            r0 = 4
            r11 = r0
        L_0x001d:
            r0 = r10
            r12 = r0
            r0 = r11
            r1 = 32
            if (r0 >= r1) goto L_0x003d
            r0 = r10
            r1 = 1
            r2 = r11
            int r1 = r1 << r2
            r2 = 12
            int r1 = r1 - r2
            if (r0 > r1) goto L_0x008e
            r0 = 1
            r1 = r11
            int r0 = r0 << r1
            r1 = 12
            int r0 = r0 - r1
            r12 = r0
        L_0x003d:
            r0 = r12
            r1 = 8
            int r0 = r0 / r1
            long[] r0 = new long[r0]
            r13 = r0
            r0 = r6
            long[] r0 = r0.h
            r1 = 0
            r2 = r13
            r3 = 0
            r4 = r6
            int r4 = r4.g
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            r1 = r13
            r0.h = r1
        L_0x005b:
            r0 = r8
            long r0 = (long) r0
            r1 = 32
            long r0 = r0 << r1
            r1 = r7
            long r1 = (long) r1
            long r0 = r0 | r1
            r14 = r0
            r0 = r14
            r16 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0075
            r0 = r14
            r1 = -9223372036854775808
            long r0 = r0 | r1
            r16 = r0
        L_0x0075:
            r0 = r6
            long[] r0 = r0.h
            r13 = r0
            r0 = r6
            int r0 = r0.g
            r7 = r0
            r0 = r6
            r1 = r7
            r2 = 1
            int r1 = r1 + r2
            r0.g = r1
            r0 = r13
            r1 = r7
            r2 = r16
            r0[r1] = r2
            return
        L_0x008e:
            int r11 = r11 + 1
            goto L_0x001d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.a.b.b.a(int, int, boolean):void");
    }

    public abstract void a(Cursor cursor);

    public abstract void a(View view, Cursor cursor);

    public abstract void a(View view, Cursor cursor, int i);

    public final boolean a(int i) {
        boolean z = true;
        a(this.m, i);
        if (this.m.f415a != 1) {
            z = false;
        }
        return z;
    }

    public final int b(int i) {
        a(this.m, i);
        return this.m.d;
    }

    public abstract View b(Context context, ViewGroup viewGroup);

    public final void b(Cursor cursor) {
        if (cursor != this.f411a) {
            if (this.f411a != null) {
                this.f411a.unregisterContentObserver(this.f412b);
                this.f411a.unregisterDataSetObserver(this.c);
                this.f411a.close();
            }
            this.f411a = cursor;
            b();
            this.g = 0;
            this.h = new long[16];
            if (this.f411a != null) {
                a(this.f411a);
            }
            if (cursor != null) {
                cursor.registerContentObserver(this.f412b);
                cursor.registerDataSetObserver(this.c);
                this.f = cursor.getColumnIndexOrThrow("_id");
                notifyDataSetChanged();
                return;
            }
            notifyDataSetInvalidated();
        }
    }

    public abstract void b(View view, Cursor cursor);

    public abstract View c(Context context, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        int i = 0;
        if (this.f411a != null) {
            if (this.e != -1) {
                i = this.e;
            } else {
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.g; i4++) {
                    long j = this.h[i4];
                    int i5 = (int) (4294967295L & j);
                    boolean z = (Long.MIN_VALUE & j) != 0;
                    int i6 = (int) ((j & 9223372032559808512L) >> 32);
                    int i7 = i2 + (i5 - i3);
                    i2 = z ? i7 + i6 + 1 : i7 + 1;
                    i3 = i5 + i6;
                }
                this.e = (this.f411a.getCount() + i2) - i3;
                i = this.e;
            }
        }
        return i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor = null;
        if (this.f411a != null) {
            a(this.m, i);
            if (this.f411a.moveToPosition(this.m.c)) {
                cursor = this.f411a;
            }
        }
        return cursor;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return getItem(i) != null ? this.f411a.getLong(this.f) : -1L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        a(this.m, i);
        return this.m.f415a;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        a(this.m, i);
        View view2 = view;
        if (view == null) {
            switch (this.m.f415a) {
                case 0:
                    view2 = a(this.d, viewGroup);
                    break;
                case 1:
                    view2 = b(this.d, viewGroup);
                    break;
                case 2:
                    view2 = c(this.d, viewGroup);
                    break;
                default:
                    view2 = view;
                    break;
            }
        }
        this.f411a.moveToPosition(this.m.c);
        switch (this.m.f415a) {
            case 0:
                a(view2, this.f411a);
                break;
            case 1:
                a(view2, this.f411a, this.m.d);
                break;
            case 2:
                b(view2, this.f411a);
                break;
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
