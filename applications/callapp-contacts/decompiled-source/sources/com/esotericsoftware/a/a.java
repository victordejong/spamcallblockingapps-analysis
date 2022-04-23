package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final int f18880a;

    /* renamed from: b  reason: collision with root package name */
    protected a f18881b;

    public a(int i) {
        this(i, null);
    }

    public a(int i, a aVar) {
        if (i == 262144 || i == 327680) {
            this.f18880a = i;
            this.f18881b = aVar;
            return;
        }
        throw new IllegalArgumentException();
    }

    public a a(String str) {
        a aVar = this.f18881b;
        if (aVar != null) {
            return aVar.a(str);
        }
        return null;
    }

    public a a(String str, String str2) {
        a aVar = this.f18881b;
        if (aVar != null) {
            return aVar.a(str, str2);
        }
        return null;
    }

    public void a() {
        a aVar = this.f18881b;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void a(String str, Object obj) {
        a aVar = this.f18881b;
        if (aVar != null) {
            aVar.a(str, obj);
        }
    }

    public void a(String str, String str2, String str3) {
        a aVar = this.f18881b;
        if (aVar != null) {
            aVar.a(str, str2, str3);
        }
    }
}
