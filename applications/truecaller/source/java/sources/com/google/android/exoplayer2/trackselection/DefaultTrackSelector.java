package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.tenor.android.core.constant.StringConstant;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24642d;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24633a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector.class */
public class DefaultTrackSelector extends AbstractC24642d {

    /* renamed from: d */
    public static final int[] f5006d = new int[0];

    /* renamed from: b */
    public final AbstractC24645f.AbstractC24647b f5007b;

    /* renamed from: c */
    public final AtomicReference<Parameters> f5008c;

    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters.class */
    public static final class Parameters extends TrackSelectionParameters {

        /* renamed from: C */
        public static final Parameters f5009C = new C2005c().m39224b();
        public static final Parcelable.Creator<Parameters> CREATOR = new C2001a();

        /* renamed from: A */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f5010A;

        /* renamed from: B */
        public final SparseBooleanArray f5011B;

        /* renamed from: g */
        public final int f5012g;

        /* renamed from: h */
        public final int f5013h;

        /* renamed from: i */
        public final int f5014i;

        /* renamed from: j */
        public final int f5015j;

        /* renamed from: k */
        public final boolean f5016k;

        /* renamed from: l */
        public final boolean f5017l;

        /* renamed from: m */
        public final boolean f5018m;

        /* renamed from: n */
        public final int f5019n;

        /* renamed from: o */
        public final int f5020o;

        /* renamed from: p */
        public final boolean f5021p;

        /* renamed from: q */
        public final int f5022q;

        /* renamed from: r */
        public final int f5023r;

        /* renamed from: s */
        public final boolean f5024s;

        /* renamed from: t */
        public final boolean f5025t;

        /* renamed from: u */
        public final boolean f5026u;

        /* renamed from: v */
        public final boolean f5027v;

        /* renamed from: w */
        public final boolean f5028w;

        /* renamed from: x */
        public final boolean f5029x;

        /* renamed from: y */
        public final boolean f5030y;

        /* renamed from: z */
        public final int f5031z;

