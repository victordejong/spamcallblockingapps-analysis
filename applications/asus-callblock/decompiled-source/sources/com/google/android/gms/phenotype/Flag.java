package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/Flag.class */
public class Flag extends AbstractSafeParcelable implements Comparable<Flag> {

    /* renamed from: a  reason: collision with root package name */
    final int f4244a;

    /* renamed from: b  reason: collision with root package name */
    public final String f4245b;
    final long c;
    final boolean d;
    final double e;
    final String f;
    final byte[] g;
    public final int h;
    public final int i;
    public static final Parcelable.Creator<Flag> CREATOR = new b();
    private static final Charset k = Charset.forName("UTF-8");
    public static final a j = new a();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/Flag$a.class */
    public static final class a implements Comparator<Flag> {
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Flag flag, Flag flag2) {
            Flag flag3 = flag;
            Flag flag4 = flag2;
            return flag3.i == flag4.i ? flag3.f4245b.compareTo(flag4.f4245b) : flag3.i - flag4.i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Flag(int i, String str, long j2, boolean z, double d, String str2, byte[] bArr, int i2, int i3) {
        this.f4244a = i;
        this.f4245b = str;
        this.c = j2;
        this.d = z;
        this.e = d;
        this.f = str2;
        this.g = bArr;
        this.h = i2;
        this.i = i3;
    }

    private static int a(int i, int i2) {
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Flag flag) {
        int i = 0;
        int i2 = 0;
        Flag flag2 = flag;
        int compareTo = this.f4245b.compareTo(flag2.f4245b);
        if (compareTo != 0) {
            i2 = compareTo;
        } else {
            int a2 = a(this.h, flag2.h);
            if (a2 != 0) {
                i2 = a2;
            } else {
                switch (this.h) {
                    case 1:
                        long j2 = this.c;
                        long j3 = flag2.c;
                        if (j2 >= j3) {
                            if (j2 != j3) {
                                i2 = 1;
                                break;
                            }
                        } else {
                            i2 = -1;
                            break;
                        }
                        break;
                    case 2:
                        boolean z = this.d;
                        if (z != flag2.d) {
                            if (!z) {
                                i2 = -1;
                                break;
                            } else {
                                i2 = 1;
                                break;
                            }
                        }
                        break;
                    case 3:
                        i2 = Double.compare(this.e, flag2.e);
                        break;
                    case 4:
                        String str = this.f;
                        String str2 = flag2.f;
                        if (str != str2) {
                            if (str != null) {
                                if (str2 != null) {
                                    i2 = str.compareTo(str2);
                                    break;
                                } else {
                                    i2 = 1;
                                    break;
                                }
                            } else {
                                i2 = -1;
                                break;
                            }
                        }
                        break;
                    case 5:
                        if (this.g != flag2.g) {
                            if (this.g != null) {
                                if (flag2.g != null) {
                                    while (true) {
                                        if (i >= Math.min(this.g.length, flag2.g.length)) {
                                            i2 = a(this.g.length, flag2.g.length);
                                            break;
                                        } else {
                                            int i3 = this.g[i] - flag2.g[i];
                                            if (i3 != 0) {
                                                i2 = i3;
                                                break;
                                            } else {
                                                i++;
                                            }
                                        }
                                    }
                                } else {
                                    i2 = 1;
                                    break;
                                }
                            } else {
                                i2 = -1;
                                break;
                            }
                        }
                        break;
                    default:
                        throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.h).toString());
                }
            }
        }
        return i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == null || !(obj instanceof Flag)) {
            z = false;
        } else {
            Flag flag = (Flag) obj;
            if (this.f4244a == flag.f4244a && ae.a(this.f4245b, flag.f4245b) && this.h == flag.h && this.i == flag.i) {
                switch (this.h) {
                    case 1:
                        if (this.c != flag.c) {
                            z = false;
                            break;
                        }
                        break;
                    case 2:
                        if (this.d != flag.d) {
                            z = false;
                            break;
                        }
                        break;
                    case 3:
                        if (this.e != flag.e) {
                            z = false;
                            break;
                        }
                        break;
                    case 4:
                        z = ae.a(this.f, flag.f);
                        break;
                    case 5:
                        z = Arrays.equals(this.g, flag.g);
                        break;
                    default:
                        throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.h).toString());
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Flag(");
        sb.append(this.f4244a);
        sb.append(", ");
        sb.append(this.f4245b);
        sb.append(", ");
        switch (this.h) {
            case 1:
                sb.append(this.c);
                break;
            case 2:
                sb.append(this.d);
                break;
            case 3:
                sb.append(this.e);
                break;
            case 4:
                sb.append("'");
                sb.append(this.f);
                sb.append("'");
                break;
            case 5:
                if (this.g != null) {
                    sb.append("'");
                    sb.append(new String(this.g, k));
                    sb.append("'");
                    break;
                } else {
                    sb.append("null");
                    break;
                }
            default:
                throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.h).toString());
        }
        sb.append(", ");
        sb.append(this.h);
        sb.append(", ");
        sb.append(this.i);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel);
    }
}
