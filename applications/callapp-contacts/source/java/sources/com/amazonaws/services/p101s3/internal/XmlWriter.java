package com.amazonaws.services.p101s3.internal;

import com.amazonaws.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.internal.XmlWriter */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/XmlWriter.class */
public class XmlWriter {

    /* renamed from: c */
    static final /* synthetic */ boolean f12375c = true;

    /* renamed from: a */
    List<String> f12376a = new ArrayList();

    /* renamed from: b */
    StringBuilder f12377b = new StringBuilder();

    /* renamed from: a */
    private void m38395a(String str, String str2) {
        StringBuilder sb = this.f12377b;
        sb.append(' ');
        sb.append(str);
        sb.append("=\"");
        m38393a(str2, this.f12377b);
        this.f12377b.append("\"");
    }

    /* renamed from: a */
    private void m38393a(String str, StringBuilder sb) {
        int i;
        CharSequence charSequence = str;
        if (str == null) {
            charSequence = "";
        }
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i2);
            String str2 = charAt != '\t' ? charAt != '\n' ? charAt != '\r' ? charAt != '\"' ? charAt != '&' ? charAt != '<' ? charAt != '>' ? null : "&gt;" : "&lt;" : "&amp;" : "&quot;" : "&#13;" : "&#10;" : "&#9;";
            int i4 = i;
            if (str2 != null) {
                if (i < i2) {
                    sb.append((CharSequence) charSequence, i, i2);
                }
                this.f12377b.append(str2);
                i4 = i2 + 1;
            }
            i2++;
            i3 = i4;
        }
        if (i < i2) {
            this.f12377b.append((CharSequence) charSequence, i, i2);
        }
    }

    /* renamed from: a */
    public final XmlWriter m38397a() {
        if (f12375c || this.f12376a.size() > 0) {
            List<String> list = this.f12376a;
            String remove = list.remove(list.size() - 1);
            StringBuilder sb = this.f12377b;
            sb.append("</");
            sb.append(remove);
            sb.append(">");
            return this;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public final XmlWriter m38396a(String str) {
        StringBuilder sb = this.f12377b;
        sb.append("<");
        sb.append(str);
        sb.append(">");
        this.f12376a.add(str);
        return this;
    }

    /* renamed from: a */
    public final XmlWriter m38394a(String str, String str2, String str3) {
        StringBuilder sb = this.f12377b;
        sb.append("<");
        sb.append(str);
        m38395a(str2, str3);
        this.f12377b.append(">");
        this.f12376a.add(str);
        return this;
    }

    /* renamed from: a */
    public final XmlWriter m38392a(String str, String[] strArr, String[] strArr2) {
        StringBuilder sb = this.f12377b;
        sb.append("<");
        sb.append(str);
        for (int i = 0; i < Math.min(2, 2); i++) {
            m38395a(strArr[i], strArr2[i]);
        }
        this.f12377b.append(">");
        this.f12376a.add(str);
        return this;
    }

    /* renamed from: b */
    public final XmlWriter m38390b(String str) {
        m38393a(str, this.f12377b);
        return this;
    }

    /* renamed from: b */
    public final byte[] m38391b() {
        if (f12375c || this.f12376a.size() == 0) {
            return toString().getBytes(StringUtils.f12513a);
        }
        throw new AssertionError();
    }

    public String toString() {
        return this.f12377b.toString();
    }
}
