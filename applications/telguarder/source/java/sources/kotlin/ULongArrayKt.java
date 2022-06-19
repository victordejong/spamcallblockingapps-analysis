package kotlin;

import com.facebook.share.internal.MessengerShareContentUtility;
import kotlin.jvm.functions.Function1;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001a\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a0\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0002\u0010\u0007\u001a\u001f\u0010\b\u001a\u00020\u00012\n\u0010\t\u001a\u00020\u0001\"\u00020\u0006H\u0087\bø\u0001��¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006\f"}, m400d2 = {"ULongArray", "Lkotlin/ULongArray;", "size", "", "init", "Lkotlin/Function1;", "Lkotlin/ULong;", "(ILkotlin/jvm/functions/Function1;)[J", "ulongArrayOf", MessengerShareContentUtility.ELEMENTS, "ulongArrayOf-QwZRm1k", "([J)[J", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes2-dex2jar.jar:kotlin/ULongArrayKt.class */
public final class ULongArrayKt {
    private static final long[] ULongArray(int i, Function1<? super Integer, ULong> function1) {
        long[] jArr = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = function1.invoke(Integer.valueOf(i2)).m4371unboximpl();
        }
        return ULongArray.m4374constructorimpl(jArr);
    }

    /* renamed from: ulongArrayOf-QwZRm1k */
    private static final long[] m4390ulongArrayOfQwZRm1k(long... jArr) {
        return jArr;
    }
}
