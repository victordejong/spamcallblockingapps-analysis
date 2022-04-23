package com.google.firebase.encoders;

import java.io.IOException;
import java.io.Writer;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/a.class */
public interface a {
    String encode(Object obj);

    void encode(Object obj, Writer writer) throws IOException;
}
