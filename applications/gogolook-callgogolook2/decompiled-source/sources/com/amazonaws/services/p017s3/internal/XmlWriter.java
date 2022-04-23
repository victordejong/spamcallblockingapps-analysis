package com.amazonaws.services.p017s3.internal;

import com.amazonaws.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.internal.XmlWriter */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/XmlWriter.class */
public class XmlWriter {
    public List<String> tags = new ArrayList();

    /* renamed from: sb */
    public StringBuilder f816sb = new StringBuilder();

    public final void appendEscapedString(String str, StringBuilder sb) {
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
                this.f816sb.append(str3);
                i2 = i + 1;
            }
            i++;
        }
        if (i2 < i) {
            this.f816sb.append((CharSequence) str2, i2, i);
        }
    }

    public XmlWriter end() {
        List<String> list = this.tags;
        String remove = list.remove(list.size() - 1);
        StringBuilder sb = this.f816sb;
        sb.append("</");
        sb.append(remove);
        sb.append(">");
        return this;
    }

    public byte[] getBytes() {
        return toString().getBytes(StringUtils.UTF8);
    }

    public XmlWriter start(String str) {
        StringBuilder sb = this.f816sb;
        sb.append("<");
        sb.append(str);
        sb.append(">");
        this.tags.add(str);
        return this;
    }

    public String toString() {
        return this.f816sb.toString();
    }

    public XmlWriter value(String str) {
        appendEscapedString(str, this.f816sb);
        return this;
    }
}
