package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/s.class */
public final class C11587s implements AbstractC11567h {

    /* renamed from: a */
    private final AbstractC11567h f38617a;

    /* renamed from: b */
    private final PriorityTaskManager f38618b;

    /* renamed from: c */
    private final int f38619c;

    public C11587s(AbstractC11567h abstractC11567h, PriorityTaskManager priorityTaskManager, int i) {
        this.f38617a = (AbstractC11567h) C11593a.m20020b(abstractC11567h);
        this.f38618b = (PriorityTaskManager) C11593a.m20020b(priorityTaskManager);
        this.f38619c = i;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws IOException {
        this.f38618b.m20026a(this.f38619c);
        return this.f38617a.mo20033a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws IOException {
        this.f38618b.m20026a(this.f38619c);
        return this.f38617a.mo20035a(c11570j);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f38617a.mo20036a();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final void mo20034a(AbstractC11590v abstractC11590v) {
        C11593a.m20020b(abstractC11590v);
        this.f38617a.mo20034a(abstractC11590v);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: b */
    public final Map<String, List<String>> mo20032b() {
        return this.f38617a.mo20032b();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws IOException {
        this.f38617a.mo20031c();
    }
}
