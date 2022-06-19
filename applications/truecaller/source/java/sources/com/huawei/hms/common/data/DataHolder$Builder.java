package com.huawei.hms.common.data;

import android.content.ContentValues;
import android.os.Bundle;
import com.huawei.hms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/data/DataHolder$Builder.class */
public class DataHolder$Builder {
    private String[] builderColumns;
    private final ArrayList<HashMap<String, Object>> dataCollectionList;
    private final String type;
    private final HashMap<Object, Integer> typeAndDataCollectionCountMapping;

    private DataHolder$Builder(String[] strArr, String str) {
        Preconditions.checkNotNull(strArr, "builderColumnsP cannot be null");
        this.builderColumns = strArr;
        this.dataCollectionList = new ArrayList<>();
        this.type = str;
        this.typeAndDataCollectionCountMapping = new HashMap<>();
    }

    public DataHolder$Builder(String[] strArr, String str, DataHolderBuilderCreator dataHolderBuilderCreator) {
        this(strArr, null);
    }

    public DataHolder build(int i) {
        return new DataHolder(this, i, (Bundle) null, (DataHolder$1) null);
    }

    public DataHolder build(int i, Bundle bundle) {
        return new DataHolder(this, i, bundle, -1, (DataHolder$1) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hms.common.data.DataHolder$Builder setDataForContentValuesHashMap(java.util.HashMap<java.lang.String, java.lang.Object> r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "contentValuesHashMap cannot be null"
            java.lang.Object r0 = com.huawei.hms.common.internal.Preconditions.checkNotNull(r0, r1)
            r0 = r4
            java.lang.String r0 = r0.type
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L4d
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L4d
            r0 = r4
            java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.typeAndDataCollectionCountMapping
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.Integer r0 = (java.lang.Integer) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L3a
            r0 = r8
            int r0 = r0.intValue()
            r9 = r0
            r0 = 1
            r7 = r0
            goto L50
        L3a:
            r0 = r4
            java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.typeAndDataCollectionCountMapping
            r1 = r6
            r2 = r4
            java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r2 = r2.dataCollectionList
            int r2 = r2.size()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
        L4d:
            r0 = 0
            r9 = r0
        L50:
            r0 = r7
            if (r0 == 0) goto L6b
            r0 = r4
            java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.dataCollectionList
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)
            r0 = r4
            java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.dataCollectionList
            r1 = r9
            r2 = r5
            r0.add(r1, r2)
            goto L74
        L6b:
            r0 = r4
            java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.dataCollectionList
            r1 = r5
            boolean r0 = r0.add(r1)
        L74:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.data.DataHolder$Builder.setDataForContentValuesHashMap(java.util.HashMap):com.huawei.hms.common.data.DataHolder$Builder");
    }

    public DataHolder$Builder withRow(ContentValues contentValues) {
        Preconditions.checkNotNull(contentValues, "contentValues cannot be null");
        HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
        for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
            hashMap.put(entry.getKey(), entry.getValue());
        }
        return setDataForContentValuesHashMap(hashMap);
    }
}
