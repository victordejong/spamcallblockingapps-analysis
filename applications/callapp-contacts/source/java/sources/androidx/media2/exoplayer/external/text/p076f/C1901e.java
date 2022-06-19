package androidx.media2.exoplayer.external.text.p076f;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C1996ac;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: androidx.media2.exoplayer.external.text.f.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/e.class */
final class C1901e implements AbstractC1886d {

    /* renamed from: a */
    private final C1898b f7645a;

    /* renamed from: b */
    private final long[] f7646b;

    /* renamed from: c */
    private final Map<String, C1900d> f7647c;

    /* renamed from: d */
    private final Map<String, C1899c> f7648d;

    /* renamed from: e */
    private final Map<String, String> f7649e;

    public C1901e(C1898b c1898b, Map<String, C1900d> map, Map<String, C1899c> map2, Map<String, String> map3) {
        this.f7645a = c1898b;
        this.f7648d = map2;
        this.f7649e = map3;
        this.f7647c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f7646b = c1898b.m41936a();
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a */
    public final int mo41884a(long j) {
        int m41644a = C1996ac.m41644a(this.f7646b, j, false, false);
        if (m41644a < this.f7646b.length) {
            return m41644a;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a_ */
    public final long mo41883a_(int i) {
        return this.f7646b[i];
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final int mo41882b() {
        return this.f7646b.length;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final List<C1856a> mo41881b(long j) {
        C1898b c1898b = this.f7645a;
        Map<String, C1900d> map = this.f7647c;
        Map<String, C1899c> map2 = this.f7648d;
        Map<String, String> map3 = this.f7649e;
        ArrayList<Pair> arrayList = new ArrayList();
        c1898b.m41933a(j, c1898b.f7616g, arrayList);
        TreeMap treeMap = new TreeMap();
        c1898b.m41931a(j, false, c1898b.f7616g, treeMap);
        c1898b.m41932a(j, map, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                C1899c c1899c = map2.get(pair.first);
                arrayList2.add(new C1856a(decodeByteArray, c1899c.f7623b, 0, c1899c.f7624c, c1899c.f7626e, c1899c.f7627f, c1899c.f7628g));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            C1899c c1899c2 = map2.get(entry.getKey());
            arrayList2.add(new C1856a(C1898b.m41930a((SpannableStringBuilder) entry.getValue()), (Layout.Alignment) null, c1899c2.f7624c, c1899c2.f7625d, c1899c2.f7626e, c1899c2.f7623b, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, c1899c2.f7627f, c1899c2.f7629h, c1899c2.f7630i));
        }
        return arrayList2;
    }
}