        /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$a.class */
        public static final class C2001a implements Parcelable.Creator<Parameters> {
            @Override // android.os.Parcelable.Creator
            public Parameters createFromParcel(Parcel parcel) {
                return new Parameters(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public Parameters[] newArray(int i) {
                return new Parameters[i];
            }
        }

        public Parameters(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, int i5, int i6, boolean z4, String str, int i7, int i8, boolean z5, boolean z6, boolean z7, boolean z8, String str2, int i9, boolean z9, int i10, boolean z10, boolean z11, boolean z12, int i11, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(null, str2, i9, z9, i10);
            this.f5012g = i;
            this.f5013h = i2;
            this.f5014i = i3;
            this.f5015j = i4;
            this.f5016k = z;
            this.f5017l = z2;
            this.f5018m = z3;
            this.f5019n = i5;
            this.f5020o = i6;
            this.f5021p = z4;
            this.f5022q = i7;
            this.f5023r = i8;
            this.f5024s = z5;
            this.f5025t = z6;
            this.f5026u = z7;
            this.f5027v = z8;
            this.f5028w = z10;
            this.f5029x = z11;
            this.f5030y = z12;
            this.f5031z = i11;
            this.f5010A = sparseArray;
            this.f5011B = sparseBooleanArray;
        }

        public Parameters(Parcel parcel) {
            super(parcel);
            this.f5012g = parcel.readInt();
            this.f5013h = parcel.readInt();
            this.f5014i = parcel.readInt();
            this.f5015j = parcel.readInt();
            this.f5016k = parcel.readInt() != 0;
            this.f5017l = parcel.readInt() != 0;
            this.f5018m = parcel.readInt() != 0;
            this.f5019n = parcel.readInt();
            this.f5020o = parcel.readInt();
            this.f5021p = parcel.readInt() != 0;
            this.f5022q = parcel.readInt();
            this.f5023r = parcel.readInt();
            this.f5024s = parcel.readInt() != 0;
            this.f5025t = parcel.readInt() != 0;
            this.f5026u = parcel.readInt() != 0;
            this.f5027v = parcel.readInt() != 0;
            this.f5028w = parcel.readInt() != 0;
            this.f5029x = parcel.readInt() != 0;
            this.f5030y = parcel.readInt() != 0;
            this.f5031z = parcel.readInt();
            int readInt = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i2 = 0; i2 < readInt3; i2++) {
                    Parcelable readParcelable = parcel.readParcelable(TrackGroupArray.class.getClassLoader());
                    Objects.requireNonNull(readParcelable);
                    hashMap.put((TrackGroupArray) readParcelable, (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
                }
                sparseArray.put(readInt2, hashMap);
            }
            this.f5010A = sparseArray;
            this.f5011B = parcel.readSparseBooleanArray();
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:87:0x0222, code lost:
            if (r10 == false) goto L88;
         */
        /* JADX WARN: Removed duplicated region for block: B:63:0x014c  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0217 A[LOOP:1: B:67:0x016e->B:84:0x0217, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x0165 A[SYNTHETIC] */
        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 558
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.equals(java.lang.Object):boolean");
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.f5012g) * 31) + this.f5013h) * 31) + this.f5014i) * 31) + this.f5015j) * 31) + (this.f5016k ? 1 : 0)) * 31) + (this.f5017l ? 1 : 0)) * 31) + (this.f5018m ? 1 : 0)) * 31) + (this.f5021p ? 1 : 0)) * 31) + this.f5019n) * 31) + this.f5020o) * 31) + this.f5022q) * 31) + this.f5023r) * 31) + (this.f5024s ? 1 : 0)) * 31) + (this.f5025t ? 1 : 0)) * 31) + (this.f5026u ? 1 : 0)) * 31) + (this.f5027v ? 1 : 0)) * 31) + (this.f5028w ? 1 : 0)) * 31) + (this.f5029x ? 1 : 0)) * 31) + (this.f5030y ? 1 : 0)) * 31) + this.f5031z;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f5012g);
            parcel.writeInt(this.f5013h);
            parcel.writeInt(this.f5014i);
            parcel.writeInt(this.f5015j);
            parcel.writeInt(this.f5016k ? 1 : 0);
            parcel.writeInt(this.f5017l ? 1 : 0);
            parcel.writeInt(this.f5018m ? 1 : 0);
            parcel.writeInt(this.f5019n);
            parcel.writeInt(this.f5020o);
            parcel.writeInt(this.f5021p ? 1 : 0);
            parcel.writeInt(this.f5022q);
            parcel.writeInt(this.f5023r);
            parcel.writeInt(this.f5024s ? 1 : 0);
            parcel.writeInt(this.f5025t ? 1 : 0);
            parcel.writeInt(this.f5026u ? 1 : 0);
            parcel.writeInt(this.f5027v ? 1 : 0);
            parcel.writeInt(this.f5028w ? 1 : 0);
            parcel.writeInt(this.f5029x ? 1 : 0);
            parcel.writeInt(this.f5030y ? 1 : 0);
            parcel.writeInt(this.f5031z);
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = this.f5010A;
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                int keyAt = sparseArray.keyAt(i2);
                Map<TrackGroupArray, SelectionOverride> valueAt = sparseArray.valueAt(i2);
                int size2 = valueAt.size();
                parcel.writeInt(keyAt);
                parcel.writeInt(size2);
                for (Map.Entry<TrackGroupArray, SelectionOverride> entry : valueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
            parcel.writeSparseBooleanArray(this.f5011B);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride.class */
    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new C2002a();

        /* renamed from: a */
        public final int f5032a;

        /* renamed from: b */
        public final int[] f5033b;

        /* renamed from: c */
        public final int f5034c;

        /* renamed from: d */
        public final int f5035d;

        /* renamed from: e */
        public final int f5036e;

        /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride$a.class */
        public static final class C2002a implements Parcelable.Creator<SelectionOverride> {
            @Override // android.os.Parcelable.Creator
            public SelectionOverride createFromParcel(Parcel parcel) {
                return new SelectionOverride(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SelectionOverride[] newArray(int i) {
                return new SelectionOverride[i];
            }
        }

        public SelectionOverride(Parcel parcel) {
            this.f5032a = parcel.readInt();
            int readByte = parcel.readByte();
            this.f5034c = readByte;
            int[] iArr = new int[readByte];
            this.f5033b = iArr;
            parcel.readIntArray(iArr);
            this.f5035d = parcel.readInt();
            this.f5036e = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || SelectionOverride.class != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            if (this.f5032a != selectionOverride.f5032a || !Arrays.equals(this.f5033b, selectionOverride.f5033b) || this.f5035d != selectionOverride.f5035d || this.f5036e != selectionOverride.f5036e) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((Arrays.hashCode(this.f5033b) + (this.f5032a * 31)) * 31) + this.f5035d) * 31) + this.f5036e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f5032a);
            parcel.writeInt(this.f5033b.length);
            parcel.writeIntArray(this.f5033b);
            parcel.writeInt(this.f5035d);
            parcel.writeInt(this.f5036e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$a.class */
    public static final class C2003a {

        /* renamed from: a */
        public final int f5037a;

        /* renamed from: b */
        public final int f5038b;

        /* renamed from: c */
        public final String f5039c;

        public C2003a(int i, int i2, String str) {
            this.f5037a = i;
            this.f5038b = i2;
            this.f5039c = str;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C2003a.class != obj.getClass()) {
                return false;
            }
            C2003a c2003a = (C2003a) obj;
            if (this.f5037a != c2003a.f5037a || this.f5038b != c2003a.f5038b || !TextUtils.equals(this.f5039c, c2003a.f5039c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f5037a;
            int i2 = this.f5038b;
            String str = this.f5039c;
            return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$b.class */
    public static final class C2004b implements Comparable<C2004b> {

        /* renamed from: a */
        public final boolean f5040a;

        /* renamed from: b */
        public final String f5041b;

        /* renamed from: c */
        public final Parameters f5042c;

        /* renamed from: d */
        public final boolean f5043d;

        /* renamed from: e */
        public final int f5044e;

        /* renamed from: f */
        public final int f5045f;

        /* renamed from: g */
        public final int f5046g;

        /* renamed from: h */
        public final boolean f5047h;

        /* renamed from: i */
        public final int f5048i;

        /* renamed from: j */
        public final int f5049j;

        /* renamed from: k */
        public final int f5050k;

        public C2004b(Format format, Parameters parameters, int i) {
            int i2;
            String[] strArr;
            int i3;
            int i4;
            this.f5042c = parameters;
            this.f5041b = DefaultTrackSelector.m39226j(format.f4835A);
            this.f5043d = DefaultTrackSelector.m39229g(i, false);
            this.f5044e = DefaultTrackSelector.m39231e(format, parameters.f5075a, false);
            this.f5047h = (format.f4841c & 1) != 0;
            int i5 = format.f4860v;
            this.f5048i = i5;
            this.f5049j = format.f4861w;
            int i6 = format.f4843e;
            this.f5050k = i6;
            this.f5040a = (i6 == -1 || i6 <= parameters.f5023r) && (i5 == -1 || i5 <= parameters.f5022q);
            int i7 = C24773d0.f69427a;
            Configuration configuration = Resources.getSystem().getConfiguration();
            int i8 = C24773d0.f69427a;
            if (i8 >= 24) {
                strArr = C24773d0.m4628B(configuration.getLocales().toLanguageTags(), ",");
                i2 = 0;
            } else {
                Locale locale = configuration.locale;
                i2 = 0;
                strArr = new String[]{i8 >= 21 ? locale.toLanguageTag() : locale.toString()};
            }
            while (i2 < strArr.length) {
                strArr[i2] = C24773d0.m4601w(strArr[i2]);
                i2++;
            }
            int i9 = 0;
            while (true) {
                i3 = 0;
                i4 = Integer.MAX_VALUE;
                if (i9 >= strArr.length) {
                    break;
                }
                i3 = DefaultTrackSelector.m39231e(format, strArr[i9], false);
                if (i3 > 0) {
                    i4 = i9;
                    break;
                }
                i9++;
            }
            this.f5045f = i4;
            this.f5046g = i3;
        }

        /* renamed from: a */
        public int compareTo(C2004b c2004b) {
            int m39232d;
            boolean z = this.f5043d;
            int i = 1;
            if (z != c2004b.f5043d) {
                return z ? 1 : -1;
            }
            int i2 = this.f5044e;
            int i3 = c2004b.f5044e;
            if (i2 != i3) {
                return DefaultTrackSelector.m39233c(i2, i3);
            }
            boolean z2 = this.f5040a;
            if (z2 != c2004b.f5040a) {
                return z2 ? 1 : -1;
            } else if (this.f5042c.f5028w && (m39232d = DefaultTrackSelector.m39232d(this.f5050k, c2004b.f5050k)) != 0) {
                int i4 = 1;
                if (m39232d > 0) {
                    i4 = -1;
                }
                return i4;
            } else {
                boolean z3 = this.f5047h;
                if (z3 != c2004b.f5047h) {
                    return z3 ? 1 : -1;
                }
                int i5 = this.f5045f;
                int i6 = c2004b.f5045f;
                if (i5 != i6) {
                    return -DefaultTrackSelector.m39233c(i5, i6);
                }
                int i7 = this.f5046g;
                int i8 = c2004b.f5046g;
                if (i7 != i8) {
                    return DefaultTrackSelector.m39233c(i7, i8);
                }
                if (!this.f5040a || !this.f5043d) {
                    i = -1;
                }
                int i9 = this.f5048i;
                int i10 = c2004b.f5048i;
                if (i9 != i10) {
                    return DefaultTrackSelector.m39233c(i9, i10) * i;
                }
                int i11 = this.f5049j;
                int i12 = c2004b.f5049j;
                if (i11 != i12) {
                    return DefaultTrackSelector.m39233c(i11, i12) * i;
                }
                if (!C24773d0.m4623a(this.f5041b, c2004b.f5041b)) {
                    return 0;
                }
                return DefaultTrackSelector.m39233c(this.f5050k, c2004b.f5050k) * i;
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$c.class */
    public static final class C2005c extends TrackSelectionParameters.C2008b {

        /* renamed from: c */
        public int f5051c;

        /* renamed from: d */
        public int f5052d;

        /* renamed from: e */
        public int f5053e;

        /* renamed from: f */
        public int f5054f;

        /* renamed from: g */
        public boolean f5055g;

        /* renamed from: h */
        public boolean f5056h;

        /* renamed from: i */
        public int f5057i;

        /* renamed from: j */
        public int f5058j;

        /* renamed from: k */
        public boolean f5059k;

        /* renamed from: l */
        public int f5060l;

        /* renamed from: m */
        public int f5061m;

        /* renamed from: n */
        public boolean f5062n;

        /* renamed from: o */
        public boolean f5063o;

        /* renamed from: p */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f5064p = new SparseArray<>();

        /* renamed from: q */
        public final SparseBooleanArray f5065q = new SparseBooleanArray();

        @Deprecated
        public C2005c() {
            m39223c();
        }

        public C2005c(Context context) {
            Point point;
            mo39221a(context);
            m39223c();
            int i = C24773d0.f69427a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            int i2 = C24773d0.f69427a;
            if (i2 <= 29 && defaultDisplay.getDisplayId() == 0 && C24773d0.m4602v(context)) {
                if (!"Sony".equals(C24773d0.f69429c) || !C24773d0.f69430d.startsWith("BRAVIA") || !context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                    String m4608p = i2 < 28 ? C24773d0.m4608p("sys.display-size") : C24773d0.m4608p("vendor.display-size");
                    if (!TextUtils.isEmpty(m4608p)) {
                        try {
                            String[] m4628B = C24773d0.m4628B(m4608p.trim(), "x");
                            if (m4628B.length == 2) {
                                int parseInt = Integer.parseInt(m4628B[0]);
                                int parseInt2 = Integer.parseInt(m4628B[1]);
                                if (parseInt > 0 && parseInt2 > 0) {
                                    point = new Point(parseInt, parseInt2);
                                }
                            }
                        } catch (NumberFormatException e) {
                        }
                    }
                } else {
                    point = new Point(3840, 2160);
                }
                int i3 = point.x;
                int i4 = point.y;
                this.f5057i = i3;
                this.f5058j = i4;
                this.f5059k = true;
            }
            point = new Point();
            int i5 = C24773d0.f69427a;
            if (i5 >= 23) {
                Display.Mode mode = defaultDisplay.getMode();
                point.x = mode.getPhysicalWidth();
                point.y = mode.getPhysicalHeight();
            } else if (i5 >= 17) {
                defaultDisplay.getRealSize(point);
            } else {
                defaultDisplay.getSize(point);
            }
            int i32 = point.x;
            int i42 = point.y;
            this.f5057i = i32;
            this.f5058j = i42;
            this.f5059k = true;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.C2008b
        /* renamed from: a */
        public TrackSelectionParameters.C2008b mo39221a(Context context) {
            super.mo39221a(context);
            return this;
        }

        /* renamed from: b */
        public Parameters m39224b() {
            return new Parameters(this.f5051c, this.f5052d, this.f5053e, this.f5054f, this.f5055g, false, this.f5056h, this.f5057i, this.f5058j, this.f5059k, null, this.f5060l, this.f5061m, this.f5062n, false, false, false, this.f5080a, this.f5081b, false, 0, false, false, this.f5063o, 0, this.f5064p, this.f5065q);
        }

        /* renamed from: c */
        public final void m39223c() {
            this.f5051c = Integer.MAX_VALUE;
            this.f5052d = Integer.MAX_VALUE;
            this.f5053e = Integer.MAX_VALUE;
            this.f5054f = Integer.MAX_VALUE;
            this.f5055g = true;
            this.f5056h = true;
            this.f5057i = Integer.MAX_VALUE;
            this.f5058j = Integer.MAX_VALUE;
            this.f5059k = true;
            this.f5060l = Integer.MAX_VALUE;
            this.f5061m = Integer.MAX_VALUE;
            this.f5062n = true;
            this.f5063o = true;
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$d.class */
    public static final class C2006d implements Comparable<C2006d> {

        /* renamed from: a */
        public final boolean f5066a;

        /* renamed from: b */
        public final boolean f5067b;

        /* renamed from: c */
        public final boolean f5068c;

        /* renamed from: d */
        public final boolean f5069d;

        /* renamed from: e */
        public final int f5070e;

        /* renamed from: f */
        public final int f5071f;

        /* renamed from: g */
        public final int f5072g;

        /* renamed from: h */
        public final boolean f5073h;

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00e6, code lost:
            if (r0 > 0) goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C2006d(com.google.android.exoplayer2.Format r5, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r6, int r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C2006d.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, java.lang.String):void");
        }

        /* renamed from: a */
        public int compareTo(C2006d c2006d) {
            boolean z;
            boolean z2 = this.f5067b;
            int i = 1;
            if (z2 != c2006d.f5067b) {
                return z2 ? 1 : -1;
            }
            int i2 = this.f5070e;
            int i3 = c2006d.f5070e;
            if (i2 != i3) {
                return DefaultTrackSelector.m39233c(i2, i3);
            }
            int i4 = this.f5071f;
            int i5 = c2006d.f5071f;
            if (i4 != i5) {
                return DefaultTrackSelector.m39233c(i4, i5);
            }
            boolean z3 = this.f5068c;
            if (z3 != c2006d.f5068c) {
                return z3 ? 1 : -1;
            }
            boolean z4 = this.f5069d;
            if (z4 != c2006d.f5069d) {
                return z4 ? 1 : -1;
            }
            int i6 = this.f5072g;
            int i7 = c2006d.f5072g;
            if (i6 != i7) {
                return DefaultTrackSelector.m39233c(i6, i7);
            }
            if (i4 != 0 || (z = this.f5073h) == c2006d.f5073h) {
                return 0;
            }
            if (z) {
                i = -1;
            }
            return i;
        }
    }

    public DefaultTrackSelector(Context context) {
        C24633a.C24637d c24637d = new C24633a.C24637d();
        Parameters parameters = Parameters.f5009C;
        Parameters m39224b = new C2005c(context).m39224b();
        this.f5007b = c24637d;
        this.f5008c = new AtomicReference<>(m39224b);
    }

    /* renamed from: c */
    public static int m39233c(int i, int i2) {
        return i > i2 ? 1 : i2 > i ? -1 : 0;
    }

    /* renamed from: d */
    public static int m39232d(int i, int i2) {
        int i3;
        if (i == -1) {
            i3 = -1;
            if (i2 == -1) {
                i3 = 0;
            }
        } else {
            i3 = i2 == -1 ? 1 : i - i2;
        }
        return i3;
    }

    /* renamed from: e */
    public static int m39231e(Format format, String str, boolean z) {
        if (TextUtils.isEmpty(str) || !str.equals(format.f4835A)) {
            String m39226j = m39226j(str);
            String m39226j2 = m39226j(format.f4835A);
            if (m39226j2 != null && m39226j != null) {
                if (m39226j2.startsWith(m39226j) || m39226j.startsWith(m39226j2)) {
                    return 3;
                }
                int i = C24773d0.f69427a;
                return m39226j2.split(StringConstant.DASH, 2)[0].equals(m39226j.split(StringConstant.DASH, 2)[0]) ? 2 : 0;
            }
            int i2 = 0;
            if (z) {
                i2 = 0;
                if (m39226j2 == null) {
                    i2 = 1;
                }
            }
            return i2;
        }
        return 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0134 A[SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.Integer> m39230f(com.google.android.exoplayer2.source.TrackGroup r6, int r7, int r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m39230f(com.google.android.exoplayer2.source.TrackGroup, int, int, boolean):java.util.List");
    }

    /* renamed from: g */
    public static boolean m39229g(int i, boolean z) {
        int i2 = i & 7;
        return i2 == 4 || (z && i2 == 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        if (r0 == r5.f5037a) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        if (android.text.TextUtils.equals(r0, r5.f5039c) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0081, code lost:
        if (r0 == r5.f5038b) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
        if (r0 <= r6) goto L8;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m39228h(com.google.android.exoplayer2.Format r3, int r4, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C2003a r5, int r6, boolean r7, boolean r8, boolean r9) {
        /*
            r0 = 0
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = 0
            boolean r0 = m39229g(r0, r1)
            if (r0 == 0) goto L87
            r0 = r3
            int r0 = r0.f4843e
            r4 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L22
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = r6
            if (r0 > r1) goto L87
        L22:
            r0 = r9
            if (r0 != 0) goto L41
            r0 = r3
            int r0 = r0.f4860v
            r4 = r0
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L87
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.f5037a
            if (r0 != r1) goto L87
        L41:
            r0 = r7
            if (r0 != 0) goto L65
            r0 = r3
            java.lang.String r0 = r0.f4847i
            r12 = r0
            r0 = r10
            r11 = r0
            r0 = r12
            if (r0 == 0) goto L87
            r0 = r10
            r11 = r0
            r0 = r12
            r1 = r5
            java.lang.String r1 = r1.f5039c
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L87
        L65:
            r0 = r8
            if (r0 != 0) goto L84
            r0 = r3
            int r0 = r0.f4861w
            r4 = r0
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L87
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.f5038b
            if (r0 != r1) goto L87
        L84:
            r0 = 1
            r11 = r0
        L87:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m39228h(com.google.android.exoplayer2.Format, int, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$a, int, boolean, boolean, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r0 <= r7) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r0 <= r8) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
        if (r0 <= r9) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
        if (r0 <= r10) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        if (p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.m4623a(r3.f4847i, r4) != false) goto L10;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m39227i(com.google.android.exoplayer2.Format r3, java.lang.String r4, int r5, int r6, int r7, int r8, int r9, int r10) {
        /*
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = 0
            boolean r0 = m39229g(r0, r1)
            if (r0 == 0) goto L86
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r6
            r0 = r0 & r1
            if (r0 == 0) goto L86
            r0 = r4
            if (r0 == 0) goto L2c
            r0 = r11
            r12 = r0
            r0 = r3
            java.lang.String r0 = r0.f4847i
            r1 = r4
            boolean r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.m4623a(r0, r1)
            if (r0 == 0) goto L86
        L2c:
            r0 = r3
            int r0 = r0.f4852n
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L40
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r7
            if (r0 > r1) goto L86
        L40:
            r0 = r3
            int r0 = r0.f4853o
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L54
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r8
            if (r0 > r1) goto L86
        L54:
            r0 = r3
            float r0 = r0.f4854p
            r13 = r0
            r0 = r13
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6f
            r0 = r11
            r12 = r0
            r0 = r13
            r1 = r9
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L86
        L6f:
            r0 = r3
            int r0 = r0.f4843e
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L83
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r10
            if (r0 > r1) goto L86
        L83:
            r0 = 1
            r12 = r0
        L86:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m39227i(com.google.android.exoplayer2.Format, java.lang.String, int, int, int, int, int, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (android.text.TextUtils.equals(r3, "und") != false) goto L6;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m39226j(java.lang.String r3) {
        /*
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L12
            r0 = r3
            r4 = r0
            r0 = r3
            java.lang.String r1 = "und"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L14
        L12:
            r0 = 0
            r4 = r0
        L14:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m39226j(java.lang.String):java.lang.String");
    }
}
