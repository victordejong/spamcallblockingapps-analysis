package okio.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.SegmentedByteString;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a+\u0010\u0005\u001a\u00020\u0001*\u00020��2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H��¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001e\u0010\u000b\u001a\u00020\n*\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0080\b¢\u0006\u0004\b\u000b\u0010\f\u001a\u0014\u0010\r\u001a\u00020\u0001*\u00020\u0007H\u0080\b¢\u0006\u0004\b\r\u0010\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0001*\u00020\u0007H\u0080\b¢\u0006\u0004\b\u000f\u0010\u000e\u001a\u001c\u0010\u0012\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a4\u0010\u0018\u001a\u00020\n*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a4\u0010\u0018\u001a\u00020\n*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u0018\u0010\u001b\u001a$\u0010\u001e\u001a\u00020\u001a*\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u0014\u0010 \u001a\u00020\u0015*\u00020\u0007H\u0080\b¢\u0006\u0004\b \u0010!\u001a,\u0010%\u001a\u00020$*\u00020\u00072\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b%\u0010&\u001ad\u0010,\u001a\u00020$*\u00020\u00072K\u0010+\u001aG\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(*\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020$0'H\u0080\bø\u0001��¢\u0006\u0004\b,\u0010-\u001aq\u0010,\u001a\u00020$*\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u00012K\u0010+\u001aG\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(*\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020$0'H\u0082\b¢\u0006\u0004\b,\u0010.\u001a\u001b\u0010/\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0001H��¢\u0006\u0004\b/\u00100\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00061"}, d2 = {"", "", FirebaseAnalytics.Param.VALUE, "fromIndex", "toIndex", "binarySearch", "([IIII)I", "Lokio/SegmentedByteString;", "", "other", "", "commonEquals", "(Lokio/SegmentedByteString;Ljava/lang/Object;)Z", "commonGetSize", "(Lokio/SegmentedByteString;)I", "commonHashCode", "pos", "", "commonInternalGet", "(Lokio/SegmentedByteString;I)B", "offset", "", "otherOffset", "byteCount", "commonRangeEquals", "(Lokio/SegmentedByteString;I[BII)Z", "Lokio/ByteString;", "(Lokio/SegmentedByteString;ILokio/ByteString;II)Z", "beginIndex", "endIndex", "commonSubstring", "(Lokio/SegmentedByteString;II)Lokio/ByteString;", "commonToByteArray", "(Lokio/SegmentedByteString;)[B", "Lokio/Buffer;", "buffer", "", "commonWrite", "(Lokio/SegmentedByteString;Lokio/Buffer;II)V", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "data", "action", "forEachSegment", "(Lokio/SegmentedByteString;Lkotlin/Function3;)V", "(Lokio/SegmentedByteString;IILkotlin/Function3;)V", "segment", "(Lokio/SegmentedByteString;I)I", "okio"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/internal/SegmentedByteStringKt.class */
public final class SegmentedByteStringKt {
    /* renamed from: a */
    public static final int m7a(@NotNull int[] binarySearch, int i, int i2, int i3) {
        Intrinsics.m1830e(binarySearch, "$this$binarySearch");
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int i6 = binarySearch[i5];
            if (i6 < i) {
                i2 = i5 + 1;
            } else if (i6 <= i) {
                return i5;
            } else {
                i4 = i5 - 1;
            }
        }
        return (-i2) - 1;
    }

    /* renamed from: b */
    public static final int m6b(@NotNull SegmentedByteString segment, int i) {
        Intrinsics.m1830e(segment, "$this$segment");
        int a = m7a(segment.m47H(), i + 1, 0, segment.m46I().length);
        if (a < 0) {
            a ^= -1;
        }
        return a;
    }
}
