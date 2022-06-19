package com.google.zxing;

import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/Writer.class */
public interface Writer {
    BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException;

    BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException;
}
