package org.spongycastle.cms;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.asn1.ASN1SequenceParser;
import org.spongycastle.asn1.ASN1StreamParser;
import org.spongycastle.asn1.cms.ContentInfoParser;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSContentInfoParser.class */
public class CMSContentInfoParser {
    protected ContentInfoParser _contentInfo;
    protected InputStream _data;

    /* JADX INFO: Access modifiers changed from: protected */
    public CMSContentInfoParser(InputStream inputStream) throws CMSException {
        this._data = inputStream;
        try {
            this._contentInfo = new ContentInfoParser((ASN1SequenceParser) new ASN1StreamParser(inputStream).readObject());
        } catch (IOException e) {
            throw new CMSException("IOException reading content.", e);
        } catch (ClassCastException e2) {
            throw new CMSException("Unexpected object reading content.", e2);
        }
    }

    public void close() throws IOException {
        this._data.close();
    }
}
