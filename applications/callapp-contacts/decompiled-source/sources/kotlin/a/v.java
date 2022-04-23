package kotlin.a;

import java.util.List;
import kotlin.Metadata;
import kotlin.f.c;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010 \n��\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u001c\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001\u001a#\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007¢\u0006\u0002\b\u0004\u001a\u001d\u0010\u0005\u001a\u00020\u0006*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0002\b\b\u001a\u001d\u0010\t\u001a\u00020\u0006*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"asReversed", "", "T", "", "asReversedMutable", "reverseElementIndex", "", "index", "reverseElementIndex$CollectionsKt__ReversedViewsKt", "reversePositionIndex", "reversePositionIndex$CollectionsKt__ReversedViewsKt", "kotlin-stdlib"}, k = 5, mv = {1, 4, 1}, xi = 1, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes5-dex2jar.jar:kotlin/a/v.class */
public class v extends u {
    public static final /* synthetic */ int a(List list, int i) {
        int a2 = n.a(list);
        if (i >= 0 && a2 >= i) {
            return n.a(list) - i;
        }
        throw new IndexOutOfBoundsException("Element index " + i + " must be in range [" + new c(0, n.a(list)) + "].");
    }
}
