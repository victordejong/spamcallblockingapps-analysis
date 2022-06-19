package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/d.class */
public abstract class AbstractC11562d implements AbstractC11567h {

    /* renamed from: a */
    private final boolean f38498a;

    /* renamed from: b */
    private final ArrayList<AbstractC11590v> f38499b = new ArrayList<>(1);

    /* renamed from: c */
    private int f38500c;

    /* renamed from: d */
    private C11570j f38501d;

    public AbstractC11562d(boolean z) {
        this.f38498a = z;
    }

    /* renamed from: a */
    public final void m20084a(int i) {
        C11570j c11570j = (C11570j) C11599af.m19974a(this.f38501d);
        for (int i2 = 0; i2 < this.f38500c; i2++) {
            this.f38499b.get(i2).mo20029a(c11570j, this.f38498a, i);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final void mo20034a(AbstractC11590v abstractC11590v) {
        C11593a.m20020b(abstractC11590v);
        if (!this.f38499b.contains(abstractC11590v)) {
            this.f38499b.add(abstractC11590v);
            this.f38500c++;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: b */
    public /* synthetic */ Map mo20032b() {
        Map emptyMap;
        emptyMap = Collections.emptyMap();
        return emptyMap;
    }

    /* renamed from: b */
    public final void m20083b(C11570j c11570j) {
        this.f38501d = c11570j;
        for (int i = 0; i < this.f38500c; i++) {
            this.f38499b.get(i).mo20030a(c11570j, this.f38498a);
        }
    }

    /* renamed from: d */
    public final void m20082d() {
        for (int i = 0; i < this.f38500c; i++) {
            this.f38499b.get(i);
        }
    }

    /* renamed from: e */
    public final void m20081e() {
        C11570j c11570j = (C11570j) C11599af.m19974a(this.f38501d);
        for (int i = 0; i < this.f38500c; i++) {
            this.f38499b.get(i).mo20028b(c11570j, this.f38498a);
        }
        this.f38501d = null;
    }
}
