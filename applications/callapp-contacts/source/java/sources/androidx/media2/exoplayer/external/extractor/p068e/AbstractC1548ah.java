package androidx.media2.exoplayer.external.extractor.p068e;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.ah */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah.class */
public interface AbstractC1548ah {

    /* renamed from: androidx.media2.exoplayer.external.extractor.e.ah$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah$a.class */
    public static final class C1549a {

        /* renamed from: a */
        public final String f5984a;

        /* renamed from: b */
        public final int f5985b;

        /* renamed from: c */
        public final byte[] f5986c;

        public C1549a(String str, int i, byte[] bArr) {
            this.f5984a = str;
            this.f5985b = i;
            this.f5986c = bArr;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.e.ah$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah$b.class */
    public static final class C1550b {

        /* renamed from: a */
        public final int f5987a;

        /* renamed from: b */
        public final String f5988b;

        /* renamed from: c */
        public final List<C1549a> f5989c;

        /* renamed from: d */
        public final byte[] f5990d;

        public C1550b(int i, String str, List<C1549a> list, byte[] bArr) {
            this.f5987a = i;
            this.f5988b = str;
            this.f5989c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f5990d = bArr;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.e.ah$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah$c.class */
    public interface AbstractC1551c {
        /* renamed from: a */
        SparseArray<AbstractC1548ah> mo42676a();

        /* renamed from: a */
        AbstractC1548ah mo42674a(int i, C1550b c1550b);
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.e.ah$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah$d.class */
    public static final class C1552d {

        /* renamed from: a */
        private final String f5991a;

        /* renamed from: b */
        private final int f5992b;

        /* renamed from: c */
        private final int f5993c;

        /* renamed from: d */
        private int f5994d;

        /* renamed from: e */
        private String f5995e;

        public C1552d(int i, int i2) {
            this(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, i2);
        }

        public C1552d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(12);
                sb.append(i);
                sb.append("/");
                str = sb.toString();
            } else {
                str = "";
            }
            this.f5991a = str;
            this.f5992b = i2;
            this.f5993c = i3;
            this.f5994d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        /* renamed from: d */
        private void m42705d() {
            if (this.f5994d != Integer.MIN_VALUE) {
                return;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        /* renamed from: a */
        public final void m42708a() {
            int i = this.f5994d;
            int i2 = i == Integer.MIN_VALUE ? this.f5992b : i + this.f5993c;
            this.f5994d = i2;
            String str = this.f5991a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11);
            sb.append(str);
            sb.append(i2);
            this.f5995e = sb.toString();
        }

        /* renamed from: b */
        public final int m42707b() {
            m42705d();
            return this.f5994d;
        }

        /* renamed from: c */
        public final String m42706c() {
            m42705d();
            return this.f5995e;
        }
    }

    /* renamed from: a */
    void mo42646a();

    /* renamed from: a */
    void mo42644a(C2018p c2018p, int i) throws ParserException;

    /* renamed from: a */
    void mo42642a(C2030z c2030z, AbstractC1601i abstractC1601i, C1552d c1552d);
}
