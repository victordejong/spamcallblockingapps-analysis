package com.google.android.gms.common.internal.safeparcel;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import androidx.annotation.RecentlyNonNull;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelWriter.class */
public class SafeParcelWriter {
    private SafeParcelWriter() {
    }

    public static int beginObjectHeader(@RecentlyNonNull Parcel parcel) {
        return zzb(parcel, 20293);
    }

    public static void finishObjectHeader(@RecentlyNonNull Parcel parcel, int i) {
        zzc(parcel, i);
    }

    public static void writeBigDecimal(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull BigDecimal bigDecimal, boolean z) {
        if (bigDecimal == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
        parcel.writeInt(bigDecimal.scale());
        zzc(parcel, zzb);
    }

    public static void writeBigDecimalArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull BigDecimal[] bigDecimalArr, boolean z) {
        if (bigDecimalArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int length = bigDecimalArr.length;
        parcel.writeInt(length);
        for (int i2 = 0; i2 < length; i2++) {
            parcel.writeByteArray(bigDecimalArr[i2].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i2].scale());
        }
        zzc(parcel, zzb);
    }

    public static void writeBigInteger(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull BigInteger bigInteger, boolean z) {
        if (bigInteger == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeByteArray(bigInteger.toByteArray());
        zzc(parcel, zzb);
    }

    public static void writeBigIntegerArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull BigInteger[] bigIntegerArr, boolean z) {
        if (bigIntegerArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeInt(bigIntegerArr.length);
        for (BigInteger bigInteger : bigIntegerArr) {
            parcel.writeByteArray(bigInteger.toByteArray());
        }
        zzc(parcel, zzb);
    }

    public static void writeBoolean(@RecentlyNonNull Parcel parcel, int i, boolean z) {
        zza(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void writeBooleanArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull boolean[] zArr, boolean z) {
        if (zArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeBooleanArray(zArr);
        zzc(parcel, zzb);
    }

    public static void writeBooleanList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<Boolean> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(list.get(i2).booleanValue() ? 1 : 0);
        }
        zzc(parcel, zzb);
    }

    public static void writeBooleanObject(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Boolean bool, boolean z) {
        if (bool != null) {
            zza(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (!z) {
        } else {
            zza(parcel, i, 0);
        }
    }

    public static void writeBundle(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Bundle bundle, boolean z) {
        if (bundle == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeBundle(bundle);
        zzc(parcel, zzb);
    }

    public static void writeByte(@RecentlyNonNull Parcel parcel, int i, byte b) {
        zza(parcel, i, 4);
        parcel.writeInt(b);
    }

    public static void writeByteArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull byte[] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeByteArray(bArr);
        zzc(parcel, zzb);
    }

    public static void writeByteArrayArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull byte[][] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        zzc(parcel, zzb);
    }

    public static void writeByteArraySparseArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseArray<byte[]> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(sparseArray.keyAt(i2));
            parcel.writeByteArray(sparseArray.valueAt(i2));
        }
        zzc(parcel, zzb);
    }

    public static void writeChar(@RecentlyNonNull Parcel parcel, int i, char c) {
        zza(parcel, i, 4);
        parcel.writeInt(c);
    }

