package okio.internal;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import okio.Utf8;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0016\n��\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010��\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, m400d2 = {"commonAsUtf8ToByteArray", "", "", "commonToUtf8String", "beginIndex", "", "endIndex", "okio"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/internal/_Utf8Kt.class */
public final class _Utf8Kt {
    public static final byte[] commonAsUtf8ToByteArray(String commonAsUtf8ToByteArray) {
        char charAt;
        int i;
        int i2;
        char charAt2;
        Intrinsics.checkNotNullParameter(commonAsUtf8ToByteArray, "$this$commonAsUtf8ToByteArray");
        byte[] bArr = new byte[commonAsUtf8ToByteArray.length() * 4];
        int length = commonAsUtf8ToByteArray.length();
        for (int i3 = 0; i3 < length; i3++) {
            if (Intrinsics.compare((int) commonAsUtf8ToByteArray.charAt(i3), 128) >= 0) {
                int length2 = commonAsUtf8ToByteArray.length();
                int i4 = i3;
                int i5 = i3;
                while (i5 < length2) {
                    char charAt3 = commonAsUtf8ToByteArray.charAt(i5);
                    if (Intrinsics.compare((int) charAt3, 128) < 0) {
                        int i6 = i4 + 1;
                        bArr[i4] = (byte) charAt3;
                        i5++;
                        while (i5 < length2 && Intrinsics.compare((int) commonAsUtf8ToByteArray.charAt(i5), 128) < 0) {
                            bArr[i6] = (byte) commonAsUtf8ToByteArray.charAt(i5);
                            i5++;
                            i6++;
                        }
                        i4 = i6;
                    } else {
                        if (Intrinsics.compare((int) charAt3, 2048) < 0) {
                            byte b = (byte) ((charAt3 >> 6) | 192);
                            int i7 = i4 + 1;
                            bArr[i4] = b;
                            i = i7 + 1;
                            bArr[i7] = (byte) ((charAt3 & '?') | 128);
                        } else if (55296 > charAt3 || 57343 < charAt3) {
                            byte b2 = (byte) ((charAt3 >> '\f') | 224);
                            int i8 = i4 + 1;
                            bArr[i4] = b2;
                            byte b3 = (byte) (((charAt3 >> 6) & 63) | 128);
                            int i9 = i8 + 1;
                            bArr[i8] = b3;
                            i = i9 + 1;
                            bArr[i9] = (byte) ((charAt3 & '?') | 128);
                        } else if (Intrinsics.compare((int) charAt3, (int) CharCompanionObject.MAX_HIGH_SURROGATE) > 0 || length2 <= (i2 = i5 + 1) || 56320 > (charAt2 = commonAsUtf8ToByteArray.charAt(i2)) || 57343 < charAt2) {
                            i = i4 + 1;
                            bArr[i4] = (byte) 63;
                        } else {
                            int charAt4 = ((charAt3 << '\n') + commonAsUtf8ToByteArray.charAt(i2)) - 56613888;
                            byte b4 = (byte) ((charAt4 >> 18) | 240);
                            int i10 = i4 + 1;
                            bArr[i4] = b4;
                            byte b5 = (byte) (((charAt4 >> 12) & 63) | 128);
                            int i11 = i10 + 1;
                            bArr[i10] = b5;
                            byte b6 = (byte) (((charAt4 >> 6) & 63) | 128);
                            int i12 = i11 + 1;
                            bArr[i11] = b6;
                            i = i12 + 1;
                            bArr[i12] = (byte) ((charAt4 & 63) | 128);
                            i5 += 2;
                            i4 = i;
                        }
                        i5++;
                        i4 = i;
                    }
                }
                byte[] copyOf = Arrays.copyOf(bArr, i4);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                return copyOf;
            }
            bArr[i3] = (byte) charAt;
        }
        byte[] copyOf2 = Arrays.copyOf(bArr, commonAsUtf8ToByteArray.length());
        Intrinsics.checkNotNullExpressionValue(copyOf2, "java.util.Arrays.copyOf(this, newSize)");
        return copyOf2;
    }

    public static final String commonToUtf8String(byte[] commonToUtf8String, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = i;
        Intrinsics.checkNotNullParameter(commonToUtf8String, "$this$commonToUtf8String");
        if (i8 < 0 || i2 > commonToUtf8String.length || i8 > i2) {
            throw new ArrayIndexOutOfBoundsException("size=" + commonToUtf8String.length + " beginIndex=" + i8 + " endIndex=" + i2);
        }
        char[] cArr = new char[i2 - i8];
        int i9 = 0;
        while (i8 < i2) {
            byte b = commonToUtf8String[i8];
            if (b >= 0) {
                cArr[i9] = (char) b;
                int i10 = i9 + 1;
                int i11 = i8 + 1;
                while (true) {
                    i8 = i11;
                    i3 = i10;
                    if (i11 >= i2) {
                        break;
                    }
                    i8 = i11;
                    i3 = i10;
                    if (commonToUtf8String[i11] < 0) {
                        break;
                    }
                    cArr[i10] = (char) commonToUtf8String[i11];
                    i11++;
                    i10++;
                }
            } else {
                if ((b >> 5) == -2) {
                    int i12 = i8 + 1;
                    if (i2 <= i12) {
                        cArr[i9] = (char) 65533;
                        i5 = i9 + 1;
                    } else {
                        byte b2 = commonToUtf8String[i8];
                        byte b3 = commonToUtf8String[i12];
                        if (!((b3 & 192) == 128)) {
                            cArr[i9] = (char) 65533;
                            i5 = i9 + 1;
                        } else {
                            if (((b3 ^ 3968) ^ (b2 << 6)) < 128) {
                                cArr[i9] = (char) 65533;
                                i5 = i9 + 1;
                            } else {
                                cArr[i9] = (char) i4;
                                i5 = i9 + 1;
                            }
                            Unit unit = Unit.INSTANCE;
                            i6 = 2;
                        }
                    }
                    Unit unit2 = Unit.INSTANCE;
                    i6 = 1;
                } else if ((b >> 4) == -2) {
                    int i13 = i8 + 2;
                    if (i2 <= i13) {
                        int i14 = i9 + 1;
                        cArr[i9] = (char) 65533;
                        Unit unit3 = Unit.INSTANCE;
                        int i15 = i8 + 1;
                        i5 = i14;
                        if (i2 > i15) {
                            i5 = i14;
                            if (!((commonToUtf8String[i15] & 192) == 128)) {
                                i5 = i14;
                            }
                            i6 = 2;
                        }
                        i6 = 1;
                    } else {
                        byte b4 = commonToUtf8String[i8];
                        byte b5 = commonToUtf8String[i8 + 1];
                        if (!((b5 & 192) == 128)) {
                            cArr[i9] = (char) 65533;
                            Unit unit4 = Unit.INSTANCE;
                            i5 = i9 + 1;
                            i6 = 1;
                        } else {
                            byte b6 = commonToUtf8String[i13];
                            if (!((b6 & 192) == 128)) {
                                cArr[i9] = (char) 65533;
                                Unit unit5 = Unit.INSTANCE;
                                i5 = i9 + 1;
                                i6 = 2;
                            } else {
                                int i16 = ((b6 ^ (-123008)) ^ (b5 << 6)) ^ (b4 << 12);
                                if (i16 < 2048) {
                                    cArr[i9] = (char) 65533;
                                    i5 = i9 + 1;
                                } else if (55296 <= i16 && 57343 >= i16) {
                                    cArr[i9] = (char) 65533;
                                    i5 = i9 + 1;
                                } else {
                                    cArr[i9] = (char) i16;
                                    i5 = i9 + 1;
                                }
                                Unit unit6 = Unit.INSTANCE;
                                i6 = 3;
                            }
                        }
                    }
                } else if ((b >> 3) == -2) {
                    int i17 = i8 + 3;
                    if (i2 <= i17) {
                        int i18 = i9 + 1;
                        cArr[i9] = (char) 65533;
                        Unit unit7 = Unit.INSTANCE;
                        int i19 = i8 + 1;
                        i9 = i18;
                        if (i2 > i19) {
                            if (!((commonToUtf8String[i19] & 192) == 128)) {
                                i9 = i18;
                            } else {
                                int i20 = i8 + 2;
                                i9 = i18;
                                if (i2 > i20) {
                                    i9 = i18;
                                    if (!((commonToUtf8String[i20] & 192) == 128)) {
                                        i9 = i18;
                                    }
                                    i7 = 3;
                                }
                                i7 = 2;
                            }
                        }
                        i7 = 1;
                    } else {
                        byte b7 = commonToUtf8String[i8];
                        byte b8 = commonToUtf8String[i8 + 1];
                        if (!((b8 & 192) == 128)) {
                            cArr[i9] = (char) 65533;
                            Unit unit8 = Unit.INSTANCE;
                            i9++;
                            i7 = 1;
                        } else {
                            byte b9 = commonToUtf8String[i8 + 2];
                            if (!((b9 & 192) == 128)) {
                                cArr[i9] = (char) 65533;
                                Unit unit9 = Unit.INSTANCE;
                                i9++;
                                i7 = 2;
                            } else {
                                byte b10 = commonToUtf8String[i17];
                                if (!((b10 & 192) == 128)) {
                                    cArr[i9] = (char) 65533;
                                    Unit unit10 = Unit.INSTANCE;
                                    i9++;
                                    i7 = 3;
                                } else {
                                    int i21 = (((b10 ^ 3678080) ^ (b9 << 6)) ^ (b8 << 12)) ^ (b7 << 18);
                                    if (i21 > 1114111) {
                                        cArr[i9] = (char) 65533;
                                        i9++;
                                    } else if (55296 <= i21 && 57343 >= i21) {
                                        cArr[i9] = (char) 65533;
                                        i9++;
                                    } else if (i21 < 65536) {
                                        cArr[i9] = (char) 65533;
                                        i9++;
                                    } else if (i21 != 65533) {
                                        char c = (char) ((i21 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                                        int i22 = i9 + 1;
                                        cArr[i9] = c;
                                        i9 = i22 + 1;
                                        cArr[i22] = (char) ((i21 & 1023) + 56320);
                                    } else {
                                        cArr[i9] = (char) 65533;
                                        i9++;
                                    }
                                    Unit unit11 = Unit.INSTANCE;
                                    i7 = 4;
                                }
                            }
                        }
                    }
                    i8 += i7;
                } else {
                    cArr[i9] = (char) 65533;
                    i8++;
                    i9++;
                }
                i8 += i6;
                i3 = i5;
            }
            i9 = i3;
        }
        return new String(cArr, 0, i9);
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        return commonToUtf8String(bArr, i, i2);
    }
}
