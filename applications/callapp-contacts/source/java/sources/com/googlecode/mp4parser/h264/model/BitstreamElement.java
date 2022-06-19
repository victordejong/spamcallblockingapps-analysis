package com.googlecode.mp4parser.h264.model;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/model/BitstreamElement.class */
public abstract class BitstreamElement {
    public abstract void write(OutputStream outputStream) throws IOException;
}
