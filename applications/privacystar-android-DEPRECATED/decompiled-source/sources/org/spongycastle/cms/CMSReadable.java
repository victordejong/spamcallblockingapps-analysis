package org.spongycastle.cms;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSReadable.class */
interface CMSReadable {
    InputStream getInputStream() throws IOException, CMSException;
}
