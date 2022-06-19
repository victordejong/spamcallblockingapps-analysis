package org.xutils.image;
/* renamed from: org.xutils.image.b */
/* loaded from: classes2-dex2jar.jar:org/xutils/image/b.class */
public final class C9677b {

    /* renamed from: a */
    public final String f40880a;

    /* renamed from: b */
    public final ImageOptions f40881b;

    public C9677b(String str, ImageOptions imageOptions) {
        this.f40880a = str;
        this.f40881b = imageOptions;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C9677b.class != obj.getClass()) {
            return false;
        }
        C9677b c9677b = (C9677b) obj;
        if (this.f40880a.equals(c9677b.f40880a)) {
            return this.f40881b.equals(c9677b.f40881b);
        }
        return false;
    }

    public int hashCode() {
        return (this.f40880a.hashCode() * 31) + this.f40881b.hashCode();
    }

    public String toString() {
        return this.f40880a + this.f40881b.toString();
    }
}
