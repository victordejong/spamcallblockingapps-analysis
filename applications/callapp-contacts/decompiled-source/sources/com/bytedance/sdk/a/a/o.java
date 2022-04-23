package com.bytedance.sdk.a.a;

import io.objectbox.model.PropertyFlags;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f7815a;

    /* renamed from: b  reason: collision with root package name */
    int f7816b;

    /* renamed from: c  reason: collision with root package name */
    int f7817c;

    /* renamed from: d  reason: collision with root package name */
    boolean f7818d;
    boolean e;
    o f;
    o g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o() {
        this.f7815a = new byte[PropertyFlags.UNSIGNED];
        this.e = true;
        this.f7818d = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f7815a = bArr;
        this.f7816b = i;
        this.f7817c = i2;
        this.f7818d = z;
        this.e = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a() {
        this.f7818d = true;
        return new o(this.f7815a, this.f7816b, this.f7817c, true, false);
    }

    public final o a(int i) {
        o oVar;
        if (i <= 0 || i > this.f7817c - this.f7816b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            oVar = a();
        } else {
            oVar = p.a();
            System.arraycopy(this.f7815a, this.f7816b, oVar.f7815a, 0, i);
        }
        oVar.f7817c = oVar.f7816b + i;
        this.f7816b += i;
        this.g.a(oVar);
        return oVar;
    }

    public final o a(o oVar) {
        oVar.g = this;
        oVar.f = this.f;
        this.f.g = oVar;
        this.f = oVar;
        return oVar;
    }

    public final void a(o oVar, int i) {
        if (oVar.e) {
            int i2 = oVar.f7817c;
            if (i2 + i > 8192) {
                if (!oVar.f7818d) {
                    int i3 = oVar.f7816b;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = oVar.f7815a;
                        System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                        oVar.f7817c -= oVar.f7816b;
                        oVar.f7816b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f7815a, this.f7816b, oVar.f7815a, oVar.f7817c, i);
            oVar.f7817c += i;
            this.f7816b += i;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final o b() {
        o oVar = this.f;
        o oVar2 = oVar != this ? oVar : null;
        o oVar3 = this.g;
        oVar3.f = oVar;
        this.f.g = oVar3;
        this.f = null;
        this.g = null;
        return oVar2;
    }

    public final void c() {
        o oVar = this.g;
        if (oVar == this) {
            throw new IllegalStateException();
        } else if (oVar.e) {
            int i = this.f7817c - this.f7816b;
            if (i <= (PropertyFlags.UNSIGNED - oVar.f7817c) + (oVar.f7818d ? 0 : oVar.f7816b)) {
                a(oVar, i);
                b();
                p.a(this);
            }
        }
    }
}
