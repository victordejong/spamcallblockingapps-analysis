package com.amazonaws.internal;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/CRC32MismatchException.class */
public class CRC32MismatchException extends IOException {
    public CRC32MismatchException(String str) {
        super(str);
    }

    public CRC32MismatchException(String str, Throwable th) {
        super(str, th);
    }
}
