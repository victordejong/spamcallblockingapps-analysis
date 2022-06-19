package com.google.android.exoplayer2.extractor.p329c;

import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C11149w;
/* renamed from: com.google.android.exoplayer2.extractor.c.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/c/d.class */
public final class C10995d implements AbstractC11130j {

    /* renamed from: b */
    private final long f35589b;

    /* renamed from: c */
    private final AbstractC11130j f35590c;

    public C10995d(long j, AbstractC11130j abstractC11130j) {
        this.f35589b = j;
        this.f35590c = abstractC11130j;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11130j
    /* renamed from: a */
    public final AbstractC11150x mo20905a(int i, int i2) {
        return this.f35590c.mo20905a(i, i2);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11130j
    /* renamed from: a */
    public final void mo20907a() {
        this.f35590c.mo20907a();
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11130j
    /* renamed from: a */
    public final void mo20901a(final AbstractC11146v abstractC11146v) {
        this.f35590c.mo20901a(new AbstractC11146v() { // from class: com.google.android.exoplayer2.extractor.c.d.1
            @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
            /* renamed from: a */
            public final AbstractC11146v.C11147a mo21388a(long j) {
                AbstractC11146v.C11147a mo21388a = abstractC11146v.mo21388a(j);
                return new AbstractC11146v.C11147a(new C11149w(mo21388a.f36502a.f36507b, mo21388a.f36502a.f36508c + C10995d.this.f35589b), new C11149w(mo21388a.f36503b.f36507b, mo21388a.f36503b.f36508c + C10995d.this.f35589b));
            }

            @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
            /* renamed from: a */
            public final boolean mo21389a() {
                return abstractC11146v.mo21389a();
            }

            @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
            /* renamed from: b */
            public final long mo21387b() {
                return abstractC11146v.mo21387b();
            }
        });
    }
}
