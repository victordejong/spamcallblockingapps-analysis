package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters.class */
public final class DefaultTrackSelector$Parameters extends TrackSelectionParameters {

    /* renamed from: B */
    public static final DefaultTrackSelector$Parameters f1062B;
    public static final Parcelable.Creator<DefaultTrackSelector$Parameters> CREATOR = new C0250a();

    /* renamed from: A */
    public final SparseBooleanArray f1063A;

    /* renamed from: f */
    public final int f1064f;

    /* renamed from: g */
    public final int f1065g;

    /* renamed from: h */
    public final int f1066h;

    /* renamed from: i */
    public final int f1067i;

    /* renamed from: j */
    public final boolean f1068j;

    /* renamed from: k */
    public final boolean f1069k;

    /* renamed from: l */
    public final boolean f1070l;

    /* renamed from: m */
    public final int f1071m;

    /* renamed from: n */
    public final int f1072n;

    /* renamed from: o */
    public final boolean f1073o;

    /* renamed from: p */
    public final int f1074p;

    /* renamed from: q */
    public final int f1075q;

    /* renamed from: r */
    public final boolean f1076r;

    /* renamed from: s */
    public final boolean f1077s;

    /* renamed from: t */
    public final boolean f1078t;

    /* renamed from: u */
    public final boolean f1079u;

    /* renamed from: v */
    public final boolean f1080v;

    /* renamed from: w */
    public final boolean f1081w;

    /* renamed from: x */
    public final boolean f1082x;

    /* renamed from: y */
    public final int f1083y;

    /* renamed from: z */
    public final SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> f1084z;

    /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters$a.class */
    public class C0250a implements Parcelable.Creator<DefaultTrackSelector$Parameters> {
        @Override // android.os.Parcelable.Creator
        public DefaultTrackSelector$Parameters createFromParcel(Parcel parcel) {
            return new DefaultTrackSelector$Parameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DefaultTrackSelector$Parameters[] newArray(int i) {
            return new DefaultTrackSelector$Parameters[i];
        }
    }

