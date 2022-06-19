package com.linkedin.android.litr;

import android.media.MediaFormat;
import com.linkedin.android.litr.p460b.AbstractC16614a;
import com.linkedin.android.litr.p460b.AbstractC16615b;
import com.linkedin.android.litr.p466d.AbstractC16635d;
import com.linkedin.android.litr.p466d.AbstractC16636e;
import com.linkedin.android.litr.p467e.AbstractC16641d;
/* renamed from: com.linkedin.android.litr.c */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/c.class */
public final class C16619c {

    /* renamed from: a */
    public final AbstractC16635d f58480a;

    /* renamed from: b */
    final AbstractC16614a f58481b;

    /* renamed from: c */
    final AbstractC16641d f58482c;

    /* renamed from: d */
    final AbstractC16615b f58483d;

    /* renamed from: e */
    final AbstractC16636e f58484e;

    /* renamed from: f */
    public final MediaFormat f58485f;

    /* renamed from: g */
    public final int f58486g;

    /* renamed from: h */
    final int f58487h;

    /* renamed from: com.linkedin.android.litr.c$a */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/c$a.class */
    public static final class C16621a {

        /* renamed from: a */
        public AbstractC16614a f58488a;

        /* renamed from: b */
        public AbstractC16641d f58489b;

        /* renamed from: c */
        public AbstractC16615b f58490c;

        /* renamed from: d */
        public MediaFormat f58491d;

        /* renamed from: e */
        public int f58492e;

        /* renamed from: f */
        private final AbstractC16635d f58493f;

        /* renamed from: g */
        private final int f58494g;

        /* renamed from: h */
        private final AbstractC16636e f58495h;

        public C16621a(AbstractC16635d abstractC16635d, int i, AbstractC16636e abstractC16636e) {
            this.f58493f = abstractC16635d;
            this.f58494g = i;
            this.f58495h = abstractC16636e;
            this.f58492e = i;
        }

        /* renamed from: a */
        public final C16619c m6876a() {
            return new C16619c(this.f58493f, this.f58488a, this.f58489b, this.f58490c, this.f58495h, this.f58491d, this.f58494g, this.f58492e);
        }
    }

    private C16619c(AbstractC16635d abstractC16635d, AbstractC16614a abstractC16614a, AbstractC16641d abstractC16641d, AbstractC16615b abstractC16615b, AbstractC16636e abstractC16636e, MediaFormat mediaFormat, int i, int i2) {
        this.f58480a = abstractC16635d;
        this.f58481b = abstractC16614a;
        this.f58482c = abstractC16641d;
        this.f58483d = abstractC16615b;
        this.f58484e = abstractC16636e;
        this.f58485f = mediaFormat;
        this.f58486g = i;
        this.f58487h = i2;
    }
}
