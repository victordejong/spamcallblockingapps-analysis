package org.mp4parser.aspectj.a.b;

import org.mp4parser.aspectj.lang.reflect.d;
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/g.class */
final class g implements d {

    /* renamed from: a  reason: collision with root package name */
    Class f39358a;

    /* renamed from: b  reason: collision with root package name */
    String f39359b;

    /* renamed from: c  reason: collision with root package name */
    int f39360c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Class cls, String str, int i) {
        this.f39358a = cls;
        this.f39359b = str;
        this.f39360c = i;
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f39359b);
        stringBuffer.append(":");
        stringBuffer.append(this.f39360c);
        return stringBuffer.toString();
    }
}
