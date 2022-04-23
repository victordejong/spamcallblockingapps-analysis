package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.a;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/s.class */
public final class s implements h {

    /* renamed from: a  reason: collision with root package name */
    private final h f22248a;

    /* renamed from: b  reason: collision with root package name */
    private final PriorityTaskManager f22249b;

    /* renamed from: c  reason: collision with root package name */
    private final int f22250c;

    public s(h hVar, PriorityTaskManager priorityTaskManager, int i) {
        this.f22248a = (h) a.b(hVar);
        this.f22249b = (PriorityTaskManager) a.b(priorityTaskManager);
        this.f22250c = i;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        this.f22249b.a(this.f22250c);
        return this.f22248a.a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws IOException {
        this.f22249b.a(this.f22250c);
        return this.f22248a.a(jVar);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.f22248a.a();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void a(v vVar) {
        a.b(vVar);
        this.f22248a.a(vVar);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Map<String, List<String>> b() {
        return this.f22248a.b();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws IOException {
        this.f22248a.c();
    }
}
