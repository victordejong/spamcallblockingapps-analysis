package com.google.protobuf;

import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/CodedOutputStream$OutOfSpaceException.class */
public class CodedOutputStream$OutOfSpaceException extends IOException {
    private static final String MESSAGE = "CodedOutputStream was writing to a flat byte array and ran out of space.";
    private static final long serialVersionUID = -6947486886997889499L;

    public CodedOutputStream$OutOfSpaceException() {
        super(MESSAGE);
    }

    public CodedOutputStream$OutOfSpaceException(String str) {
        super(C22128a.m8543z2("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str));
    }

    public CodedOutputStream$OutOfSpaceException(String str, Throwable th) {
        super(C22128a.m8543z2("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), th);
    }

    public CodedOutputStream$OutOfSpaceException(Throwable th) {
        super(MESSAGE, th);
    }
}
