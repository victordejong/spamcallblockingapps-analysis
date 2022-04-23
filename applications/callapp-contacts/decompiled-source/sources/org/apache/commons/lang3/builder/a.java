package org.apache.commons.lang3.builder;

import java.util.Comparator;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public int f39138a = 0;

    public final a a(Object obj, Object obj2, Comparator<?> comparator) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (this.f39138a == 0 && obj != obj2) {
            int i9 = -1;
            if (obj == null) {
                this.f39138a = -1;
                return this;
            } else if (obj2 == null) {
                this.f39138a = 1;
                return this;
            } else {
                if (obj.getClass().isArray()) {
                    if (obj instanceof long[]) {
                        long[] jArr = (long[]) obj;
                        long[] jArr2 = (long[]) obj2;
                        if (this.f39138a == 0 && jArr != jArr2) {
                            if (jArr == null) {
                                this.f39138a = -1;
                            } else if (jArr2 == null) {
                                this.f39138a = 1;
                            } else if (jArr.length != jArr2.length) {
                                if (jArr.length >= jArr2.length) {
                                    i9 = 1;
                                }
                                this.f39138a = i9;
                            } else {
                                for (int i10 = 0; i10 < jArr.length && (i8 = this.f39138a) == 0; i10++) {
                                    long j = jArr[i10];
                                    long j2 = jArr2[i10];
                                    if (i8 == 0) {
                                        this.f39138a = Long.compare(j, j2);
                                    }
                                }
                            }
                        }
                    } else if (obj instanceof int[]) {
                        int[] iArr = (int[]) obj;
                        int[] iArr2 = (int[]) obj2;
                        if (this.f39138a == 0 && iArr != iArr2) {
                            if (iArr == null) {
                                this.f39138a = -1;
                            } else if (iArr2 == null) {
                                this.f39138a = 1;
                            } else if (iArr.length != iArr2.length) {
                                if (iArr.length >= iArr2.length) {
                                    i9 = 1;
                                }
                                this.f39138a = i9;
                            } else {
                                for (int i11 = 0; i11 < iArr.length && (i7 = this.f39138a) == 0; i11++) {
                                    int i12 = iArr[i11];
                                    int i13 = iArr2[i11];
                                    if (i7 == 0) {
                                        this.f39138a = Integer.compare(i12, i13);
                                    }
                                }
                            }
                        }
                    } else if (obj instanceof short[]) {
                        short[] sArr = (short[]) obj;
                        short[] sArr2 = (short[]) obj2;
                        if (this.f39138a == 0 && sArr != sArr2) {
                            if (sArr == null) {
                                this.f39138a = -1;
                            } else if (sArr2 == null) {
                                this.f39138a = 1;
                            } else if (sArr.length != sArr2.length) {
                                if (sArr.length >= sArr2.length) {
                                    i9 = 1;
                                }
                                this.f39138a = i9;
                            } else {
                                for (int i14 = 0; i14 < sArr.length && (i6 = this.f39138a) == 0; i14++) {
                                    short s = sArr[i14];
                                    short s2 = sArr2[i14];
                                    if (i6 == 0) {
                                        this.f39138a = Short.compare(s, s2);
                                    }
                                }
                            }
                        }
                    } else if (obj instanceof char[]) {
                        char[] cArr = (char[]) obj;
                        char[] cArr2 = (char[]) obj2;
                        if (this.f39138a == 0 && cArr != cArr2) {
                            if (cArr == null) {
                                this.f39138a = -1;
                            } else if (cArr2 == null) {
                                this.f39138a = 1;
                            } else if (cArr.length != cArr2.length) {
                                if (cArr.length >= cArr2.length) {
                                    i9 = 1;
                                }
                                this.f39138a = i9;
                            } else {
                                for (int i15 = 0; i15 < cArr.length && (i5 = this.f39138a) == 0; i15++) {
                                    char c2 = cArr[i15];
                                    char c3 = cArr2[i15];
                                    if (i5 == 0) {
                                        this.f39138a = Character.compare(c2, c3);
                                    }
                                }
                            }
                        }
                    } else if (obj instanceof byte[]) {
                        byte[] bArr = (byte[]) obj;
                        byte[] bArr2 = (byte[]) obj2;
                        if (this.f39138a == 0 && bArr != bArr2) {
                            if (bArr == null) {
                                this.f39138a = -1;
                            } else if (bArr2 == null) {
                                this.f39138a = 1;
                            } else if (bArr.length != bArr2.length) {
                                if (bArr.length >= bArr2.length) {
                                    i9 = 1;
                                }
                                this.f39138a = i9;
                            } else {
                                for (int i16 = 0; i16 < bArr.length && (i4 = this.f39138a) == 0; i16++) {
                                    byte b2 = bArr[i16];
                                    byte b3 = bArr2[i16];
                                    if (i4 == 0) {
                                        this.f39138a = Byte.compare(b2, b3);
                                    }
                                }
                            }
                        }
                    } else if (obj instanceof double[]) {
                        double[] dArr = (double[]) obj;
                        double[] dArr2 = (double[]) obj2;
                        if (this.f39138a == 0 && dArr != dArr2) {
                            if (dArr == null) {
                                this.f39138a = -1;
                            } else if (dArr2 == null) {
                                this.f39138a = 1;
                            } else if (dArr.length != dArr2.length) {
                                if (dArr.length >= dArr2.length) {
                                    i9 = 1;
                                }
                                this.f39138a = i9;
                            } else {
                                for (int i17 = 0; i17 < dArr.length && (i3 = this.f39138a) == 0; i17++) {
                                    double d2 = dArr[i17];
                                    double d3 = dArr2[i17];
                                    if (i3 == 0) {
                                        this.f39138a = Double.compare(d2, d3);
                                    }
                                }
                            }
                        }
                    } else if (obj instanceof float[]) {
                        float[] fArr = (float[]) obj;
                        float[] fArr2 = (float[]) obj2;
                        if (this.f39138a == 0 && fArr != fArr2) {
                            if (fArr == null) {
                                this.f39138a = -1;
                            } else if (fArr2 == null) {
                                this.f39138a = 1;
                            } else if (fArr.length != fArr2.length) {
                                if (fArr.length >= fArr2.length) {
                                    i9 = 1;
                                }
                                this.f39138a = i9;
                            } else {
                                for (int i18 = 0; i18 < fArr.length && (i2 = this.f39138a) == 0; i18++) {
                                    float f = fArr[i18];
                                    float f2 = fArr2[i18];
                                    if (i2 == 0) {
                                        this.f39138a = Float.compare(f, f2);
                                    }
                                }
                            }
                        }
                    } else if (obj instanceof boolean[]) {
                        boolean[] zArr = (boolean[]) obj;
                        boolean[] zArr2 = (boolean[]) obj2;
                        if (this.f39138a == 0 && zArr != zArr2) {
                            if (zArr == null) {
                                this.f39138a = -1;
                            } else if (zArr2 == null) {
                                this.f39138a = 1;
                            } else if (zArr.length != zArr2.length) {
                                if (zArr.length >= zArr2.length) {
                                    i9 = 1;
                                }
                                this.f39138a = i9;
                            } else {
                                for (int i19 = 0; i19 < zArr.length && (i = this.f39138a) == 0; i19++) {
                                    boolean z = zArr[i19];
                                    boolean z2 = zArr2[i19];
                                    if (i == 0 && z != z2) {
                                        if (z) {
                                            this.f39138a = 1;
                                        } else {
                                            this.f39138a = -1;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        Object[] objArr = (Object[]) obj;
                        Object[] objArr2 = (Object[]) obj2;
                        if (this.f39138a == 0 && objArr != objArr2) {
                            if (objArr == null) {
                                this.f39138a = -1;
                            } else if (objArr2 == null) {
                                this.f39138a = 1;
                            } else if (objArr.length != objArr2.length) {
                                if (objArr.length >= objArr2.length) {
                                    i9 = 1;
                                }
                                this.f39138a = i9;
                            } else {
                                for (int i20 = 0; i20 < objArr.length && this.f39138a == 0; i20++) {
                                    a(objArr[i20], objArr2[i20], comparator);
                                }
                            }
                        }
                    }
                } else if (comparator == null) {
                    this.f39138a = ((Comparable) obj).compareTo(obj2);
                } else {
                    this.f39138a = comparator.compare(obj, obj2);
                }
                return this;
            }
        }
        return this;
    }
}
