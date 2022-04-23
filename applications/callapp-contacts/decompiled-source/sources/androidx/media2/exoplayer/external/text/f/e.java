package androidx.media2.exoplayer.external.text.f;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.media2.exoplayer.external.text.a;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.util.ac;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/e.class */
final class e implements d {

    /* renamed from: a  reason: collision with root package name */
    private final b f3899a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f3900b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, d> f3901c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, c> f3902d;
    private final Map<String, String> e;

    public e(b bVar, Map<String, d> map, Map<String, c> map2, Map<String, String> map3) {
        this.f3899a = bVar;
        this.f3902d = map2;
        this.e = map3;
        this.f3901c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f3900b = bVar.a();
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int a(long j) {
        int a2 = ac.a(this.f3900b, j, false, false);
        if (a2 < this.f3900b.length) {
            return a2;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final long a_(int i) {
        return this.f3900b[i];
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int b() {
        return this.f3900b.length;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final List<a> b(long j) {
        b bVar = this.f3899a;
        Map<String, d> map = this.f3901c;
        Map<String, c> map2 = this.f3902d;
        Map<String, String> map3 = this.e;
        ArrayList<Pair> arrayList = new ArrayList();
        bVar.a(j, bVar.g, arrayList);
        TreeMap treeMap = new TreeMap();
        bVar.a(j, false, bVar.g, treeMap);
        bVar.a(j, map, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                c cVar = map2.get(pair.first);
                arrayList2.add(new a(decodeByteArray, cVar.f3892b, 0, cVar.f3893c, cVar.e, cVar.f, cVar.g));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            c cVar2 = map2.get(entry.getKey());
            arrayList2.add(new a(b.a((SpannableStringBuilder) entry.getValue()), (Layout.Alignment) null, cVar2.f3893c, cVar2.f3894d, cVar2.e, cVar2.f3892b, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, cVar2.f, cVar2.h, cVar2.i));
        }
        return arrayList2;
    }
}
