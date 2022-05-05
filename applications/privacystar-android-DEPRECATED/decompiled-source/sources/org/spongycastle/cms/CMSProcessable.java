package org.spongycastle.cms;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSProcessable.class */
public interface CMSProcessable {
    Object getContent();

    void write(OutputStream outputStream) throws IOException, CMSException;
}
