package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.extractor.flv.C5056c;
import com.google.android.exoplayer2.extractor.mp4.C5076g;
import com.google.android.exoplayer2.extractor.mp4.C5080i;
import com.google.android.exoplayer2.p243c1.p244a0.C4879e;
import com.google.android.exoplayer2.p243c1.p245b0.C4891e;
import com.google.android.exoplayer2.p243c1.p246c0.C4903d;
import com.google.android.exoplayer2.p243c1.p247d0.C4926f;
import com.google.android.exoplayer2.p243c1.p247d0.C4929g0;
import com.google.android.exoplayer2.p243c1.p247d0.C4932h;
import com.google.android.exoplayer2.p243c1.p247d0.C4940j;
import com.google.android.exoplayer2.p243c1.p247d0.C4964z;
import com.google.android.exoplayer2.p243c1.p248e0.C4968b;
import com.google.android.exoplayer2.p243c1.p249y.C5005b;
import com.google.android.exoplayer2.p243c1.p250z.C5011d;
import java.lang.reflect.Constructor;
/* renamed from: com.google.android.exoplayer2.c1.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/f.class */
public final class C4976f implements AbstractC4982l {

    /* renamed from: a */
    private static final Constructor<? extends AbstractC4978h> f15485a;

    /* renamed from: b */
    private boolean f15486b;

    /* renamed from: c */
    private int f15487c;

    /* renamed from: d */
    private int f15488d;

    /* renamed from: e */
    private int f15489e;

    /* renamed from: f */
    private int f15490f;

    /* renamed from: g */
    private int f15491g;

    /* renamed from: h */
    private int f15492h;

    /* renamed from: i */
    private int f15493i = 1;

    /* renamed from: j */
    private int f15494j;

    static {
        Constructor<? extends AbstractC4978h> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(AbstractC4978h.class).getConstructor(new Class[0]);
            }
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f15485a = constructor;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4982l
    /* renamed from: a */
    public AbstractC4978h[] mo20721a() {
        AbstractC4978h[] abstractC4978hArr;
        synchronized (this) {
            abstractC4978hArr = new AbstractC4978h[14];
            abstractC4978hArr[0] = new C4879e(this.f15489e);
            abstractC4978hArr[1] = new C5076g(this.f15491g);
            abstractC4978hArr[2] = new C5080i(this.f15490f);
            abstractC4978hArr[3] = new C4891e(this.f15492h | (this.f15486b ? 1 : 0));
            abstractC4978hArr[4] = new C4940j(this.f15487c | (this.f15486b ? 1 : 0));
            abstractC4978hArr[5] = new C4926f();
            abstractC4978hArr[6] = new C4929g0(this.f15493i, this.f15494j);
            abstractC4978hArr[7] = new C5056c();
            abstractC4978hArr[8] = new C4903d();
            abstractC4978hArr[9] = new C4964z();
            abstractC4978hArr[10] = new C4968b();
            abstractC4978hArr[11] = new C5005b((this.f15486b ? 1 : 0) | this.f15488d);
            abstractC4978hArr[12] = new C4932h();
            Constructor<? extends AbstractC4978h> constructor = f15485a;
            if (constructor != null) {
                try {
                    abstractC4978hArr[13] = constructor.newInstance(new Object[0]);
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            } else {
                abstractC4978hArr[13] = new C5011d();
            }
        }
        return abstractC4978hArr;
    }
}
