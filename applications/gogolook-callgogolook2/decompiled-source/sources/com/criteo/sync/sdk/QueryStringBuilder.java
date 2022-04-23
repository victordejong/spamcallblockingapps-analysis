package com.criteo.sync.sdk;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/QueryStringBuilder.class */
public class QueryStringBuilder {
    public static final String ENC = "UTF-8";
    public StringBuilder stringBuilder = new StringBuilder();

    public void append(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("name cannot be null");
        } else if (str2 != null) {
            if (this.stringBuilder.length() != 0) {
                this.stringBuilder.append('&');
            }
            try {
                this.stringBuilder.append(URLEncoder.encode(str, "UTF-8"));
                this.stringBuilder.append('=');
                this.stringBuilder.append(URLEncoder.encode(str2, "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        } else {
            throw new IllegalArgumentException("value cannot be null");
        }
    }

    public String toString() {
        return this.stringBuilder.toString();
    }
}
