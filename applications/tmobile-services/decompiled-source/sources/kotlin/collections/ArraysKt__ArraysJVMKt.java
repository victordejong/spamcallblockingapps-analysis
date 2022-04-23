package kotlin.collections;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\u001a1\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u00012\u0006\u0010\u0004\u001a\u00020\u0003H��¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0001¢\u0006\u0004\b\t\u0010\n\u001a#\u0010\r\u001a\u00020\u0003\"\u0004\b��\u0010��*\f\u0012\u0006\b\u0001\u0012\u00028��\u0018\u00010\u0001H\u0001¢\u0006\u0004\b\u000b\u0010\f\u001a.\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0001\"\u0006\b��\u0010��\u0018\u0001*\f\u0012\u0006\b\u0001\u0012\u00028��\u0018\u00010\u0001H\u0086\b¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001c\u0010\u0014\u001a\u00020\u0013*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b\u0014\u0010\u0015\u001a(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0006\b��\u0010��\u0018\u0001*\b\u0012\u0004\u0012\u00028��0\u0016H\u0086\b¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"T", "", Name.REFER, "", "size", "arrayOfNulls", "([Ljava/lang/Object;I)[Ljava/lang/Object;", "toIndex", "", "copyOfRangeToIndexCheck", "(II)V", "contentDeepHashCode", "([Ljava/lang/Object;)I", "contentDeepHashCodeImpl", "orEmpty", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "Ljava/nio/charset/Charset;", "charset", "", "toString", "([BLjava/nio/charset/Charset;)Ljava/lang/String;", "", "toTypedArray", "(Ljava/util/Collection;)[Ljava/lang/Object;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/ArraysKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ArraysKt__ArraysJVMKt.class */
class ArraysKt__ArraysJVMKt {
    @SinceKotlin
    /* renamed from: a */
    public static final void m2305a(int i, int i2) {
        if (i > i2) {
            throw new IndexOutOfBoundsException("toIndex (" + i + ") is greater than size (" + i2 + ").");
        }
    }
}
