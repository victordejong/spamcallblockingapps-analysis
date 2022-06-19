package com.callapp.contacts.util.http;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import okhttp3.MediaType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/UTF8FormEncodingBuilder.class */
public final class UTF8FormEncodingBuilder {

    /* renamed from: a */
    static final MediaType f28347a = MediaType.parse("application/x-www-form-urlencoded; charset=utf-8");

    /* renamed from: b */
    final StringBuilder f28348b = new StringBuilder();

    /* renamed from: a */
    public final UTF8FormEncodingBuilder m26937a(String str, String str2) {
        if (this.f28348b.length() > 0) {
            this.f28348b.append('&');
        }
        try {
            StringBuilder sb = this.f28348b;
            sb.append(URLEncoder.encode(str, "UTF-8"));
            sb.append('=');
            sb.append(URLEncoder.encode(str2, "UTF-8"));
            return this;
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
