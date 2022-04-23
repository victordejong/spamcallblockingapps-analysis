package org.mp4parser.aspectj.a.b;

import java.lang.reflect.Modifier;
import org.apache.commons.lang3.StringUtils;
import org.mp4parser.aspectj.lang.reflect.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/e.class */
public final class e extends a implements c {

    /* renamed from: d  reason: collision with root package name */
    Class f39354d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(int i, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        super(i, str, cls, clsArr, strArr, clsArr2);
        this.f39354d = cls2;
    }

    e(String str) {
        super(str);
    }

    @Override // org.mp4parser.aspectj.a.b.f
    protected final String a(h hVar) {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.e == -1) {
            this.e = Integer.parseInt(a(0), 16);
        }
        int i = this.e;
        String str = "";
        if (hVar.f39364d) {
            String modifier = Modifier.toString(i);
            if (modifier.length() != 0) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(modifier);
                stringBuffer2.append(StringUtils.SPACE);
                str = stringBuffer2.toString();
            }
        }
        stringBuffer.append(str);
        if (hVar.f39362b) {
            if (this.f39354d == null) {
                this.f39354d = b(6);
            }
            stringBuffer.append(hVar.a(this.f39354d));
        }
        if (hVar.f39362b) {
            stringBuffer.append(StringUtils.SPACE);
        }
        Class a2 = a();
        if (this.g == null) {
            this.g = a().getName();
        }
        stringBuffer.append(hVar.a(a2, this.g, hVar.e));
        stringBuffer.append(".");
        if (this.f == null) {
            this.f = a(1);
        }
        stringBuffer.append(this.f);
        if (this.f39339a == null) {
            this.f39339a = c(3);
        }
        Class[] clsArr = this.f39339a;
        if (clsArr != null) {
            if (hVar.f39362b) {
                stringBuffer.append("(");
                hVar.a(stringBuffer, clsArr);
                stringBuffer.append(")");
            } else if (clsArr.length == 0) {
                stringBuffer.append("()");
            } else {
                stringBuffer.append("(..)");
            }
        }
        if (this.f39341c == null) {
            this.f39341c = c(5);
        }
        Class[] clsArr2 = this.f39341c;
        if (!(!hVar.f39363c || clsArr2 == null || clsArr2.length == 0)) {
            stringBuffer.append(" throws ");
            hVar.a(stringBuffer, clsArr2);
        }
        return stringBuffer.toString();
    }
}
