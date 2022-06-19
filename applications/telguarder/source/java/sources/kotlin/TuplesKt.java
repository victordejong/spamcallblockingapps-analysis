package kotlin;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n��\u001a2\u0010��\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u0002H\u00022\u0006\u0010\u0004\u001a\u0002H\u0003H\u0086\u0004¢\u0006\u0002\u0010\u0005\u001a\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b��\u0010\b*\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b0\u0001\u001a(\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b��\u0010\b*\u0014\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b0\t¨\u0006\n"}, m400d2 = {"to", "Lkotlin/Pair;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "that", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;", "toList", "", "T", "Lkotlin/Triple;", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes2-dex2jar.jar:kotlin/TuplesKt.class */
public final class TuplesKt {
    /* renamed from: to */
    public static final <A, B> Pair<A, B> m393to(A a, B b) {
        return new Pair<>(a, b);
    }

    public static final <T> List<T> toList(Pair<? extends T, ? extends T> toList) {
        Intrinsics.checkNotNullParameter(toList, "$this$toList");
        return CollectionsKt.listOf(toList.getFirst(), toList.getSecond());
    }

    public static final <T> List<T> toList(Triple<? extends T, ? extends T, ? extends T> toList) {
        Intrinsics.checkNotNullParameter(toList, "$this$toList");
        return CollectionsKt.listOf(toList.getFirst(), toList.getSecond(), toList.getThird());
    }
}
