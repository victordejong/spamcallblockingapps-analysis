package org.spongycastle.util;

import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/StreamParser.class */
public interface StreamParser {
    Object read() throws StreamParsingException;

    Collection readAll() throws StreamParsingException;
}
