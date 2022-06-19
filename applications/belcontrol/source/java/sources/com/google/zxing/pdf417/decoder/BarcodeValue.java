package com.google.zxing.pdf417.decoder;

import com.google.zxing.pdf417.PDF417Common;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/zxing/pdf417/decoder/BarcodeValue.class */
public final class BarcodeValue {
    private final Map<Integer, Integer> values = new HashMap();

    public Integer getConfidence(int i) {
        return this.values.get(Integer.valueOf(i));
    }

    public int[] getValue() {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        for (Map.Entry<Integer, Integer> entry : this.values.entrySet()) {
            if (entry.getValue().intValue() > i) {
                i = entry.getValue().intValue();
                arrayList.clear();
            } else if (entry.getValue().intValue() == i) {
            }
            arrayList.add(entry.getKey());
        }
        return PDF417Common.toIntArray(arrayList);
    }

    public void setValue(int i) {
        Integer num = this.values.get(Integer.valueOf(i));
        Integer num2 = num;
        if (num == null) {
            num2 = 0;
        }
        this.values.put(Integer.valueOf(i), Integer.valueOf(num2.intValue() + 1));
    }
}
