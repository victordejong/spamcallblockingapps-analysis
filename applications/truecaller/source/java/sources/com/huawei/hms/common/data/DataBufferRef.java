package com.huawei.hms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.huawei.hms.common.internal.Objects;
import com.huawei.hms.common.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/data/DataBufferRef.class */
public class DataBufferRef {
    public final DataHolder mDataHolder;
    public int mDataRow;
    private int windowIndex;

    public DataBufferRef(DataHolder dataHolder, int i) {
        Preconditions.checkNotNull(dataHolder, "dataHolder cannot be null");
        this.mDataHolder = dataHolder;
        getWindowIndex(i);
    }

    public void copyToBuffer(String str, CharArrayBuffer charArrayBuffer) {
        this.mDataHolder.copyToBuffer(str, this.mDataRow, this.windowIndex, charArrayBuffer);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof DataBufferRef) {
            DataBufferRef dataBufferRef = (DataBufferRef) obj;
            z = false;
            if (dataBufferRef.mDataRow == this.mDataRow) {
                z = false;
                if (dataBufferRef.windowIndex == this.windowIndex) {
                    z = false;
                    if (dataBufferRef.mDataHolder == this.mDataHolder) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public boolean getBoolean(String str) {
        Object value = this.mDataHolder.getValue(str, this.mDataRow, this.windowIndex, "type_boolean");
        if (value != null) {
            return ((Boolean) value).booleanValue();
        }
        return false;
    }

    public byte[] getByteArray(String str) {
        Object value = this.mDataHolder.getValue(str, this.mDataRow, this.windowIndex, "type_byte_array");
        if (value != null) {
            return (byte[]) value;
        }
        return null;
    }

    public int getDataRow() {
        return this.mDataRow;
    }

    public double getDouble(String str) {
        Object value = this.mDataHolder.getValue(str, this.mDataRow, this.windowIndex, "type_double");
        if (value != null) {
            return ((Double) value).doubleValue();
        }
        return -1.0d;
    }

    public float getFloat(String str) {
        Object value = this.mDataHolder.getValue(str, this.mDataRow, this.windowIndex, "type_float");
        if (value != null) {
            return ((Float) value).floatValue();
        }
        return -1.0f;
    }

    public int getInteger(String str) {
        Object value = this.mDataHolder.getValue(str, this.mDataRow, this.windowIndex, "type_int");
        if (value != null) {
            return ((Integer) value).intValue();
        }
        return -1;
    }

    public long getLong(String str) {
        Object value = this.mDataHolder.getValue(str, this.mDataRow, this.windowIndex, "type_long");
        if (value != null) {
            return ((Long) value).longValue();
        }
        return -1L;
    }

    public String getString(String str) {
        Object value = this.mDataHolder.getValue(str, this.mDataRow, this.windowIndex, "type_string");
        return value != null ? (String) value : "";
    }

    public final void getWindowIndex(int i) {
        Preconditions.checkArgument(i >= 0 && i < this.mDataHolder.getCount(), "rowNum is out of index");
        this.mDataRow = i;
        this.windowIndex = this.mDataHolder.getWindowIndex(i);
    }

    public boolean hasColumn(String str) {
        return this.mDataHolder.hasColumn(str);
    }

    public boolean hasNull(String str) {
        return this.mDataHolder.hasNull(str, this.mDataRow, this.windowIndex);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.mDataRow), Integer.valueOf(this.windowIndex), this.mDataHolder);
    }

    public boolean isDataValid() {
        return !this.mDataHolder.isClosed();
    }

    public Uri parseUri(String str) {
        String str2 = (String) this.mDataHolder.getValue(str, this.mDataRow, this.windowIndex, "type_string");
        if (str2 == null) {
            return null;
        }
        return Uri.parse(str2);
    }
}
