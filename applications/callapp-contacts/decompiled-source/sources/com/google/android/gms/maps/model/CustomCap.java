package com.google.android.gms.maps.model;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/CustomCap.class */
public final class CustomCap extends Cap {
    public final BitmapDescriptor bitmapDescriptor;
    public final float refWidth;

    public CustomCap(BitmapDescriptor bitmapDescriptor) {
        this(bitmapDescriptor, 10.0f);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CustomCap(com.google.android.gms.maps.model.BitmapDescriptor r5, float r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "bitmapDescriptor must not be null"
            java.lang.Object r0 = com.google.android.gms.common.internal.o.a(r0, r1)
            com.google.android.gms.maps.model.BitmapDescriptor r0 = (com.google.android.gms.maps.model.BitmapDescriptor) r0
            r7 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0021
            r0 = r4
            r1 = r7
            r2 = r6
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r5
            r0.bitmapDescriptor = r1
            r0 = r4
            r1 = r6
            r0.refWidth = r1
            return
        L_0x0021:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "refWidth must be positive"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.CustomCap.<init>(com.google.android.gms.maps.model.BitmapDescriptor, float):void");
    }

    @Override // com.google.android.gms.maps.model.Cap
    public final String toString() {
        String valueOf = String.valueOf(this.bitmapDescriptor);
        float f = this.refWidth;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 55);
        sb.append("[CustomCap: bitmapDescriptor=");
        sb.append(valueOf);
        sb.append(" refWidth=");
        sb.append(f);
        sb.append("]");
        return sb.toString();
    }
}
