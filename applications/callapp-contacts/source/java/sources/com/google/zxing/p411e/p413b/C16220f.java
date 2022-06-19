package com.google.zxing.p411e.p413b;

import com.google.zxing.p411e.p412a.C16211c;
import com.google.zxing.p411e.p412a.EnumC16209a;
import com.google.zxing.p411e.p412a.EnumC16210b;
/* renamed from: com.google.zxing.e.b.f */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/f.class */
public final class C16220f {

    /* renamed from: a */
    EnumC16210b f57232a;

    /* renamed from: b */
    EnumC16209a f57233b;

    /* renamed from: c */
    C16211c f57234c;

    /* renamed from: d */
    int f57235d = -1;

    /* renamed from: e */
    public C16215b f57236e;

    public final String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f57232a);
        sb.append("\n ecLevel: ");
        sb.append(this.f57233b);
        sb.append("\n version: ");
        sb.append(this.f57234c);
        sb.append("\n maskPattern: ");
        sb.append(this.f57235d);
        if (this.f57236e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f57236e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
