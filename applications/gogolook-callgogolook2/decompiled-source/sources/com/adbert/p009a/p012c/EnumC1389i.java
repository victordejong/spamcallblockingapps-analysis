package com.adbert.p009a.p012c;
/* renamed from: com.adbert.a.c.i */
/* loaded from: classes-dex2jar.jar:com/adbert/a/c/i.class */
public enum EnumC1389i {
    init(-1),
    download(0),
    url(1),
    phone(2),
    fb(3),
    line(4);
    

    /* renamed from: g */
    public int f640g;

    EnumC1389i(int i) {
        this.f640g = i;
    }

    /* renamed from: a */
    public int m37182a() {
        return this.f640g;
    }

    /* renamed from: a */
    public String m37181a(int i) {
        EnumC1389i[] values;
        for (EnumC1389i iVar : values()) {
            if (iVar.m37182a() == i) {
                return iVar.toString();
            }
        }
        return null;
    }

    /* renamed from: b */
    public EnumC1389i m37180b(int i) {
        EnumC1389i[] values;
        for (EnumC1389i iVar : values()) {
            if (iVar.m37182a() == i) {
                return iVar;
            }
        }
        return this;
    }
}
