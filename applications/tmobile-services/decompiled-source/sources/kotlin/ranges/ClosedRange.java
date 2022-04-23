package kotlin.ranges;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.Comparable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\n\bf\u0018��*\u000e\b��\u0010\u0002*\b\u0012\u0004\u0012\u00028��0\u00012\u00020\u0003J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\f\u001a\u00028��8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00028��8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlin/ranges/ClosedRange;", "", "T", "Lkotlin/Any;", FirebaseAnalytics.Param.VALUE, "", "contains", "(Ljava/lang/Comparable;)Z", "isEmpty", "()Z", "getEndInclusive", "()Ljava/lang/Comparable;", "endInclusive", "getStart", "start", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/ClosedRange.class */
public interface ClosedRange<T extends Comparable<? super T>> {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/ClosedRange$DefaultImpls.class */
    public static final class DefaultImpls {
        /* renamed from: a */
        public static <T extends Comparable<? super T>> boolean m1740a(@NotNull ClosedRange<T> closedRange) {
            return closedRange.mo1695c().compareTo(closedRange.mo1694e()) > 0;
        }
    }

    @NotNull
    /* renamed from: c */
    T mo1695c();

    @NotNull
    /* renamed from: e */
    T mo1694e();
}
