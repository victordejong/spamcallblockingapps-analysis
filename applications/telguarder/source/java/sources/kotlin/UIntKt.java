package kotlin;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��,\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\n\n\u0002\b\u0002\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0003\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u0004H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0005\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u0006H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0007\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\bH\u0087\bø\u0001��¢\u0006\u0002\u0010\t\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\nH\u0087\bø\u0001��¢\u0006\u0002\u0010\u000b\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\fH\u0087\bø\u0001��¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m400d2 = {"toUInt", "Lkotlin/UInt;", "", "(B)I", "", "(D)I", "", "(F)I", "", "(I)I", "", "(J)I", "", "(S)I", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes2-dex2jar.jar:kotlin/UIntKt.class */
public final class UIntKt {
    private static final int toUInt(byte b) {
        return UInt.m4257constructorimpl(b);
    }

    private static final int toUInt(double d) {
        return UnsignedKt.doubleToUInt(d);
    }

    private static final int toUInt(float f) {
        return UnsignedKt.doubleToUInt(f);
    }

    private static final int toUInt(int i) {
        return UInt.m4257constructorimpl(i);
    }

    private static final int toUInt(long j) {
        return UInt.m4257constructorimpl((int) j);
    }

    private static final int toUInt(short s) {
        return UInt.m4257constructorimpl(s);
    }
}
