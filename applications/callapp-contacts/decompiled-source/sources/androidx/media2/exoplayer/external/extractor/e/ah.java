package androidx.media2.exoplayer.external.extractor.e;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah.class */
public interface ah {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f3172a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3173b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f3174c;

        public a(String str, int i, byte[] bArr) {
            this.f3172a = str;
            this.f3173b = i;
            this.f3174c = bArr;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3175a;

        /* renamed from: b  reason: collision with root package name */
        public final String f3176b;

        /* renamed from: c  reason: collision with root package name */
        public final List<a> f3177c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f3178d;

        public b(int i, String str, List<a> list, byte[] bArr) {
            this.f3175a = i;
            this.f3176b = str;
            this.f3177c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f3178d = bArr;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah$c.class */
    public interface c {
        SparseArray<ah> a();

        ah a(int i, b bVar);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ah$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f3179a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3180b;

        /* renamed from: c  reason: collision with root package name */
        private final int f3181c;

        /* renamed from: d  reason: collision with root package name */
        private int f3182d;
        private String e;

        public d(int i, int i2) {
            this(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, i2);
        }

        public d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(12);
                sb.append(i);
                sb.append("/");
                str = sb.toString();
            } else {
                str = "";
            }
            this.f3179a = str;
            this.f3180b = i2;
            this.f3181c = i3;
            this.f3182d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        private void d() {
            if (this.f3182d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public final void a() {
            int i = this.f3182d;
            int i2 = i == Integer.MIN_VALUE ? this.f3180b : i + this.f3181c;
            this.f3182d = i2;
            String str = this.f3179a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11);
            sb.append(str);
            sb.append(i2);
            this.e = sb.toString();
        }

        public final int b() {
            d();
            return this.f3182d;
        }

        public final String c() {
            d();
            return this.e;
        }
    }

    void a();

    void a(p pVar, int i) throws ParserException;

    void a(z zVar, i iVar, d dVar);
}
