package com.google.android.exoplayer2.extractor.p334h;

import android.util.SparseArray;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11628u;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.extractor.h.ad */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad.class */
public interface AbstractC11079ad {

    /* renamed from: com.google.android.exoplayer2.extractor.h.ad$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad$a.class */
    public static final class C11080a {

        /* renamed from: a */
        public final String f36112a;

        /* renamed from: b */
        public final int f36113b;

        /* renamed from: c */
        public final byte[] f36114c;

        public C11080a(String str, int i, byte[] bArr) {
            this.f36112a = str;
            this.f36113b = i;
            this.f36114c = bArr;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.h.ad$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad$b.class */
    public static final class C11081b {

        /* renamed from: a */
        public final int f36115a;

        /* renamed from: b */
        public final String f36116b;

        /* renamed from: c */
        public final List<C11080a> f36117c;

        /* renamed from: d */
        public final byte[] f36118d;

        public C11081b(int i, String str, List<C11080a> list, byte[] bArr) {
            this.f36115a = i;
            this.f36116b = str;
            this.f36117c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f36118d = bArr;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.h.ad$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad$c.class */
    public interface AbstractC11082c {
        /* renamed from: a */
        SparseArray<AbstractC11079ad> mo21493a();

        /* renamed from: a */
        AbstractC11079ad mo21491a(int i, C11081b c11081b);
    }

    /* renamed from: com.google.android.exoplayer2.extractor.h.ad$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad$d.class */
    public static final class C11083d {

        /* renamed from: a */
        private final String f36119a;

        /* renamed from: b */
        private final int f36120b;

        /* renamed from: c */
        private final int f36121c;

        /* renamed from: d */
        private int f36122d;

        /* renamed from: e */
        private String f36123e;

        public C11083d(int i, int i2) {
            this(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, i2);
        }

        public C11083d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + "/";
            } else {
                str = "";
            }
            this.f36119a = str;
            this.f36120b = i2;
            this.f36121c = i3;
            this.f36122d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f36123e = "";
        }

        /* renamed from: d */
        private void m21525d() {
            if (this.f36122d != Integer.MIN_VALUE) {
                return;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        /* renamed from: a */
        public final void m21528a() {
            int i = this.f36122d;
            this.f36122d = i == Integer.MIN_VALUE ? this.f36120b : i + this.f36121c;
            this.f36123e = this.f36119a + this.f36122d;
        }

        /* renamed from: b */
        public final int m21527b() {
            m21525d();
            return this.f36122d;
        }

        /* renamed from: c */
        public final String m21526c() {
            m21525d();
            return this.f36123e;
        }
    }

    /* renamed from: a */
    void mo21445a();

    /* renamed from: a */
    void mo21444a(C11597ad c11597ad, AbstractC11130j abstractC11130j, C11083d c11083d);

    /* renamed from: a */
    void mo21443a(C11628u c11628u, int i) throws ParserException;
}
