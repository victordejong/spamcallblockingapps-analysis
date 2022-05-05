package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Metadata;
import kotlin.ranges.IntRange;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010!\n��\n\u0002\u0010\b\n\u0002\b\u0007\u001a#\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\u0004\b\u0002\u0010\u0003\u001a%\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003\u001a\u001f\u0010\n\u001a\u00020\u0006*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\t\u001a\u001f\u0010\f\u001a\u00020\u0006*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\t¨\u0006\r"}, d2 = {"T", "", "asReversed", "(Ljava/util/List;)Ljava/util/List;", "", "asReversedMutable", "", FirebaseAnalytics.Param.INDEX, "reverseElementIndex$CollectionsKt__ReversedViewsKt", "(Ljava/util/List;I)I", "reverseElementIndex", "reversePositionIndex$CollectionsKt__ReversedViewsKt", "reversePositionIndex", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt__ReversedViewsKt.class */
class CollectionsKt__ReversedViewsKt extends CollectionsKt__MutableCollectionsKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public static final int m2156A(List<?> list, int i) {
        int size = list.size();
        if (i >= 0 && size >= i) {
            return list.size() - i;
        }
        throw new IndexOutOfBoundsException("Position index " + i + " must be in range [" + new IntRange(0, list.size()) + "].");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public static final int m2153z(List<?> list, int i) {
        int h;
        int h2;
        int h3;
        h = CollectionsKt__CollectionsKt.m2173h(list);
        if (i < 0 || h < i) {
            StringBuilder sb = new StringBuilder();
            sb.append("Element index ");
            sb.append(i);
            sb.append(" must be in range [");
            h2 = CollectionsKt__CollectionsKt.m2173h(list);
            sb.append(new IntRange(0, h2));
            sb.append("].");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        h3 = CollectionsKt__CollectionsKt.m2173h(list);
        return h3 - i;
    }
}
