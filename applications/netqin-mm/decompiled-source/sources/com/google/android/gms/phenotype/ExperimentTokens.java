package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/ExperimentTokens.class */
public class ExperimentTokens extends AbstractSafeParcelable {
    @KeepForSdk
    public static final Parcelable.Creator<ExperimentTokens> CREATOR = new zzh();

    /* renamed from: i */
    public static final byte[][] f30193i;
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f30194a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final byte[] f30195b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final byte[][] f30196c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final byte[][] f30197d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final byte[][] f30198e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final byte[][] f30199f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final int[] f30200g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final byte[][] f30201h;

    /* JADX WARN: Type inference failed for: r0v2, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    static {
        /*
            com.google.android.gms.phenotype.zzh r0 = new com.google.android.gms.phenotype.zzh
            r1 = r0
            r1.<init>()
            com.google.android.gms.phenotype.ExperimentTokens.CREATOR = r0
            r0 = 0
            byte[] r0 = new byte[r0]
            r11 = r0
            r0 = r11
            com.google.android.gms.phenotype.ExperimentTokens.f30193i = r0
            com.google.android.gms.phenotype.ExperimentTokens r0 = new com.google.android.gms.phenotype.ExperimentTokens
            r1 = r0
            java.lang.String r2 = ""
            r3 = 0
            r4 = r11
            r5 = r11
            r6 = r11
            r7 = r11
            r8 = 0
            r9 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            c.d.b.d.j.a r0 = new c.d.b.d.j.a
            r1 = r0
            r1.<init>()
            c.d.b.d.j.b r0 = new c.d.b.d.j.b
            r1 = r0
            r1.<init>()
            c.d.b.d.j.c r0 = new c.d.b.d.j.c
            r1 = r0
            r1.<init>()
            c.d.b.d.j.d r0 = new c.d.b.d.j.d
            r1 = r0
            r1.<init>()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.phenotype.ExperimentTokens.m41684clinit():void");
    }

    @SafeParcelable.Constructor
    public ExperimentTokens(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) byte[] bArr, @SafeParcelable.Param(id = 4) byte[][] bArr2, @SafeParcelable.Param(id = 5) byte[][] bArr3, @SafeParcelable.Param(id = 6) byte[][] bArr4, @SafeParcelable.Param(id = 7) byte[][] bArr5, @SafeParcelable.Param(id = 8) int[] iArr, @SafeParcelable.Param(id = 9) byte[][] bArr6) {
        this.f30194a = str;
        this.f30195b = bArr;
        this.f30196c = bArr2;
        this.f30197d = bArr3;
        this.f30198e = bArr4;
        this.f30199f = bArr5;
        this.f30200g = iArr;
        this.f30201h = bArr6;
    }

    /* renamed from: a */
    public static List<Integer> m8663a(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public static List<String> m8662a(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] bArr2 : bArr) {
            arrayList.add(Base64.encodeToString(bArr2, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public static void m8664a(StringBuilder sb, String str, byte[][] bArr) {
        String str2;
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            str2 = "null";
        } else {
            sb.append("(");
            int length = bArr.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                byte[] bArr2 = bArr[i];
                if (!z) {
                    sb.append(", ");
                }
                sb.append("'");
                sb.append(Base64.encodeToString(bArr2, 3));
                sb.append("'");
                i++;
                z = false;
            }
            str2 = ")";
        }
        sb.append(str2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ExperimentTokens)) {
            return false;
        }
        ExperimentTokens experimentTokens = (ExperimentTokens) obj;
        return zzn.m8659a(this.f30194a, experimentTokens.f30194a) && Arrays.equals(this.f30195b, experimentTokens.f30195b) && zzn.m8659a(m8662a(this.f30196c), m8662a(experimentTokens.f30196c)) && zzn.m8659a(m8662a(this.f30197d), m8662a(experimentTokens.f30197d)) && zzn.m8659a(m8662a(this.f30198e), m8662a(experimentTokens.f30198e)) && zzn.m8659a(m8662a(this.f30199f), m8662a(experimentTokens.f30199f)) && zzn.m8659a(m8663a(this.f30200g), m8663a(experimentTokens.f30200g)) && zzn.m8659a(m8662a(this.f30201h), m8662a(experimentTokens.f30201h));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        String str2 = this.f30194a;
        if (str2 == null) {
            str = "null";
        } else {
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 2);
            sb2.append("'");
            sb2.append(str2);
            sb2.append("'");
            str = sb2.toString();
        }
        sb.append(str);
        sb.append(", ");
        byte[] bArr = this.f30195b;
        sb.append("direct");
        sb.append("=");
        if (bArr == null) {
            sb.append("null");
        } else {
            sb.append("'");
            sb.append(Base64.encodeToString(bArr, 3));
            sb.append("'");
        }
        sb.append(", ");
        m8664a(sb, "GAIA", this.f30196c);
        sb.append(", ");
        m8664a(sb, "PSEUDO", this.f30197d);
        sb.append(", ");
        m8664a(sb, "ALWAYS", this.f30198e);
        sb.append(", ");
        m8664a(sb, "OTHER", this.f30199f);
        sb.append(", ");
        int[] iArr = this.f30200g;
        sb.append("weak");
        sb.append("=");
        if (iArr == null) {
            sb.append("null");
        } else {
            sb.append("(");
            int length = iArr.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                int i2 = iArr[i];
                if (!z) {
                    sb.append(", ");
                }
                sb.append(i2);
                i++;
                z = false;
            }
            sb.append(")");
        }
        sb.append(", ");
        m8664a(sb, "directs", this.f30201h);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f30194a, false);
        SafeParcelWriter.m17217a(parcel, 3, this.f30195b, false);
        SafeParcelWriter.m17213a(parcel, 4, this.f30196c, false);
        SafeParcelWriter.m17213a(parcel, 5, this.f30197d, false);
        SafeParcelWriter.m17213a(parcel, 6, this.f30198e, false);
        SafeParcelWriter.m17213a(parcel, 7, this.f30199f, false);
        SafeParcelWriter.m17216a(parcel, 8, this.f30200g, false);
        SafeParcelWriter.m17213a(parcel, 9, this.f30201h, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
