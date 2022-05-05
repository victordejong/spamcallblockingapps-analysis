package org.spongycastle.util.p039io.pem;

import java.io.IOException;
/* renamed from: org.spongycastle.util.io.pem.PemObjectParser */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/io/pem/PemObjectParser.class */
public interface PemObjectParser {
    Object parseObject(PemObject pemObject) throws IOException;
}
