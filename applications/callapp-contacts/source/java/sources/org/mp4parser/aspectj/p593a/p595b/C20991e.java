package org.mp4parser.aspectj.p593a.p595b;

import java.lang.reflect.Modifier;
import org.apache.commons.lang3.StringUtils;
import org.mp4parser.aspectj.lang.reflect.AbstractC21003c;
/* renamed from: org.mp4parser.aspectj.a.b.e */
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/e.class */
public final class C20991e extends AbstractC20986a implements AbstractC21003c {

    /* renamed from: d */
    Class f67564d;

    public C20991e(int i, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        super(i, str, cls, clsArr, strArr, clsArr2);
        this.f67564d = cls2;
    }

    C20991e(String str) {
        super(str);
    }

    @Override // org.mp4parser.aspectj.p593a.p595b.AbstractC20992f
    /* renamed from: a */
    protected final String mo159a(C20996h c20996h) {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.f67569e == -1) {
            this.f67569e = Integer.parseInt(m160a(0), 16);
        }
        int i = this.f67569e;
        String str = "";
        if (c20996h.f67585d) {
            String modifier = Modifier.toString(i);
            if (modifier.length() != 0) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(modifier);
                stringBuffer2.append(StringUtils.SPACE);
                str = stringBuffer2.toString();
            }
        }
        stringBuffer.append(str);
        if (c20996h.f67583b) {
            if (this.f67564d == null) {
                this.f67564d = m157b(6);
            }
            stringBuffer.append(c20996h.m150a(this.f67564d));
        }
        if (c20996h.f67583b) {
            stringBuffer.append(StringUtils.SPACE);
        }
        Class m161a = m161a();
        if (this.f67571g == null) {
            this.f67571g = m161a().getName();
        }
        stringBuffer.append(c20996h.m149a(m161a, this.f67571g, c20996h.f67586e));
        stringBuffer.append(".");
        if (this.f67570f == null) {
            this.f67570f = m160a(1);
        }
        stringBuffer.append(this.f67570f);
        if (this.f67546a == null) {
            this.f67546a = m155c(3);
        }
        Class[] clsArr = this.f67546a;
        if (clsArr != null) {
            if (c20996h.f67583b) {
                stringBuffer.append("(");
                c20996h.m147a(stringBuffer, clsArr);
                stringBuffer.append(")");
            } else if (clsArr.length == 0) {
                stringBuffer.append("()");
            } else {
                stringBuffer.append("(..)");
            }
        }
        if (this.f67548c == null) {
            this.f67548c = m155c(5);
        }
        Class[] clsArr2 = this.f67548c;
        if (c20996h.f67584c && clsArr2 != null && clsArr2.length != 0) {
            stringBuffer.append(" throws ");
            c20996h.m147a(stringBuffer, clsArr2);
        }
        return stringBuffer.toString();
    }
}
