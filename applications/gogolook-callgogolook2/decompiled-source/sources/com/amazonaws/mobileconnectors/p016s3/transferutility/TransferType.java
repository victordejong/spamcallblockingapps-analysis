package com.amazonaws.mobileconnectors.p016s3.transferutility;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferType */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferType.class */
public enum TransferType {
    UPLOAD,
    DOWNLOAD,
    ANY;

    public static TransferType getType(String str) {
        if (str.equalsIgnoreCase(UPLOAD.toString())) {
            return UPLOAD;
        }
        if (str.equalsIgnoreCase(DOWNLOAD.toString())) {
            return DOWNLOAD;
        }
        if (str.equalsIgnoreCase(ANY.toString())) {
            return ANY;
        }
        throw new IllegalArgumentException("Type " + str + " is not a recognized type");
    }
}