    static {
        TrackSelectionParameters trackSelectionParameters = TrackSelectionParameters.f1132e;
        f1062B = new DefaultTrackSelector$Parameters(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true, trackSelectionParameters.f1133a, Integer.MAX_VALUE, Integer.MAX_VALUE, true, false, false, false, trackSelectionParameters.f1134b, trackSelectionParameters.f1135c, trackSelectionParameters.f1136d, false, false, true, 0, new SparseArray(), new SparseBooleanArray());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DefaultTrackSelector$Parameters() {
        /*
            r29 = this;
            androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters r0 = androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.f1132e
            r30 = r0
            r0 = r29
            r1 = 2147483647(0x7fffffff, float:NaN)
            r2 = 2147483647(0x7fffffff, float:NaN)
            r3 = 2147483647(0x7fffffff, float:NaN)
            r4 = 2147483647(0x7fffffff, float:NaN)
            r5 = 1
            r6 = 0
            r7 = 1
            r8 = 2147483647(0x7fffffff, float:NaN)
            r9 = 2147483647(0x7fffffff, float:NaN)
            r10 = 1
            r11 = r30
            java.lang.String r11 = r11.f1133a
            r12 = 2147483647(0x7fffffff, float:NaN)
            r13 = 2147483647(0x7fffffff, float:NaN)
            r14 = 1
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = r30
            java.lang.String r18 = r18.f1134b
            r19 = r30
            boolean r19 = r19.f1135c
            r20 = r30
            int r20 = r20.f1136d
            r21 = 0
            r22 = 0
            r23 = 1
            r24 = 0
            android.util.SparseArray r25 = new android.util.SparseArray
            r26 = r25
            r26.<init>()
            android.util.SparseBooleanArray r26 = new android.util.SparseBooleanArray
            r27 = r26
            r27.<init>()
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters.<init>():void");
    }

    public DefaultTrackSelector$Parameters(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, int i5, int i6, boolean z4, String str, int i7, int i8, boolean z5, boolean z6, boolean z7, boolean z8, String str2, boolean z9, int i9, boolean z10, boolean z11, boolean z12, int i10, SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
        super(str, str2, z9, i9);
        this.f1064f = i;
        this.f1065g = i2;
        this.f1066h = i3;
        this.f1067i = i4;
        this.f1068j = z;
        this.f1069k = z2;
        this.f1070l = z3;
        this.f1071m = i5;
        this.f1072n = i6;
        this.f1073o = z4;
        this.f1074p = i7;
        this.f1075q = i8;
        this.f1076r = z5;
        this.f1077s = z6;
        this.f1078t = z7;
        this.f1079u = z8;
        this.f1080v = z10;
        this.f1081w = z11;
        this.f1082x = z12;
        this.f1083y = i10;
        this.f1084z = sparseArray;
        this.f1063A = sparseBooleanArray;
    }

    public DefaultTrackSelector$Parameters(Parcel parcel) {
        super(parcel);
        this.f1064f = parcel.readInt();
        this.f1065g = parcel.readInt();
        this.f1066h = parcel.readInt();
        this.f1067i = parcel.readInt();
        this.f1068j = parcel.readInt() != 0;
        this.f1069k = parcel.readInt() != 0;
        this.f1070l = parcel.readInt() != 0;
        this.f1071m = parcel.readInt();
        this.f1072n = parcel.readInt();
        this.f1073o = parcel.readInt() != 0;
        this.f1074p = parcel.readInt();
        this.f1075q = parcel.readInt();
        this.f1076r = parcel.readInt() != 0;
        this.f1077s = parcel.readInt() != 0;
        this.f1078t = parcel.readInt() != 0;
        this.f1079u = parcel.readInt() != 0;
        this.f1080v = parcel.readInt() != 0;
        this.f1081w = parcel.readInt() != 0;
        this.f1082x = parcel.readInt() != 0;
        this.f1083y = parcel.readInt();
        int readInt = parcel.readInt();
        SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray = new SparseArray<>(readInt);
        for (int i = 0; i < readInt; i++) {
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            HashMap hashMap = new HashMap(readInt3);
            for (int i2 = 0; i2 < readInt3; i2++) {
                hashMap.put((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader()), (DefaultTrackSelector$SelectionOverride) parcel.readParcelable(DefaultTrackSelector$SelectionOverride.class.getClassLoader()));
            }
            sparseArray.put(readInt2, hashMap);
        }
        this.f1084z = sparseArray;
        this.f1063A = parcel.readSparseBooleanArray();
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0222, code lost:
        if (r10 == false) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0217 A[LOOP:1: B:67:0x016e->B:84:0x0217, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0165 A[SYNTHETIC] */
    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters.equals(java.lang.Object):boolean");
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.f1064f) * 31) + this.f1065g) * 31) + this.f1066h) * 31) + this.f1067i) * 31) + (this.f1068j ? 1 : 0)) * 31) + (this.f1069k ? 1 : 0)) * 31) + (this.f1070l ? 1 : 0)) * 31) + (this.f1073o ? 1 : 0)) * 31) + this.f1071m) * 31) + this.f1072n) * 31) + this.f1074p) * 31) + this.f1075q) * 31) + (this.f1076r ? 1 : 0)) * 31) + (this.f1077s ? 1 : 0)) * 31) + (this.f1078t ? 1 : 0)) * 31) + (this.f1079u ? 1 : 0)) * 31) + (this.f1080v ? 1 : 0)) * 31) + (this.f1081w ? 1 : 0)) * 31) + (this.f1082x ? 1 : 0)) * 31) + this.f1083y;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1133a);
        parcel.writeString(this.f1134b);
        boolean z = this.f1135c;
        int i2 = C27445x.f77229a;
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(this.f1136d);
        parcel.writeInt(this.f1064f);
        parcel.writeInt(this.f1065g);
        parcel.writeInt(this.f1066h);
        parcel.writeInt(this.f1067i);
        parcel.writeInt(this.f1068j ? 1 : 0);
        parcel.writeInt(this.f1069k ? 1 : 0);
        parcel.writeInt(this.f1070l ? 1 : 0);
        parcel.writeInt(this.f1071m);
        parcel.writeInt(this.f1072n);
        parcel.writeInt(this.f1073o ? 1 : 0);
        parcel.writeInt(this.f1074p);
        parcel.writeInt(this.f1075q);
        parcel.writeInt(this.f1076r ? 1 : 0);
        parcel.writeInt(this.f1077s ? 1 : 0);
        parcel.writeInt(this.f1078t ? 1 : 0);
        parcel.writeInt(this.f1079u ? 1 : 0);
        parcel.writeInt(this.f1080v ? 1 : 0);
        parcel.writeInt(this.f1081w ? 1 : 0);
        parcel.writeInt(this.f1082x ? 1 : 0);
        parcel.writeInt(this.f1083y);
        SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray = this.f1084z;
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = sparseArray.keyAt(i3);
            Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride> valueAt = sparseArray.valueAt(i3);
            int size2 = valueAt.size();
            parcel.writeInt(keyAt);
            parcel.writeInt(size2);
            for (Map.Entry<TrackGroupArray, DefaultTrackSelector$SelectionOverride> entry : valueAt.entrySet()) {
                parcel.writeParcelable(entry.getKey(), 0);
                parcel.writeParcelable(entry.getValue(), 0);
            }
        }
        parcel.writeSparseBooleanArray(this.f1063A);
    }
}
