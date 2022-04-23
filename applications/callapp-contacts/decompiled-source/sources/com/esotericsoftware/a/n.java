package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/n.class */
final class n {

    /* renamed from: a  reason: collision with root package name */
    p f18916a;

    /* renamed from: b  reason: collision with root package name */
    p f18917b;

    /* renamed from: c  reason: collision with root package name */
    p f18918c;

    /* renamed from: d  reason: collision with root package name */
    String f18919d;
    int e;
    n f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n a(n nVar, p pVar, p pVar2) {
        if (nVar == null) {
            return null;
        }
        nVar.f = a(nVar.f, pVar, pVar2);
        int i = nVar.f18916a.f18926c;
        int i2 = nVar.f18917b.f18926c;
        int i3 = pVar.f18926c;
        int i4 = pVar2 == null ? Integer.MAX_VALUE : pVar2.f18926c;
        n nVar2 = nVar;
        if (i3 < i2) {
            nVar2 = nVar;
            if (i4 > i) {
                if (i3 <= i) {
                    if (i4 >= i2) {
                        nVar2 = nVar.f;
                    } else {
                        nVar.f18916a = pVar2;
                        nVar2 = nVar;
                    }
                } else if (i4 >= i2) {
                    nVar.f18917b = pVar;
                    nVar2 = nVar;
                } else {
                    n nVar3 = new n();
                    nVar3.f18916a = pVar2;
                    nVar3.f18917b = nVar.f18917b;
                    nVar3.f18918c = nVar.f18918c;
                    nVar3.f18919d = nVar.f18919d;
                    nVar3.e = nVar.e;
                    nVar3.f = nVar.f;
                    nVar.f18917b = pVar;
                    nVar.f = nVar3;
                    nVar2 = nVar;
                }
            }
        }
        return nVar2;
    }
}
