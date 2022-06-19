package com.danikula.videocache.p227q;

import java.io.File;
/* renamed from: com.danikula.videocache.q.g */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/q/g.class */
public class C4454g extends AbstractC4451e {

    /* renamed from: c */
    private final long f13578c;

    public C4454g(long j) {
        if (j > 0) {
            this.f13578c = j;
            return;
        }
        throw new IllegalArgumentException("Max size must be positive number!");
    }

    @Override // com.danikula.videocache.p227q.AbstractC4451e
    /* renamed from: b */
    protected boolean mo22427b(File file, long j, int i) {
        return j <= this.f13578c;
    }
}
