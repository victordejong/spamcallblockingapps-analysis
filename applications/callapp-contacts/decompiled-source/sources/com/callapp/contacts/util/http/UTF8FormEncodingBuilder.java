package com.callapp.contacts.util.http;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import okhttp3.MediaType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/UTF8FormEncodingBuilder.class */
public final class UTF8FormEncodingBuilder {

    /* renamed from: a  reason: collision with root package name */
    static final MediaType f16262a = MediaType.parse("application/x-www-form-urlencoded; charset=utf-8");

    /* renamed from: b  reason: collision with root package name */
    final StringBuilder f16263b = new StringBuilder();

    public final UTF8FormEncodingBuilder a(String str, String str2) {
        if (this.f16263b.length() > 0) {
            this.f16263b.append('&');
        }
        try {
            StringBuilder sb = this.f16263b;
            sb.append(URLEncoder.encode(str, "UTF-8"));
            sb.append('=');
            sb.append(URLEncoder.encode(str2, "UTF-8"));
            return this;
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
