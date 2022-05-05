package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferRef.class */
public class DataBufferRef {
    @KeepForSdk
    protected final DataHolder mDataHolder;
    @KeepForSdk
    protected int mDataRow;
    private int zalm;

    @KeepForSdk
    public DataBufferRef(DataHolder dataHolder, int i) {
        this.mDataHolder = (DataHolder) Preconditions.checkNotNull(dataHolder);
        zag(i);
    }

    @KeepForSdk
    protected void copyToBuffer(String str, CharArrayBuffer charArrayBuffer) {
        this.mDataHolder.zaa(str, this.mDataRow, this.zalm, charArrayBuffer);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DataBufferRef)) {
            return false;
        }
        DataBufferRef dataBufferRef = (DataBufferRef) obj;
        return Objects.equal(Integer.valueOf(dataBufferRef.mDataRow), Integer.valueOf(this.mDataRow)) && Objects.equal(Integer.valueOf(dataBufferRef.zalm), Integer.valueOf(this.zalm)) && dataBufferRef.mDataHolder == this.mDataHolder;
    }

    @KeepForSdk
    protected boolean getBoolean(String str) {
        return this.mDataHolder.getBoolean(str, this.mDataRow, this.zalm);
    }

    @KeepForSdk
    protected byte[] getByteArray(String str) {
        return this.mDataHolder.getByteArray(str, this.mDataRow, this.zalm);
    }

    @KeepForSdk
    protected int getDataRow() {
        return this.mDataRow;
    }

    @KeepForSdk
    protected double getDouble(String str) {
        return this.mDataHolder.zab(str, this.mDataRow, this.zalm);
    }

    @KeepForSdk
    protected float getFloat(String str) {
        return this.mDataHolder.zaa(str, this.mDataRow, this.zalm);
    }

    @KeepForSdk
    protected int getInteger(String str) {
        return this.mDataHolder.getInteger(str, this.mDataRow, this.zalm);
    }

    @KeepForSdk
    protected long getLong(String str) {
        return this.mDataHolder.getLong(str, this.mDataRow, this.zalm);
    }

    @KeepForSdk
    protected String getString(String str) {
        return this.mDataHolder.getString(str, this.mDataRow, this.zalm);
    }

    @KeepForSdk
    public boolean hasColumn(String str) {
        return this.mDataHolder.hasColumn(str);
    }

    @KeepForSdk
    protected boolean hasNull(String str) {
        return this.mDataHolder.hasNull(str, this.mDataRow, this.zalm);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.mDataRow), Integer.valueOf(this.zalm), this.mDataHolder);
    }

    @KeepForSdk
    public boolean isDataValid() {
        return !this.mDataHolder.isClosed();
    }

    @KeepForSdk
    protected Uri parseUri(String str) {
        String string = this.mDataHolder.getString(str, this.mDataRow, this.zalm);
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zag(int i) {
        Preconditions.checkState(i >= 0 && i < this.mDataHolder.getCount());
        this.mDataRow = i;
        this.zalm = this.mDataHolder.getWindowIndex(this.mDataRow);
    }
}
