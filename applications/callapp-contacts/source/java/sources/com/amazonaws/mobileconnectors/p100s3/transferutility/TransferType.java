package com.amazonaws.mobileconnectors.p100s3.transferutility;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferType */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferType.class */
public enum TransferType {
    UPLOAD,
    DOWNLOAD,
    ANY;

    public static TransferType getType(String str) {
        TransferType transferType = UPLOAD;
        if (str.equalsIgnoreCase(transferType.toString())) {
            return transferType;
        }
        TransferType transferType2 = DOWNLOAD;
        if (str.equalsIgnoreCase(transferType2.toString())) {
            return transferType2;
        }
        TransferType transferType3 = ANY;
        if (str.equalsIgnoreCase(transferType3.toString())) {
            return transferType3;
        }
        throw new IllegalArgumentException("Type " + str + " is not a recognized type");
    }
}
