package com.google.firebase.encoders;

import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/e.class */
public interface e {
    e add(c cVar, int i) throws IOException;

    e add(c cVar, long j) throws IOException;

    e add(c cVar, Object obj) throws IOException;

    e add(c cVar, boolean z) throws IOException;

    @Deprecated
    e add(String str, int i) throws IOException;

    @Deprecated
    e add(String str, Object obj) throws IOException;
}
