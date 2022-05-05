package com.google.android.gms.maps.model;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/Gap.class */
public final class Gap extends PatternItem {

    /* renamed from: c */
    public final float f7045c;

    @Override // com.google.android.gms.maps.model.PatternItem
    public final String toString() {
        float f = this.f7045c;
        StringBuilder sb = new StringBuilder(29);
        sb.append("[Gap: length=");
        sb.append(f);
        sb.append("]");
        return sb.toString();
    }
}
