package com.google.zxing.e.b;

import com.google.zxing.e.a.a;
import com.google.zxing.e.a.b;
import com.google.zxing.e.a.c;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    b f33032a;

    /* renamed from: b  reason: collision with root package name */
    a f33033b;

    /* renamed from: c  reason: collision with root package name */
    c f33034c;

    /* renamed from: d  reason: collision with root package name */
    int f33035d = -1;
    public b e;

    public final String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f33032a);
        sb.append("\n ecLevel: ");
        sb.append(this.f33033b);
        sb.append("\n version: ");
        sb.append(this.f33034c);
        sb.append("\n maskPattern: ");
        sb.append(this.f33035d);
        if (this.e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
