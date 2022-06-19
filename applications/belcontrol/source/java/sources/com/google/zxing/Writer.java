package com.google.zxing;

import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/zxing/Writer.class */
public interface Writer {
    BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2);

    BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map);
}
