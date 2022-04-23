package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/d.class */
public abstract class d implements h {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f22192a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<v> f22193b = new ArrayList<>(1);

    /* renamed from: c  reason: collision with root package name */
    private int f22194c;

    /* renamed from: d  reason: collision with root package name */
    private j f22195d;

    public d(boolean z) {
        this.f22192a = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i) {
        j jVar = (j) af.a(this.f22195d);
        for (int i2 = 0; i2 < this.f22194c; i2++) {
            this.f22193b.get(i2).a(jVar, this.f22192a, i);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void a(v vVar) {
        a.b(vVar);
        if (!this.f22193b.contains(vVar)) {
            this.f22193b.add(vVar);
            this.f22194c++;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public /* synthetic */ Map b() {
        Map emptyMap;
        emptyMap = Collections.emptyMap();
        return emptyMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(j jVar) {
        this.f22195d = jVar;
        for (int i = 0; i < this.f22194c; i++) {
            this.f22193b.get(i).a(jVar, this.f22192a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        for (int i = 0; i < this.f22194c; i++) {
            this.f22193b.get(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        j jVar = (j) af.a(this.f22195d);
        for (int i = 0; i < this.f22194c; i++) {
            this.f22193b.get(i).b(jVar, this.f22192a);
        }
        this.f22195d = null;
    }
}
