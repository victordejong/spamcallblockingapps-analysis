package com.squareup.picasso;

import android.widget.RemoteViews;
/* renamed from: com.squareup.picasso.v */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/v.class */
class C0203v {

    /* renamed from: a */
    final RemoteViews f396a;

    /* renamed from: b */
    final int f397b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0203v(RemoteViews remoteViews, int i) {
        this.f396a = remoteViews;
        this.f397b = i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0203v.class != obj.getClass()) {
            return false;
        }
        C0203v vVar = (C0203v) obj;
        if (this.f397b != vVar.f397b || !this.f396a.equals(vVar.f396a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.f396a.hashCode() * 31) + this.f397b;
    }
}
