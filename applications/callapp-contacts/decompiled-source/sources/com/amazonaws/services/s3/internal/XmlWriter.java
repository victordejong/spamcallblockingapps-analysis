package com.amazonaws.services.s3.internal;

import com.amazonaws.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/XmlWriter.class */
public class XmlWriter {

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f6832c = true;

    /* renamed from: a  reason: collision with root package name */
    List<String> f6833a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    StringBuilder f6834b = new StringBuilder();

    private void a(String str, String str2) {
        StringBuilder sb = this.f6834b;
        sb.append(' ');
        sb.append(str);
        sb.append("=\"");
        a(str2, this.f6834b);
        this.f6834b.append("\"");
    }

    private void a(String str, StringBuilder sb) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        int length = str2.length();
        int i = 0;
        int i2 = 0;
        while (i < length) {
            char charAt = str2.charAt(i);
            String str3 = charAt != '\t' ? charAt != '\n' ? charAt != '\r' ? charAt != '\"' ? charAt != '&' ? charAt != '<' ? charAt != '>' ? null : "&gt;" : "&lt;" : "&amp;" : "&quot;" : "&#13;" : "&#10;" : "&#9;";
            i2 = i2;
            if (str3 != null) {
                if (i2 < i) {
                    sb.append((CharSequence) str2, i2, i);
                }
                this.f6834b.append(str3);
                i2 = i + 1;
            }
            i++;
        }
        if (i2 < i) {
            this.f6834b.append((CharSequence) str2, i2, i);
        }
    }

    public final XmlWriter a() {
        if (f6832c || this.f6833a.size() > 0) {
            List<String> list = this.f6833a;
            String remove = list.remove(list.size() - 1);
            StringBuilder sb = this.f6834b;
            sb.append("</");
            sb.append(remove);
            sb.append(">");
            return this;
        }
        throw new AssertionError();
    }

    public final XmlWriter a(String str) {
        StringBuilder sb = this.f6834b;
        sb.append("<");
        sb.append(str);
        sb.append(">");
        this.f6833a.add(str);
        return this;
    }

    public final XmlWriter a(String str, String str2, String str3) {
        StringBuilder sb = this.f6834b;
        sb.append("<");
        sb.append(str);
        a(str2, str3);
        this.f6834b.append(">");
        this.f6833a.add(str);
        return this;
    }

    public final XmlWriter a(String str, String[] strArr, String[] strArr2) {
        StringBuilder sb = this.f6834b;
        sb.append("<");
        sb.append(str);
        for (int i = 0; i < Math.min(2, 2); i++) {
            a(strArr[i], strArr2[i]);
        }
        this.f6834b.append(">");
        this.f6833a.add(str);
        return this;
    }

    public final XmlWriter b(String str) {
        a(str, this.f6834b);
        return this;
    }

    public final byte[] b() {
        if (f6832c || this.f6833a.size() == 0) {
            return toString().getBytes(StringUtils.f6920a);
        }
        throw new AssertionError();
    }

    public String toString() {
        return this.f6834b.toString();
    }
}
