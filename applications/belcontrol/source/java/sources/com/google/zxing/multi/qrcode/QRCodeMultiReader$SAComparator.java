package com.google.zxing.multi.qrcode;

import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator.class */
public final class QRCodeMultiReader$SAComparator implements Serializable, Comparator<Result> {
    private QRCodeMultiReader$SAComparator() {
    }

    public int compare(Result result, Result result2) {
        Map<ResultMetadataType, Object> resultMetadata = result.getResultMetadata();
        ResultMetadataType resultMetadataType = ResultMetadataType.STRUCTURED_APPEND_SEQUENCE;
        return Integer.compare(((Integer) resultMetadata.get(resultMetadataType)).intValue(), ((Integer) result2.getResultMetadata().get(resultMetadataType)).intValue());
    }
}
