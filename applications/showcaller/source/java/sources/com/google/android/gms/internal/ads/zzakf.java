package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakf.class */
public final class zzakf extends zzajx {
    public static final Parcelable.Creator<zzakf> CREATOR = new C6803o8();

    /* renamed from: e */
    public final String f33531e;

    /* renamed from: f */
    public final String f33532f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzakf(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            int r0 = com.google.android.gms.internal.ads.C7101wa.f31475a
            r6 = r0
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.f33531e = r1
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.f33532f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakf.<init>(android.os.Parcel):void");
    }

    public zzakf(String str, String str2, String str3) {
        super(str);
        this.f33531e = str2;
        this.f33532f = str3;
    }

    /* renamed from: a */
    private static List<Integer> m8114a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException e) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzajx, com.google.android.gms.internal.ads.zzaiu
    /* renamed from: I */
    public final void mo8113I(C6689l5 c6689l5) {
        boolean z;
        String str = this.f33520d;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82878:
                if (str.equals("TCM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82897:
                if (str.equals("TDA")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83253:
                if (str.equals("TP1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83254:
                if (str.equals("TP2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83255:
                if (str.equals("TP3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83341:
                if (str.equals("TRK")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83378:
                if (str.equals("TT2")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 83536:
                if (str.equals("TXT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83552:
                if (str.equals("TYE")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
            case true:
                c6689l5.m13723B(this.f33532f);
                return;
            case true:
            case true:
                c6689l5.m13722C(this.f33532f);
                return;
            case true:
            case true:
                c6689l5.m13720E(this.f33532f);
                return;
            case true:
            case true:
                c6689l5.m13721D(this.f33532f);
                return;
            case true:
            case true:
                String[] m9703Y = C7101wa.m9703Y(this.f33532f, "/");
                try {
                    int parseInt = Integer.parseInt(m9703Y[0]);
                    Integer valueOf = m9703Y.length > 1 ? Integer.valueOf(Integer.parseInt(m9703Y[1])) : null;
                    c6689l5.m13717H(Integer.valueOf(parseInt));
                    c6689l5.m13716I(valueOf);
                    return;
                } catch (NumberFormatException e) {
                    return;
                }
            case true:
            case true:
                try {
                    c6689l5.m13715a(Integer.valueOf(Integer.parseInt(this.f33532f)));
                    return;
                } catch (NumberFormatException e2) {
                    return;
                }
            case true:
            case true:
                try {
                    int parseInt2 = Integer.parseInt(this.f33532f.substring(2, 4));
                    int parseInt3 = Integer.parseInt(this.f33532f.substring(0, 2));
                    c6689l5.m13714b(Integer.valueOf(parseInt2));
                    c6689l5.m13713c(Integer.valueOf(parseInt3));
                    return;
                } catch (NumberFormatException | StringIndexOutOfBoundsException e3) {
                    return;
                }
            case true:
                List<Integer> m8114a = m8114a(this.f33532f);
                int size = m8114a.size();
                if (size != 1) {
                    if (size != 2) {
                        if (size != 3) {
                            return;
                        }
                        c6689l5.m13713c(m8114a.get(2));
                    }
                    c6689l5.m13714b(m8114a.get(1));
                }
                c6689l5.m13715a(m8114a.get(0));
                return;
            case true:
                List<Integer> m8114a2 = m8114a(this.f33532f);
                int size2 = m8114a2.size();
                if (size2 != 1) {
                    if (size2 != 2) {
                        if (size2 != 3) {
                            return;
                        }
                        c6689l5.m13710f(m8114a2.get(2));
                    }
                    c6689l5.m13711e(m8114a2.get(1));
                }
                c6689l5.m13712d(m8114a2.get(0));
                return;
            case true:
            case true:
                c6689l5.m13708h(this.f33532f);
                return;
            case true:
            case true:
                c6689l5.m13707i(this.f33532f);
                return;
            case true:
            case true:
                c6689l5.m13709g(this.f33532f);
                return;
            default:
                return;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzakf.class != obj.getClass()) {
            return false;
        }
        zzakf zzakfVar = (zzakf) obj;
        return C7101wa.m9720H(this.f33520d, zzakfVar.f33520d) && C7101wa.m9720H(this.f33531e, zzakfVar.f33531e) && C7101wa.m9720H(this.f33532f, zzakfVar.f33532f);
    }

    public final int hashCode() {
        int hashCode = this.f33520d.hashCode();
        String str = this.f33531e;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f33532f;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.f33520d;
        String str2 = this.f33531e;
        String str3 = this.f33532f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": description=");
        sb.append(str2);
        sb.append(": value=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33520d);
        parcel.writeString(this.f33531e);
        parcel.writeString(this.f33532f);
    }
}
