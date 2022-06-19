package androidx.constraintlayout.core.parser;

import android.support.p012v4.media.C0082b;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/core/parser/CLParsingException.class */
public class CLParsingException extends Exception {
    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("CLParsingException (");
        m8752j.append(hashCode());
        m8752j.append(") : ");
        m8752j.append("null (null at line 0)");
        return m8752j.toString();
    }
}
