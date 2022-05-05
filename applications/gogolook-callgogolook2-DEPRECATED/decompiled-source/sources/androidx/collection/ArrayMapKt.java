package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14978j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a!\u0010��\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003H\u0086\b\u001aO\u0010��\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u00032*\u0010\u0004\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00060\u0005\"\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0006¢\u0006\u0002\u0010\u0007¨\u0006\b"}, m815d2 = {"arrayMapOf", "Landroidx/collection/ArrayMap;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "pairs", "", "Lkotlin/Pair;", "([Lkotlin/Pair;)Landroidx/collection/ArrayMap;", "collection-ktx"}, m814k = 2, m813mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:androidx/collection/ArrayMapKt.class */
public final class ArrayMapKt {
    public static final <K, V> ArrayMap<K, V> arrayMapOf() {
        return new ArrayMap<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> ArrayMap<K, V> arrayMapOf(C14978j<? extends K, ? extends V>... jVarArr) {
        C15149k.m377b(jVarArr, "pairs");
        ArrayMap<K, V> arrayMap = (ArrayMap<K, V>) new ArrayMap(jVarArr.length);
        for (C14978j<? extends K, ? extends V> jVar : jVarArr) {
            arrayMap.put(jVar.m659c(), jVar.m658d());
        }
        return arrayMap;
    }
}
