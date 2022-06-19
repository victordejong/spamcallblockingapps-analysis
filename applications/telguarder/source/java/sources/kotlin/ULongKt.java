package kotlin;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��,\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\n\n\u0002\b\u0002\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0003\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u0004H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0005\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u0006H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0007\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\bH\u0087\bø\u0001��¢\u0006\u0002\u0010\t\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\nH\u0087\bø\u0001��¢\u0006\u0002\u0010\u000b\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\fH\u0087\bø\u0001��¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m400d2 = {"toULong", "Lkotlin/ULong;", "", "(B)J", "", "(D)J", "", "(F)J", "", "(I)J", "", "(J)J", "", "(S)J", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes2-dex2jar.jar:kotlin/ULongKt.class */
public final class ULongKt {
    private static final long toULong(byte b) {
        return ULong.m4328constructorimpl(b);
    }

    private static final long toULong(double d) {
        return UnsignedKt.doubleToULong(d);
    }

    private static final long toULong(float f) {
        return UnsignedKt.doubleToULong(f);
    }

    private static final long toULong(int i) {
        return ULong.m4328constructorimpl(i);
    }

    private static final long toULong(long j) {
        return ULong.m4328constructorimpl(j);
    }

    private static final long toULong(short s) {
        return ULong.m4328constructorimpl(s);
    }
}
