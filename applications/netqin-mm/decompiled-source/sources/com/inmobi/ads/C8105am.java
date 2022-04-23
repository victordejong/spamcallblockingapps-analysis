package com.inmobi.ads;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.am */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/am.class */
public final class C8105am extends C8103ak implements Iterable<C8103ak> {

    /* renamed from: A */
    public int f31712A;

    /* renamed from: B */
    public C8103ak[] f31713B;

    /* renamed from: C */
    public int f31714C;

    /* renamed from: z */
    public long f31715z;

    /* renamed from: com.inmobi.ads.am$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/am$a.class */
    public final class C8106a implements Iterator<C8103ak> {

        /* renamed from: b */
        public int f31717b = 0;

        public C8106a() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f31717b < C8105am.this.f31714C;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ C8103ak next() {
            C8103ak[] akVarArr = C8105am.this.f31713B;
            int i = this.f31717b;
            this.f31717b = i + 1;
            return akVarArr[i];
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C8105am(String str, String str2, C8104al alVar, int i, JSONObject jSONObject, int i2) {
        this(str, str2, alVar, new LinkedList(), i, jSONObject, i2);
    }

    public C8105am(String str, String str2, C8104al alVar, List<NativeTracker> list, int i, JSONObject jSONObject, int i2) {
        super(str, str2, "CONTAINER", alVar, list);
        this.f31715z = 0L;
        this.f31681f = jSONObject;
        this.f31713B = new C8103ak[1];
        this.f31684i = i;
        this.f31714C = 0;
        this.f31712A = i2;
    }

    /* renamed from: a */
    public final C8103ak m6440a(int i) {
        if (i < 0 || i >= this.f31714C) {
            return null;
        }
        return this.f31713B[i];
    }

    @Override // java.lang.Iterable
    public final Iterator<C8103ak> iterator() {
        return new C8106a();
    }
}