    public static void writeCharArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull char[] cArr, boolean z) {
        if (cArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeCharArray(cArr);
        zzc(parcel, zzb);
    }

    public static void writeDouble(@RecentlyNonNull Parcel parcel, int i, double d) {
        zza(parcel, i, 8);
        parcel.writeDouble(d);
    }

    public static void writeDoubleArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull double[] dArr, boolean z) {
        if (dArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeDoubleArray(dArr);
        zzc(parcel, zzb);
    }

    public static void writeDoubleList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<Double> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeDouble(list.get(i2).doubleValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeDoubleObject(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Double d, boolean z) {
        if (d != null) {
            zza(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (!z) {
        } else {
            zza(parcel, i, 0);
        }
    }

    public static void writeDoubleSparseArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseArray<Double> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(sparseArray.keyAt(i2));
            parcel.writeDouble(sparseArray.valueAt(i2).doubleValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeFloat(@RecentlyNonNull Parcel parcel, int i, float f) {
        zza(parcel, i, 4);
        parcel.writeFloat(f);
    }

    public static void writeFloatArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull float[] fArr, boolean z) {
        if (fArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeFloatArray(fArr);
        zzc(parcel, zzb);
    }

    public static void writeFloatList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<Float> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeFloat(list.get(i2).floatValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeFloatObject(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Float f, boolean z) {
        if (f != null) {
            zza(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (!z) {
        } else {
            zza(parcel, i, 0);
        }
    }

    public static void writeFloatSparseArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseArray<Float> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(sparseArray.keyAt(i2));
            parcel.writeFloat(sparseArray.valueAt(i2).floatValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeIBinder(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeStrongBinder(iBinder);
        zzc(parcel, zzb);
    }

    public static void writeIBinderArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull IBinder[] iBinderArr, boolean z) {
        if (iBinderArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeBinderArray(iBinderArr);
        zzc(parcel, zzb);
    }

    public static void writeIBinderList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<IBinder> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeBinderList(list);
        zzc(parcel, zzb);
    }

    public static void writeIBinderSparseArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseArray<IBinder> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(sparseArray.keyAt(i2));
            parcel.writeStrongBinder(sparseArray.valueAt(i2));
        }
        zzc(parcel, zzb);
    }

    public static void writeInt(@RecentlyNonNull Parcel parcel, int i, int i2) {
        zza(parcel, i, 4);
        parcel.writeInt(i2);
    }

    public static void writeIntArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull int[] iArr, boolean z) {
        if (iArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeIntArray(iArr);
        zzc(parcel, zzb);
    }

    public static void writeIntegerList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<Integer> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(list.get(i2).intValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeIntegerObject(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Integer num, boolean z) {
        if (num != null) {
            zza(parcel, i, 4);
            parcel.writeInt(num.intValue());
        } else if (!z) {
        } else {
            zza(parcel, i, 0);
        }
    }

    public static void writeList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeList(list);
        zzc(parcel, zzb);
    }

    public static void writeLong(@RecentlyNonNull Parcel parcel, int i, long j) {
        zza(parcel, i, 8);
        parcel.writeLong(j);
    }

    public static void writeLongArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull long[] jArr, boolean z) {
        if (jArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeLongArray(jArr);
        zzc(parcel, zzb);
    }

    public static void writeLongList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<Long> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeLong(list.get(i2).longValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeLongObject(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Long l, boolean z) {
        if (l != null) {
            zza(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (!z) {
        } else {
            zza(parcel, i, 0);
        }
    }

    public static void writeParcel(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcel parcel2, boolean z) {
        if (parcel2 == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        zzc(parcel, zzb);
    }

    public static void writeParcelArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcel[] parcelArr, boolean z) {
        if (parcelArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeInt(parcelArr.length);
        for (Parcel parcel2 : parcelArr) {
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzc(parcel, zzb);
    }

    public static void writeParcelList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<Parcel> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Parcel parcel2 = list.get(i2);
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzc(parcel, zzb);
    }

    public static void writeParcelSparseArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseArray<Parcel> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(sparseArray.keyAt(i2));
            Parcel valueAt = sparseArray.valueAt(i2);
            if (valueAt != null) {
                parcel.writeInt(valueAt.dataSize());
                parcel.appendFrom(valueAt, 0, valueAt.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzc(parcel, zzb);
    }

    public static void writeParcelable(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        zzc(parcel, zzb);
    }

    public static void writePendingIntent(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull PendingIntent pendingIntent, boolean z) {
        if (pendingIntent == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        PendingIntent.writePendingIntentOrNullToParcel(pendingIntent, parcel);
        zzc(parcel, zzb);
    }

    public static void writeShort(@RecentlyNonNull Parcel parcel, int i, short s) {
        zza(parcel, i, 4);
        parcel.writeInt(s);
    }

    public static void writeSparseBooleanArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseBooleanArray sparseBooleanArray, boolean z) {
        if (sparseBooleanArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeSparseBooleanArray(sparseBooleanArray);
        zzc(parcel, zzb);
    }

    public static void writeSparseIntArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseIntArray sparseIntArray, boolean z) {
        if (sparseIntArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseIntArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(sparseIntArray.keyAt(i2));
            parcel.writeInt(sparseIntArray.valueAt(i2));
        }
        zzc(parcel, zzb);
    }

    public static void writeSparseLongArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseLongArray sparseLongArray, boolean z) {
        if (sparseLongArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseLongArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(sparseLongArray.keyAt(i2));
            parcel.writeLong(sparseLongArray.valueAt(i2));
        }
        zzc(parcel, zzb);
    }

    public static void writeString(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull String str, boolean z) {
        if (str == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeString(str);
        zzc(parcel, zzb);
    }

    public static void writeStringArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull String[] strArr, boolean z) {
        if (strArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeStringArray(strArr);
        zzc(parcel, zzb);
    }

    public static void writeStringList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<String> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeStringList(list);
        zzc(parcel, zzb);
    }

    public static void writeStringSparseArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseArray<String> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(sparseArray.keyAt(i2));
            parcel.writeString(sparseArray.valueAt(i2));
        }
        zzc(parcel, zzb);
    }

    public static <T extends Parcelable> void writeTypedArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, t, i2);
            }
        }
        zzc(parcel, zzb);
    }

    public static <T extends Parcelable> void writeTypedList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<T> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t = list.get(i2);
            if (t == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, t, 0);
            }
        }
        zzc(parcel, zzb);
    }

    public static <T extends Parcelable> void writeTypedSparseArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull SparseArray<T> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (!z) {
                return;
            }
            zza(parcel, i, 0);
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(sparseArray.keyAt(i2));
            T valueAt = sparseArray.valueAt(i2);
            if (valueAt == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, valueAt, 0);
            }
        }
        zzc(parcel, zzb);
    }

    private static void zza(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    private static int zzb(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void zzc(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    private static <T extends Parcelable> void zzd(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }
}
