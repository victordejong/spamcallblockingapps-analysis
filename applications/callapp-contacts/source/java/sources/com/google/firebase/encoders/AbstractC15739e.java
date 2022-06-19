package com.google.firebase.encoders;

import java.io.IOException;
/* renamed from: com.google.firebase.encoders.e */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/e.class */
public interface AbstractC15739e {
    AbstractC15739e add(C15736c c15736c, int i) throws IOException;

    AbstractC15739e add(C15736c c15736c, long j) throws IOException;

    AbstractC15739e add(C15736c c15736c, Object obj) throws IOException;

    AbstractC15739e add(C15736c c15736c, boolean z) throws IOException;

    @Deprecated
    AbstractC15739e add(String str, int i) throws IOException;

    @Deprecated
    AbstractC15739e add(String str, Object obj) throws IOException;
}
