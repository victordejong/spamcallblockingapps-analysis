package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/j.class */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    protected final int f18904a;

    /* renamed from: b  reason: collision with root package name */
    protected j f18905b;

    public j(int i) {
        this(i, null);
    }

    public j(int i, j jVar) {
        if (i == 262144 || i == 327680) {
            this.f18904a = i;
            this.f18905b = jVar;
            return;
        }
        throw new IllegalArgumentException();
    }

    public a a(int i, u uVar, String str, boolean z) {
        if (this.f18904a >= 327680) {
            j jVar = this.f18905b;
            if (jVar != null) {
                return jVar.a(i, uVar, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public a a(String str, boolean z) {
        j jVar = this.f18905b;
        if (jVar != null) {
            return jVar.a(str, z);
        }
        return null;
    }

    public void a(c cVar) {
        j jVar = this.f18905b;
        if (jVar != null) {
            jVar.a(cVar);
        }
    }
}
