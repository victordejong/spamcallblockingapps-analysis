package com.squareup.tape;

import java.io.File;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/squareup/tape/FileException.class */
public class FileException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final File f35003a;

    public FileException(String str, IOException iOException, File file) {
        super(str, iOException);
        this.f35003a = file;
    }
}
