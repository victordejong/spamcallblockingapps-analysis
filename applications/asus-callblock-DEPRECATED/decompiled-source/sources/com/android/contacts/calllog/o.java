package com.android.contacts.calllog;

import android.net.Uri;
import android.text.TextUtils;
import com.android.contacts.util.UriUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/o.class */
public final class o {
    public static o w = new o();

    /* renamed from: a  reason: collision with root package name */
    public Uri f737a;

    /* renamed from: b  reason: collision with root package name */
    public String f738b;
    public int c;
    public String d;
    public String e;
    public String f;
    public String g;
    public long h;
    public Uri i;
    public int j;
    public String m;
    public String n;
    public String o;
    public int p;
    public long q;
    public int r;
    public String s;
    public long v;
    public int k = -2;
    public int l = 0;
    public boolean t = false;
    public boolean u = false;

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null) {
                z = false;
            } else if (getClass() != obj.getClass()) {
                z = false;
            } else {
                o oVar = (o) obj;
                if (!UriUtils.areEqual(this.f737a, oVar.f737a)) {
                    z = false;
                } else if (!TextUtils.equals(this.f738b, oVar.f738b)) {
                    z = false;
                } else if (this.c != oVar.c) {
                    z = false;
                } else if (!TextUtils.equals(this.d, oVar.d)) {
                    z = false;
                } else if (!TextUtils.equals(this.e, oVar.e)) {
                    z = false;
                } else if (!TextUtils.equals(this.f, oVar.f)) {
                    z = false;
                } else if (!TextUtils.equals(this.g, oVar.g)) {
                    z = false;
                } else if (this.h != oVar.h) {
                    z = false;
                } else if (!UriUtils.areEqual(this.i, oVar.i)) {
                    z = false;
                } else if (this.l != oVar.l) {
                    z = false;
                } else if (this.j != oVar.j) {
                    z = false;
                } else if (!TextUtils.equals(this.s, oVar.s)) {
                    z = false;
                } else if (this.t != oVar.t) {
                    z = false;
                } else if (this.v != oVar.v) {
                    z = false;
                } else if (this.u != oVar.u) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = this.f737a == null ? 0 : this.f737a.hashCode();
        if (this.f738b != null) {
            i = this.f738b.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }
}
