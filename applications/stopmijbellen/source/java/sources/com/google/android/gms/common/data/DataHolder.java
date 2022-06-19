package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
@KeepForSdk
@KeepName
@SafeParcelable.Class(creator = "DataHolderCreator", validate = true)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    @RecentlyNonNull
    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new zad();
    private static final Builder zak = new zab(new String[0], null);
    @SafeParcelable.VersionField(m4803id = 1000)
    public final int zaa;
    public Bundle zab;
    public int[] zac;
    public int zad;
    public boolean zae;
    @SafeParcelable.Field(getter = "getColumns", m4805id = 1)
    private final String[] zaf;
    @SafeParcelable.Field(getter = "getWindows", m4805id = 2)
    private final CursorWindow[] zag;
    @SafeParcelable.Field(getter = "getStatusCode", m4805id = 3)
    private final int zah;
    @SafeParcelable.Field(getter = "getMetadata", m4805id = 4)
    private final Bundle zai;
    private boolean zaj;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$Builder.class */
    public static class Builder {
        private final String[] zaa;
        private final ArrayList<HashMap<String, Object>> zab = new ArrayList<>();
        private final HashMap<Object, Integer> zac = new HashMap<>();

        public /* synthetic */ Builder(String[] strArr, String str, zab zabVar) {
            this.zaa = (String[]) Preconditions.checkNotNull(strArr);
        }

        @RecentlyNonNull
        @KeepForSdk
        public DataHolder build(int i) {
            return new DataHolder(this, i, (Bundle) null, (zab) null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public DataHolder build(int i, @RecentlyNonNull Bundle bundle) {
            return new DataHolder(this, i, bundle, -1, (zab) null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder withRow(@RecentlyNonNull ContentValues contentValues) {
            Asserts.checkNotNull(contentValues);
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return zaa(hashMap);
        }

        @RecentlyNonNull
        public Builder zaa(@RecentlyNonNull HashMap<String, Object> hashMap) {
            Asserts.checkNotNull(hashMap);
            this.zab.add(hashMap);
            return this;
        }
    }

    @SafeParcelable.Constructor
    public DataHolder(@SafeParcelable.Param(m4804id = 1000) int i, @SafeParcelable.Param(m4804id = 1) String[] strArr, @SafeParcelable.Param(m4804id = 2) CursorWindow[] cursorWindowArr, @SafeParcelable.Param(m4804id = 3) int i2, @SafeParcelable.Param(m4804id = 4) Bundle bundle) {
        this.zae = false;
        this.zaj = true;
        this.zaa = i;
        this.zaf = strArr;
        this.zag = cursorWindowArr;
        this.zah = i2;
        this.zai = bundle;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DataHolder(@androidx.annotation.RecentlyNonNull android.database.Cursor r7, int r8, android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder.<init>(android.database.Cursor, int, android.os.Bundle):void");
    }

    private DataHolder(Builder builder, int i, Bundle bundle) {
        this(builder.zaa, zae(builder, -1), i, (Bundle) null);
    }

    public /* synthetic */ DataHolder(Builder builder, int i, Bundle bundle, int i2, zab zabVar) {
        this(builder.zaa, zae(builder, -1), i, bundle);
    }

    public /* synthetic */ DataHolder(Builder builder, int i, Bundle bundle, zab zabVar) {
        this(builder, i, (Bundle) null);
    }

    @KeepForSdk
    public DataHolder(@RecentlyNonNull String[] strArr, @RecentlyNonNull CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.zae = false;
        this.zaj = true;
        this.zaa = 1;
        this.zaf = (String[]) Preconditions.checkNotNull(strArr);
        this.zag = (CursorWindow[]) Preconditions.checkNotNull(cursorWindowArr);
        this.zah = i;
        this.zai = bundle;
        zaa();
    }

    @RecentlyNonNull
    @KeepForSdk
    public static Builder builder(@RecentlyNonNull String[] strArr) {
        return new Builder(strArr, null, null);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static DataHolder empty(int i) {
        return new DataHolder(zak, i, (Bundle) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0227, code lost:
        if (r13 != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x022a, code lost:
        r14.freeLastRow();
        r14 = new android.database.CursorWindow(false);
        r14.setStartPosition(r7);
        r14.setNumColumns(r6.zaa.length);
        r0.add(r14);
        r7 = r7 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0256, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x026f, code lost:
        throw new com.google.android.gms.common.data.zac("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.database.CursorWindow[] zae(com.google.android.gms.common.data.DataHolder.Builder r6, int r7) {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder.zae(com.google.android.gms.common.data.DataHolder$Builder, int):android.database.CursorWindow[]");
    }

    private final void zaf(String str, int i) {
        Bundle bundle = this.zab;
        if (bundle == null || !bundle.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else {
            if (i >= 0 && i < this.zad) {
                return;
            }
            throw new CursorIndexOutOfBoundsException(i, this.zad);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    public void close() {
        synchronized (this) {
            if (!this.zae) {
                this.zae = true;
                int i = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.zag;
                    if (i >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i].close();
                    i++;
                }
            }
        }
    }

    public final void finalize() throws Throwable {
        try {
            if (this.zaj && this.zag.length > 0 && !isClosed()) {
                close();
                new StringBuilder(String.valueOf(toString()).length() + 178);
            }
        } finally {
            super.finalize();
        }
    }

    @KeepForSdk
    public boolean getBoolean(@RecentlyNonNull String str, int i, int i2) {
        zaf(str, i);
        return Long.valueOf(this.zag[i2].getLong(i, this.zab.getInt(str))).longValue() == 1;
    }

    @RecentlyNonNull
    @KeepForSdk
    public byte[] getByteArray(@RecentlyNonNull String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getBlob(i, this.zab.getInt(str));
    }

    @KeepForSdk
    public int getCount() {
        return this.zad;
    }

    @KeepForSdk
    public int getInteger(@RecentlyNonNull String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getInt(i, this.zab.getInt(str));
    }

    @KeepForSdk
    public long getLong(@RecentlyNonNull String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getLong(i, this.zab.getInt(str));
    }

    @RecentlyNullable
    @KeepForSdk
    public Bundle getMetadata() {
        return this.zai;
    }

    @KeepForSdk
    public int getStatusCode() {
        return this.zah;
    }

    @RecentlyNonNull
    @KeepForSdk
    public String getString(@RecentlyNonNull String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getString(i, this.zab.getInt(str));
    }

    @KeepForSdk
    public int getWindowIndex(int i) {
        int length;
        int i2;
        int i3 = 0;
        Preconditions.checkState(i >= 0 && i < this.zad);
        while (true) {
            int[] iArr = this.zac;
            length = iArr.length;
            i2 = i3;
            if (i3 >= length) {
                break;
            } else if (i < iArr[i3]) {
                i2 = i3 - 1;
                break;
            } else {
                i3++;
            }
        }
        int i4 = i2;
        if (i2 == length) {
            i4 = i2 - 1;
        }
        return i4;
    }

    @KeepForSdk
    public boolean hasColumn(@RecentlyNonNull String str) {
        return this.zab.containsKey(str);
    }

    @KeepForSdk
    public boolean hasNull(@RecentlyNonNull String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].isNull(i, this.zab.getInt(str));
    }

    @KeepForSdk
    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.zae;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.zaf, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zag, i, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.zaa);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final void zaa() {
        this.zab = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.zaf;
            if (i2 >= strArr.length) {
                break;
            }
            this.zab.putInt(strArr[i2], i2);
            i2++;
        }
        this.zac = new int[this.zag.length];
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zag;
            if (i >= cursorWindowArr.length) {
                this.zad = i3;
                return;
            }
            this.zac[i] = i3;
            i3 += this.zag[i].getNumRows() - (i3 - cursorWindowArr[i].getStartPosition());
            i++;
        }
    }

    public final float zab(@RecentlyNonNull String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getFloat(i, this.zab.getInt(str));
    }

    public final double zac(@RecentlyNonNull String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getDouble(i, this.zab.getInt(str));
    }

    public final void zad(@RecentlyNonNull String str, int i, int i2, @RecentlyNonNull CharArrayBuffer charArrayBuffer) {
        zaf(str, i);
        this.zag[i2].copyStringToBuffer(i, this.zab.getInt(str), charArrayBuffer);
    }
}
