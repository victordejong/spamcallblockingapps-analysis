package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.client.util.URLEncodedUtils;
import com.lidroid.xutils.util.LogUtils;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.message.BasicNameValuePair;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/entity/BodyParamsEntity.class */
public class BodyParamsEntity extends AbstractHttpEntity implements Cloneable {
    private String charset;
    protected byte[] content;
    private boolean dirty;
    private List<NameValuePair> params;

    public BodyParamsEntity() {
        this((String) null);
    }

    public BodyParamsEntity(String str) {
        this.dirty = true;
        this.charset = "UTF-8";
        if (str != null) {
            this.charset = str;
        }
        setContentType(URLEncodedUtils.CONTENT_TYPE);
        this.params = new ArrayList();
    }

    public BodyParamsEntity(List<NameValuePair> list) {
        this(list, null);
    }

    public BodyParamsEntity(List<NameValuePair> list, String str) {
        this.dirty = true;
        this.charset = "UTF-8";
        if (str != null) {
            this.charset = str;
        }
        setContentType(URLEncodedUtils.CONTENT_TYPE);
        this.params = list;
        refreshContent();
    }

    private void refreshContent() {
        if (this.dirty) {
            try {
                this.content = URLEncodedUtils.format((List<? extends NameValuePair>) this.params, this.charset).getBytes(this.charset);
            } catch (UnsupportedEncodingException e) {
                LogUtils.m2008e(e.getMessage(), e);
            }
            this.dirty = false;
        }
    }

    public BodyParamsEntity addParameter(String str, String str2) {
        this.params.add(new BasicNameValuePair(str, str2));
        this.dirty = true;
        return this;
    }

    public BodyParamsEntity addParams(List<NameValuePair> list) {
        this.params.addAll(list);
        this.dirty = true;
        return this;
    }

    public Object clone() {
        return super.clone();
    }

    public InputStream getContent() {
        refreshContent();
        return new ByteArrayInputStream(this.content);
    }

    public long getContentLength() {
        refreshContent();
        return this.content.length;
    }

    public boolean isRepeatable() {
        return true;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) {
        if (outputStream != null) {
            refreshContent();
            outputStream.write(this.content);
            outputStream.flush();
            return;
        }
        throw new IllegalArgumentException("Output stream may not be null");
    }
}
