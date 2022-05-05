package org.spongycastle.cms;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.spongycastle.util.p039io.Streams;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSProcessableInputStream.class */
class CMSProcessableInputStream implements CMSProcessable, CMSReadable {
    private InputStream input;
    private boolean used = false;

    public CMSProcessableInputStream(InputStream inputStream) {
        this.input = inputStream;
    }

    private void checkSingleUsage() {
        synchronized (this) {
            if (this.used) {
                throw new IllegalStateException("CMSProcessableInputStream can only be used once");
            }
            this.used = true;
        }
    }

    @Override // org.spongycastle.cms.CMSProcessable
    public Object getContent() {
        return getInputStream();
    }

    @Override // org.spongycastle.cms.CMSReadable
    public InputStream getInputStream() {
        checkSingleUsage();
        return this.input;
    }

    @Override // org.spongycastle.cms.CMSProcessable
    public void write(OutputStream outputStream) throws IOException, CMSException {
        checkSingleUsage();
        Streams.pipeAll(this.input, outputStream);
        this.input.close();
    }
}
