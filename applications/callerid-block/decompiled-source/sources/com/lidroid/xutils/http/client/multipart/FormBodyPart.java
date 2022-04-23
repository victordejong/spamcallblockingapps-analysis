package com.lidroid.xutils.http.client.multipart;

import com.lidroid.xutils.http.client.multipart.content.ContentBody;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/FormBodyPart.class */
public class FormBodyPart {
    private final ContentBody body;
    private final MinimalFieldHeader header;
    private final String name;

    public FormBodyPart(String str, ContentBody contentBody) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        } else if (contentBody != null) {
            this.name = str;
            this.body = contentBody;
            this.header = new MinimalFieldHeader();
            generateContentDisposition(contentBody);
            generateContentType(contentBody);
            generateTransferEncoding(contentBody);
        } else {
            throw new IllegalArgumentException("Body may not be null");
        }
    }

    public FormBodyPart(String str, ContentBody contentBody, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        } else if (contentBody != null) {
            this.name = str;
            this.body = contentBody;
            this.header = new MinimalFieldHeader();
            if (str2 != null) {
                addField(MIME.CONTENT_DISPOSITION, str2);
            } else {
                generateContentDisposition(contentBody);
            }
            generateContentType(contentBody);
            generateTransferEncoding(contentBody);
        } else {
            throw new IllegalArgumentException("Body may not be null");
        }
    }

    public void addField(String str, String str2) {
        if (str != null) {
            this.header.addField(new MinimalField(str, str2));
            return;
        }
        throw new IllegalArgumentException("Field name may not be null");
    }

    protected void generateContentDisposition(ContentBody contentBody) {
        StringBuilder sb = new StringBuilder();
        sb.append("form-data; name=\"");
        sb.append(getName());
        sb.append("\"");
        if (contentBody.getFilename() != null) {
            sb.append("; filename=\"");
            sb.append(contentBody.getFilename());
            sb.append("\"");
        }
        addField(MIME.CONTENT_DISPOSITION, sb.toString());
    }

    protected void generateContentType(ContentBody contentBody) {
        StringBuilder sb = new StringBuilder();
        sb.append(contentBody.getMimeType());
        if (contentBody.getCharset() != null) {
            sb.append("; charset=");
            sb.append(contentBody.getCharset());
        }
        addField(MIME.CONTENT_TYPE, sb.toString());
    }

    protected void generateTransferEncoding(ContentBody contentBody) {
        addField(MIME.CONTENT_TRANSFER_ENC, contentBody.getTransferEncoding());
    }

    public ContentBody getBody() {
        return this.body;
    }

    public MinimalFieldHeader getHeader() {
        return this.header;
    }

    public String getName() {
        return this.name;
    }
}
