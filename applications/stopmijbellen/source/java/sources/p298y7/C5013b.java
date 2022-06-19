package p298y7;

import java.lang.ref.SoftReference;
import java.util.Objects;
import p255u7.C4544f;
/* renamed from: y7.b */
/* loaded from: classes2-dex2jar.jar:y7/b.class */
public class C5013b extends C4544f<String, C5012a> {

    /* renamed from: h */
    public C5014c<String, C5012a> f15268h = new C5014c<>();

    public C5013b(int i) {
        super(i);
    }

    @Override // p255u7.C4544f
    /* renamed from: a */
    public void mo138a(boolean z, String str, C5012a c5012a, C5012a c5012a2) {
        SoftReference<Object> put;
        String str2 = str;
        C5012a c5012a3 = c5012a;
        if (!z || (put = this.f15268h.f15269a.put(str2, new SoftReference<>(c5012a3))) == null) {
            return;
        }
        put.get();
    }

    @Override // p255u7.C4544f
    /* renamed from: e */
    public long mo137e(String str, C5012a c5012a) {
        Objects.requireNonNull(c5012a);
        return 0;
    }
}
