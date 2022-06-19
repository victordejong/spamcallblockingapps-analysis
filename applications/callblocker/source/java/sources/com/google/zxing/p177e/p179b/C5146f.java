package com.google.zxing.p177e.p179b;

import com.google.zxing.p177e.p178a.C5137c;
import com.google.zxing.p177e.p178a.EnumC5135a;
import com.google.zxing.p177e.p178a.EnumC5136b;
/* renamed from: com.google.zxing.e.b.f */
/* loaded from: classes-dex2jar.jar:com/google/zxing/e/b/f.class */
public final class C5146f {

    /* renamed from: a */
    private EnumC5136b f21730a;

    /* renamed from: b */
    private EnumC5135a f21731b;

    /* renamed from: c */
    private C5137c f21732c;

    /* renamed from: d */
    private int f21733d = -1;

    /* renamed from: e */
    private C5141b f21734e;

    /* renamed from: b */
    public static boolean m1314b(int i) {
        return i >= 0 && i < 8;
    }

    /* renamed from: a */
    public C5141b m1320a() {
        return this.f21734e;
    }

    /* renamed from: a */
    public void m1319a(int i) {
        this.f21733d = i;
    }

    /* renamed from: a */
    public void m1318a(EnumC5135a enumC5135a) {
        this.f21731b = enumC5135a;
    }

    /* renamed from: a */
    public void m1317a(EnumC5136b enumC5136b) {
        this.f21730a = enumC5136b;
    }

    /* renamed from: a */
    public void m1316a(C5137c c5137c) {
        this.f21732c = c5137c;
    }

    /* renamed from: a */
    public void m1315a(C5141b c5141b) {
        this.f21734e = c5141b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f21730a);
        sb.append("\n ecLevel: ");
        sb.append(this.f21731b);
        sb.append("\n version: ");
        sb.append(this.f21732c);
        sb.append("\n maskPattern: ");
        sb.append(this.f21733d);
        if (this.f21734e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f21734e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
